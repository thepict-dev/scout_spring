package pict.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.security.MessageDigest;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.codec.binary.Base64;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import pict.service.AdminService;
import pict.service.AdminVO;
import pict.service.PictService;
import pict.service.PictVO;

@Controller
public class PictController {

	@Autowired
	PictService pictService;

	@Autowired
	AdminService adminService;


	
	@RequestMapping("/pict_main.do")
	public String pict_main(@ModelAttribute("pictVO") AdminVO adminVO, HttpServletRequest request, ModelMap model,
			HttpSession session, RedirectAttributes rttr) throws Exception {
		String sessions = (String) request.getSession().getAttribute("id");
		if (sessions == null || sessions == "null") {
			return "redirect:/pict_login.do";
		} else {
			String user_id = (String) request.getSession().getAttribute("id");
			if (request.getSession().getAttribute("id") != null) {
				adminVO.setAdminId((String) request.getSession().getAttribute("id"));
				adminVO = adminService.get_user_info(adminVO);
				model.addAttribute("adminVO", adminVO);
			}

			return "redirect:/board/board_list.do";

		}
	}

	@RequestMapping("/pict_login.do")
	public String login_main(@ModelAttribute("pictVO") AdminVO adminVO, HttpServletRequest request, ModelMap model,
			HttpServletResponse response) throws Exception {
		String userAgent = request.getHeader("user-agent");
		String sessions = (String) request.getSession().getAttribute("id");
		boolean mobile1 = userAgent.matches(
				".*(iPhone|iPod|Android|Windows CE|BlackBerry|Symbian|Windows Phone|webOS|Opera Mini|Opera Mobi|POLARIS|IEMobile|lgtelecom|nokia|SonyEricsson).*");
		boolean mobile2 = userAgent.matches(".*(LG|SAMSUNG|Samsung).*");
		if (mobile1 || mobile2) {
			// 여기 모바일일 경우
		
			model.addAttribute("message", "PC에서만 사용이 가능합니다.");
			model.addAttribute("retType", ":exit");
			return "pict/main/message";
		}

		if (sessions == null || sessions == "null") {
			return "pict/main/login";
		} else {
			// 나중에 여기 계정별로 리다이렉트 분기처리
			return "redirect:/board/board_list.do";

		}

	}

	@RequestMapping("/login.do")
	public String login(@ModelAttribute("adminVO") AdminVO adminVO, HttpServletRequest request, ModelMap model)
			throws Exception {
		// 처음 드러와서 세션에 정보있으면 메인으로 보내줘야함
		String inpuId = adminVO.getAdminId();
		String inputPw = adminVO.getAdminPw();

		adminVO = adminService.get_user_info(adminVO);

		if (adminVO != null && adminVO.getId() != null && !adminVO.getId().equals("")) {
			String user_id = adminVO.getId();
			String enpassword = encryptPassword(inputPw, inpuId); // 입력비밀번호

			if (enpassword.equals(adminVO.getPassword())) {
				request.getSession().setAttribute("id", adminVO.getId());
				request.getSession().setAttribute("name", adminVO.getName());
				request.getSession().setAttribute("depart", adminVO.getDepart());

				String ip = request.getRemoteAddr();
				DateFormat format2 = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
				String now = format2.format(Calendar.getInstance().getTime());

				adminVO.setLast_login_ip(ip);
				adminVO.setLast_login_date(now);
				adminService.insert_login_info(adminVO);

				adminVO.setAdminId(user_id);
				adminVO = adminService.get_user_info(adminVO);

				return "redirect:/pict_main.do";

			} else {
				model.addAttribute("message", "입력하신 정보가 일치하지 않습니다.");
				model.addAttribute("retType", ":location");
				model.addAttribute("retUrl", "/pict_login.do");
				return "pict/main/message";
			}
		} else {
			model.addAttribute("message", "입력하신 정보가 일치하지 않습니다.");
			model.addAttribute("retType", ":location");
			model.addAttribute("retUrl", "/pict_login.do");
			return "pict/main/message";
		}
	}

	@RequestMapping("/logout.do")
	public String logout(@ModelAttribute("pictVO") PictVO pictVO, HttpServletRequest request, ModelMap model)
			throws Exception {
		request.getSession().setAttribute("id", null);
		request.getSession().setAttribute("name", null);

		return "redirect:/pict_login.do";

	}

	// 사용자
	
	@RequestMapping("/")
	public String main(@ModelAttribute("pictVO") AdminVO adminVO, HttpServletRequest request, ModelMap model,
			HttpSession session, RedirectAttributes rttr) throws Exception {
		return "redirect:/front/users";
	}
	//대원통합창
	@RequestMapping("/front/users")
	public String ko_main(@ModelAttribute("pictVO") PictVO pictVO, HttpServletRequest request, ModelMap model,
			HttpSession session, RedirectAttributes rttr) throws Exception {
		
		
		if(request.getQueryString() == null) {
			model.addAttribute("resultListCnt", "0");
			model.addAttribute("resultList", "");
			model.addAttribute("job_list", "");
			model.addAttribute("pictVO", null);
		}
		else {
			List<PictVO> scout_list = pictService.scout_left_search_list(pictVO);
			
			//회원번호로 정렬
			scout_list.sort(Comparator.comparing(PictVO::getMEMBERNO));
			model.addAttribute("resultList", scout_list);
			List<?> job_list= pictService.job_list(pictVO);
			model.addAttribute("resultListCnt", scout_list.size());
			model.addAttribute("job_list", job_list);
			model.addAttribute("pictVO", pictVO);
		}
		
		
		return "pict/front/users";
	}
	//조직통합창
	@RequestMapping("/front/ko/management")
	public String management(@ModelAttribute("pictVO") PictVO pictVO, HttpServletRequest request, ModelMap model,
			HttpSession session, RedirectAttributes rttr) throws Exception {
		
		List<PictVO> trooplevel_list = pictService.trooplevel_list(pictVO);
		List<PictVO> scoutcls_list = pictService.scoutcls_list(pictVO);
		
		model.addAttribute("trooplevel_list", trooplevel_list);
		model.addAttribute("scoutcls_list", scoutcls_list);
		
		
		
		List<PictVO> association_list = pictService.association_list(pictVO);
		pictVO.setASSOCIATIONCODE("200");
		List<PictVO> unity_list = pictService.unity_list(pictVO);
		model.addAttribute("association_list", association_list);
		model.addAttribute("unity_list", unity_list);
		
		if(request.getQueryString() == null) {
			
		}
		else {


		}
		
				
		return "pict/front/ko/management";
	}
	//지구연합회 가져오기
	@RequestMapping("/get_unity_list")
	@ResponseBody
	public HashMap<String, Object> get_unity_list(@ModelAttribute("pictVO") PictVO pictVO, ModelMap model, HttpServletRequest request, @RequestBody Map<String, Object> param) throws Exception {	
		String associationcode = param.get("associationcode").toString();
		HashMap<String, Object> map = new HashMap<String, Object>();
		pictVO.setASSOCIATIONCODE(associationcode);
		List<PictVO> unity_list = pictService.unity_list(pictVO);
		
		if(unity_list.size() > 0) {
			map.put("list", unity_list);
			return map;
		}
		else {
			return map;
		}
		
	}
	//단위대 가져오기
	@RequestMapping("/get_troop_list")
	@ResponseBody
	public HashMap<String, Object> get_troop_list(@ModelAttribute("pictVO") PictVO pictVO, ModelMap model, HttpServletRequest request, @RequestBody Map<String, Object> param) throws Exception {	
		String associationcode = param.get("associationcode").toString();
		String parenttroopno = param.get("parenttroopno").toString();
		String trooplevelcode = param.get("trooplevelcode").toString();
		String scoutclscode = param.get("scoutclscode").toString();
		String troopclscode = param.get("troopclscode").toString();
		String troopclscode2 = param.get("troopclscode2").toString();
		String search_troopno_cate = param.get("search_troopno_cate").toString();
		String search_troopno = param.get("search_troopno").toString();
		
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		
		pictVO.setASSOCIATIONCODE(associationcode);
		pictVO.setPARENTTROOPNO(parenttroopno);
		pictVO.setTROOPLEVELCODE(trooplevelcode);
		pictVO.setSCOUTCLSCODE(scoutclscode);
		pictVO.setTROOPCLSCODE(troopclscode);
		pictVO.setTROOPCLSCODE2(troopclscode2);
		pictVO.setSearch_troopno_cate(search_troopno_cate);
		pictVO.setSearch_troopno(search_troopno);
		
		
		List<PictVO> troop_list = pictService.troop_list(pictVO);
		if(troop_list.size() > 0) {
			map.put("list", troop_list);
			return map;
		}
		else {
			return map;
		}
		
	}
	
	//단위대 정보
	
	@RequestMapping("/get_troop_info")
	@ResponseBody
	public HashMap<String, Object> get_troop_info(@ModelAttribute("pictVO") PictVO pictVO, ModelMap model, HttpServletRequest request, @RequestBody Map<String, Object> param) throws Exception {	
		String troopno = param.get("troopno").toString();
		HashMap<String, Object> map = new HashMap<String, Object>();
		pictVO.setTROOPNO(troopno);

		pictVO = pictService.troop_info(pictVO);
		if(pictVO != null) {
			map.put("rst", pictVO);
			return map;
		}
		else {
			return map;
		}
		
	}
	
	//테스트 등록
	@RequestMapping("/front/ko/apply")
	public String apply(@ModelAttribute("pictVO") PictVO pictVO, HttpServletRequest request, ModelMap model,
			HttpSession session, RedirectAttributes rttr) throws Exception {
		return "pict/front/ko/apply";
	}
	//기본정보 가져오기
	@RequestMapping("/get_per_info")
	@ResponseBody
	public HashMap<String, Object> invest_login_action(@ModelAttribute("pictVO") PictVO pictVO, ModelMap model, HttpServletRequest request, @RequestBody Map<String, Object> param) throws Exception {	
		String memberno = param.get("memberno").toString();
		String kname = param.get("kname").toString();
		String scouty = param.get("scouty").toString();
		String leadery = param.get("leadery").toString();
		
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		
		pictVO.setMEMBERNO(memberno);
		pictVO.setKNAME(kname);
		
		pictVO = pictService.get_per_info(pictVO);
		
		if(pictVO != null) {
			System.out.println("데이터가 있지용");
			//지도자일경우
			if(leadery.equals("Y")) {
				List<PictVO> leader_list = pictService.leader_list(pictVO);
				
				map.put("info", pictVO);
				map.put("list", leader_list);
				return map;
			}
			//대원의경우
			else{
				System.out.println("대원");
				List<PictVO> scout_list = pictService.scout_list(pictVO);
				
				map.put("info", pictVO);
				map.put("list", scout_list);
				return map;
			}
		}
		else {
			return map;
		}
		
	}
	
	// 공통메소드
	

		
	public String fileUpload(MultipartHttpServletRequest request, MultipartFile uploadFile, String target) {
		String path = "";
		String fileName = "";
		OutputStream out = null;
		PrintWriter printWriter = null;
		long fileSize = uploadFile.getSize();
		try {
			fileName = uploadFile.getOriginalFilename();
			byte[] bytes = uploadFile.getBytes();

			path = getSaveLocation(request, uploadFile);

			File file = new File(path);
			if (fileName != null && !fileName.equals("")) {
				if (file.exists()) {
					file = new File(path + fileName);
				}
			}
			out = new FileOutputStream(file);
			out.write(bytes);

		} catch (Exception e) {
			e.printStackTrace();
		}

		return path + "#####" + fileName;
	}

	private String getSaveLocation(MultipartHttpServletRequest request, MultipartFile uploadFile) {
		String uploadPath = "/user1/upload_file/risingstar/";
		return uploadPath;
	}

	public static String encryptPassword(String password, String id) throws Exception {
		if (password == null)
			return "";
		if (id == null)
			return ""; // KISA 보안약점 조치 (2018-12-11, 신용호)
		byte[] hashValue = null; // 해쉬값

		MessageDigest md = MessageDigest.getInstance("SHA-256");
		md.reset();
		md.update(id.getBytes());
		hashValue = md.digest(password.getBytes());

		return new String(Base64.encodeBase64(hashValue));
	}

}
