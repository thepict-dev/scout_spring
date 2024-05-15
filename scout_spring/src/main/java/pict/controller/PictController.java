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
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.multipart.MultipartFile;

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
	@RequestMapping("/mains")
	public String main_11(@ModelAttribute("pictVO") AdminVO adminVO, HttpServletRequest request, ModelMap model,
			HttpSession session, RedirectAttributes rttr) throws Exception {
		return "redirect:/front/ko/main";
	}
	@RequestMapping("/")
	public String main(@ModelAttribute("pictVO") AdminVO adminVO, HttpServletRequest request, ModelMap model,
			HttpSession session, RedirectAttributes rttr) throws Exception {
		return "redirect:/front/users";
	}
	//대원통합창
	@RequestMapping("/front/users")
	public String ko_main(@ModelAttribute("pictVO") PictVO pictVO, HttpServletRequest request, ModelMap model,
			HttpSession session, RedirectAttributes rttr) throws Exception {
		
		List<PictVO> association_list = pictService.association_list(pictVO);
		pictVO.setASSOCIATIONCODE("200");
		List<PictVO> unity_list = pictService.unity_list(pictVO);
		model.addAttribute("association_list", association_list);
		model.addAttribute("unity_list", unity_list);
		
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

	@RequestMapping("/front/signup")
	public String signup(@ModelAttribute("pictVO") PictVO pictVO, HttpServletRequest request, ModelMap model,
			HttpSession session, RedirectAttributes rttr) throws Exception {
		
		List<?> job_list= pictService.job_list(pictVO);
		
		model.addAttribute("job_list", job_list);
		model.addAttribute("pictVO", pictVO);
		return "pict/front/signup";
	}
	
	@RequestMapping("/person_save")
	@ResponseBody
	public String person_save(@ModelAttribute("pictVO") PictVO pictVO, ModelMap model, HttpServletRequest request, @RequestBody Map<String, Object> param) throws Exception {	
		try {
			String idx = param.get("idx").toString();
			String MEMBERNO = param.get("MEMBERNO").toString();
			String MEMCLSCODE = param.get("MEMCLSCODE").toString();
			String MEMGRADECODE = param.get("MEMGRADECODE").toString();
			String BIRTHDAY = param.get("BIRTHDAY").toString();
			String KNAME = param.get("KNAME").toString();
			String ENAME = param.get("ENAME").toString();
			String SEX = param.get("SEX").toString();
			String HTELNO = param.get("HTELNO").toString();
			String MOBILE = param.get("MOBILE").toString();
			String EMAIL = param.get("EMAIL").toString();
			String SMSYN = param.get("SMSYN").toString();
			String EMAILYN = param.get("EMAILYN").toString();
			String JOBCODE = param.get("JOBCODE").toString();
			String HPOSTCODE = param.get("HPOSTCODE").toString();
			String HADDR = param.get("HADDR").toString();
			String EMPLOYEEY = param.get("EMPLOYEEY").toString();
			
			String LEADERSCORE = param.get("LEADERSCORE").toString();
			String SCOUTSCHOOLYEAR = param.get("SCOUTSCHOOLYEAR").toString();
			String SCOUTSCHOOLBAN = param.get("SCOUTSCHOOLBAN").toString();
			
			
			pictVO.setIdx(Integer.parseInt(idx));
			pictVO.setMEMBERNO(MEMBERNO);
			pictVO.setMEMCLSCODE(MEMCLSCODE);
			pictVO.setMEMGRADECODE(MEMGRADECODE);
			pictVO.setBIRTHDAY(BIRTHDAY);
			pictVO.setKNAME(KNAME);
			pictVO.setENAME(ENAME);
			pictVO.setSEX(SEX);
			pictVO.setHTELNO(HTELNO);
			pictVO.setMOBILE(MOBILE);
			pictVO.setEMAIL(EMAIL);
			pictVO.setSMSYN(SMSYN);
			pictVO.setEMAILYN(EMAILYN);
			pictVO.setJOBCODE(JOBCODE);
			pictVO.setHPOSTCODE(HPOSTCODE);
			pictVO.setHADDR(HADDR);
			pictVO.setEMPLOYEEY(EMPLOYEEY);
			
			pictVO.setLEADERSCORE(LEADERSCORE);
			pictVO.setSCOUTSCHOOLYEAR(SCOUTSCHOOLYEAR);
			pictVO.setSCOUTSCHOOLBAN(SCOUTSCHOOLBAN);
			
			
			pictService.person_save(pictVO);
			
			return "Y";
		}
		catch(Exception e) {
			return "N";
		}
	}


	@RequestMapping("/get_relation_clscode")
	@ResponseBody
	public HashMap<String, Object> get_relation_clscode(@ModelAttribute("pictVO") PictVO pictVO, ModelMap model, HttpServletRequest request, @RequestBody Map<String, Object> param) throws Exception {	

		
		HashMap<String, Object> map = new HashMap<String, Object>();
		
		List<PictVO> relation_list = pictService.get_relation_clscode(pictVO);
		
		if(relation_list.size() > 0) {
			map.put("list", relation_list);
			return map;
		}
		else {
			return map;
		}
	}
	
	@RequestMapping("/get_relation_person_search")
	@ResponseBody
	public HashMap<String, Object> get_relation_person_search(@ModelAttribute("pictVO") PictVO pictVO, ModelMap model, HttpServletRequest request, @RequestBody Map<String, Object> param) throws Exception {	
		String memberno = param.get("memberno").toString();
		String kname = param.get("kname").toString();
		
		pictVO.setMEMBERNO(memberno);
		pictVO.setKNAME(kname);
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		List<PictVO> relation_list = pictService.get_relation_person_search(pictVO);
		
		if(relation_list.size() > 0) {
			map.put("list", relation_list);
			return map;
		}
		else {
			return map;
		}
	}
	
	//관계
	@RequestMapping("/relation_insert")
	@ResponseBody
	public String relation_insert(@ModelAttribute("pictVO") PictVO pictVO, ModelMap model, HttpServletRequest request, @RequestBody Map<String, Object> param) throws Exception {	
		try {
			String frommemberno = param.get("frommemberno").toString();
			String tomemberno = param.get("tomemberno").toString();
			String relationcode = param.get("relationcode").toString();
			
			pictVO.setFROMMEMBERNO(frommemberno);
			pictVO.setTOMEMBERNO(tomemberno);
			pictVO.setRELATIONCODE(relationcode);
			
			pictService.relation_insert(pictVO);
			
			return "Y";
		}
		catch(Exception e) {
			return "N";
		}
	}
	@RequestMapping("/relation_delete")
	@ResponseBody
	public String relation_delete(@ModelAttribute("pictVO") PictVO pictVO, ModelMap model, HttpServletRequest request, @RequestBody Map<String, Object> param) throws Exception {	
		try {
			String frommemberno = param.get("frommemberno").toString();
			String tomemberno = param.get("tomemberno").toString();
			String idx = param.get("idx").toString();
			
			pictVO.setFROMMEMBERNO(frommemberno);
			pictVO.setTOMEMBERNO(tomemberno);
			pictVO.setIdx(Integer.parseInt(idx));
			
			pictService.relation_delete(pictVO);
			
			return "Y";
		}
		catch(Exception e) {
			return "N";
		}
	}
	
	//지도자연공기입
	@RequestMapping("/leader_save")
	@ResponseBody
	public String leader_save(@ModelAttribute("pictVO") PictVO pictVO, ModelMap model, HttpServletRequest request, @RequestBody Map<String, Object> param) throws Exception {
		try {
			String memberno = param.get("memberno").toString();
			String startday = param.get("startday").toString();
			String endday = param.get("endday").toString();
			String confirmy = param.get("confirmy").toString();
			String associationcode = param.get("associationcode").toString();
			String parenttroopno = param.get("parenttroopno").toString();
			String troopno = param.get("troopno").toString();
			String leaderorgno = param.get("leaderorgno").toString();
			String leaderorgpositioncode = param.get("leaderorgpositioncode").toString();
			String leaderpositioncode1 = param.get("leaderpositioncode1").toString();
			String leaderpositioncode2 = param.get("leaderpositioncode2").toString();
			String adminy = param.get("adminy").toString();
			
			String feeexcludcode = param.get("feeexcludcode").toString();
			String bankday = param.get("bankday").toString();
			String payy = param.get("payy").toString();
			String entryfee = param.get("entryfee").toString();
			String insurancefee = param.get("insurancefee").toString();
			String scoutmagacnt = param.get("scoutmagacnt").toString();
			String scoutmagafee = param.get("scoutmagafee").toString();
			String leadermagacnt = param.get("leadermagacnt").toString();
			String ledermagafee = param.get("ledermagafee").toString();
			
			pictVO.setMEMBERNO(memberno);
			pictVO.setSTARTDAY(startday);
			pictVO.setENDDAY(endday);
			pictVO.setCONFIRMY(confirmy);
			pictVO.setASSOCIATIONCODE(associationcode);
			pictVO.setPARENTTROOPNO(parenttroopno);
			pictVO.setTROOPNO(troopno);
			pictVO.setLEADERORGNO(leaderorgno);
			pictVO.setLEADERORGPOSITIONCODE(leaderorgpositioncode);
			pictVO.setLEADERPOSITIONCODE1(leaderpositioncode1);
			pictVO.setLEADERPOSITIONCODE2(leaderpositioncode2);
			pictVO.setADMINY(adminy);
			
			pictVO.setFEEEXCLUDECODE(feeexcludcode);
			pictVO.setBANKDAY(bankday);
			pictVO.setPAYY(payy);
			pictVO.setENTRYFEE(entryfee);
			pictVO.setINSURANCEFEE(insurancefee);
			pictVO.setSCOUTMAGACNT(scoutmagacnt);
			pictVO.setSCOUTMAGAFEE(scoutmagafee);
			pictVO.setLEADERMAGACNT(leadermagacnt);
			pictVO.setLEADERMAGAFEE(ledermagafee);

			
			System.out.println(memberno);
			System.out.println(startday);
			System.out.println(endday);
			System.out.println(confirmy);
			System.out.println(associationcode);
			System.out.println(parenttroopno);
			System.out.println(troopno);
			System.out.println(leaderorgno);
			System.out.println(leaderorgpositioncode);
			System.out.println(leaderpositioncode1);
			System.out.println(leaderpositioncode2);
			System.out.println(adminy);
			System.out.println(feeexcludcode);
			System.out.println(bankday);
			System.out.println(payy);
			System.out.println(entryfee);
			System.out.println(insurancefee);
			System.out.println(scoutmagacnt);
			System.out.println(scoutmagafee);
			System.out.println(leadermagacnt);
			System.out.println(ledermagafee);
			
			
			pictService.leader_save(pictVO);
			
			return "Y";
		}
		catch(Exception e) {
			System.out.println(e);
			return "N";
		}
	}
	
	//지도자연공기입
	@RequestMapping("/leader_update")
	@ResponseBody
	public String leader_update(@ModelAttribute("pictVO") PictVO pictVO, ModelMap model, HttpServletRequest request, @RequestBody Map<String, Object> param) throws Exception {
		try {
			String leader_idx = param.get("leader_idx").toString();
			String memberno = param.get("memberno").toString();
			String leaderorgno = param.get("leaderorgno").toString();
			String leaderorgpositioncode = param.get("leaderorgpositioncode").toString();
			String leaderpositioncode1 = param.get("leaderpositioncode1").toString();
			String leaderpositioncode2 = param.get("leaderpositioncode2").toString();
			String adminy = param.get("adminy").toString();
			
			String feeexcludcode = param.get("feeexcludcode").toString();
			String bankday = param.get("bankday").toString();
			String payy = param.get("payy").toString();
			String entryfee = param.get("entryfee").toString();
			String insurancefee = param.get("insurancefee").toString();
			String scoutmagacnt = param.get("scoutmagacnt").toString();
			String scoutmagafee = param.get("scoutmagafee").toString();
			String leadermagacnt = param.get("leadermagacnt").toString();
			String ledermagafee = param.get("ledermagafee").toString();
			
			pictVO.setIdx(Integer.parseInt(leader_idx));
			pictVO.setMEMBERNO(memberno);
			pictVO.setLEADERORGNO(leaderorgno);
			pictVO.setLEADERORGPOSITIONCODE(leaderorgpositioncode);
			pictVO.setLEADERPOSITIONCODE1(leaderpositioncode1);
			pictVO.setLEADERPOSITIONCODE2(leaderpositioncode2);
			pictVO.setADMINY(adminy);
			
			pictVO.setFEEEXCLUDECODE(feeexcludcode);
			pictVO.setBANKDAY(bankday);
			pictVO.setPAYY(payy);
			pictVO.setENTRYFEE(entryfee);
			pictVO.setINSURANCEFEE(insurancefee);
			pictVO.setSCOUTMAGACNT(scoutmagacnt);
			pictVO.setSCOUTMAGAFEE(scoutmagafee);
			pictVO.setLEADERMAGACNT(leadermagacnt);
			pictVO.setLEADERMAGAFEE(ledermagafee);
			
			/*
			System.out.println(memberno);
			System.out.println(startday);
			System.out.println(endday);
			System.out.println(confirmy);
			System.out.println(associationcode);
			System.out.println(parenttroopno);
			System.out.println(troopno);
			System.out.println(leaderorgno);
			System.out.println(leaderorgpositioncode);
			System.out.println(leaderpositioncode1);
			System.out.println(leaderpositioncode2);
			System.out.println(adminy);
			System.out.println(feeexcludcode);
			System.out.println(bankday);
			System.out.println(payy);
			System.out.println(entryfee);
			System.out.println(insurancefee);
			System.out.println(scoutmagacnt);
			System.out.println(scoutmagafee);
			System.out.println(leadermagacnt);
			System.out.println(ledermagafee);
			*/
			
			System.out.println("업데이트를 타야해");
			pictService.leader_update(pictVO);
			
			return "Y";
		}
		catch(Exception e) {
			System.out.println(e);
			return "N";
		}
	}
	
	//지도자포지션가져오기
	@RequestMapping("/fn_get_leaderposition")
	@ResponseBody
	public HashMap<String, Object> fn_get_leaderposition(@ModelAttribute("pictVO") PictVO pictVO, ModelMap model, HttpServletRequest request, @RequestBody Map<String, Object> param) throws Exception {	
		HashMap<String, Object> map = new HashMap<String, Object>();
		String leaderpositioncode1 = param.get("leaderpositioncode1").toString();
		
		pictVO.setLEADERPOSITIONCODE1(leaderpositioncode1);
		List<PictVO> relation_list = pictService.fn_get_leaderposition(pictVO);
		
		if(relation_list.size() > 0) {
			map.put("list", relation_list);
			return map;
		}
		else {
			return map;
		}
	}
	
	//대원 포지션 가져오기
	@RequestMapping("/fn_get_scoutpositioncode")
	@ResponseBody
	public HashMap<String, Object> fn_get_scoutpositioncode(@ModelAttribute("pictVO") PictVO pictVO, ModelMap model, HttpServletRequest request, @RequestBody Map<String, Object> param) throws Exception {	
		HashMap<String, Object> map = new HashMap<String, Object>();
		String scoutclscode = param.get("scoutclscode").toString();
		
		pictVO.setSCOUTCLSCODE(scoutclscode);
		List<PictVO> relation_list = pictService.fn_get_scoutpositioncode(pictVO);
		
		if(relation_list.size() > 0) {
			map.put("list", relation_list);
			return map;
		}
		else {
			return map;
		}
	}
	
	
	//대원 연공 수정창
	@RequestMapping("/get_scout_mod")
	@ResponseBody
	public HashMap<String, Object> get_scout_mod(@ModelAttribute("pictVO") PictVO pictVO, ModelMap model, HttpServletRequest request, @RequestBody Map<String, Object> param) throws Exception {	
		String idx = param.get("idx").toString();
		String memberno = param.get("memberno").toString();
		HashMap<String, Object> map = new HashMap<String, Object>();
		pictVO.setIdx(Integer.parseInt(idx));
		pictVO.setMEMBERNO(memberno);
		
		pictVO = pictService.get_scout_mod(pictVO);
		if(pictVO != null) {
			map.put("rst", pictVO);
			return map;
		}
		else {
			return map;
		}
		
	}
	
	//대원연공기입
	@RequestMapping("/scout_save")
	@ResponseBody
	public String scout_save(@ModelAttribute("pictVO") PictVO pictVO, ModelMap model, HttpServletRequest request, @RequestBody Map<String, Object> param) throws Exception {
		try {
			String memberno = param.get("memberno").toString();
			String startday = param.get("startday").toString();
			String endday = param.get("endday").toString();
			String confirmy = param.get("confirmy").toString();
			String associationcode = param.get("associationcode").toString();
			String parenttroopno = param.get("parenttroopno").toString();
			String troopno = param.get("troopno").toString();
			
			String scoutorgno = param.get("scoutorgno").toString();
			String scoutschoolyear = param.get("scoutschoolyear").toString();
			String scoutschoolban = param.get("scoutschoolban").toString();
			
			String scoutclscode = param.get("scoutclscode").toString();
			String scoutpositioncode = param.get("scoutpositioncode").toString();
			String scoutban = param.get("scoutban").toString();
			
			String feeexcludcode = param.get("feeexcludcode").toString();
			String bankday = param.get("bankday").toString();
			String payy = param.get("payy").toString();
			String entryfee = param.get("entryfee").toString();
			String insurancefee = param.get("insurancefee").toString();
			String scoutmagacnt = param.get("scoutmagacnt").toString();
			String scoutmagafee = param.get("scoutmagafee").toString();
			
			pictVO.setMEMBERNO(memberno);
			pictVO.setSTARTDAY(startday);
			pictVO.setENDDAY(endday);
			pictVO.setCONFIRMY(confirmy);
			pictVO.setASSOCIATIONCODE(associationcode);
			pictVO.setPARENTTROOPNO(parenttroopno);
			pictVO.setTROOPNO(troopno);
			
			pictVO.setSCOUTORGNO(scoutorgno);
			pictVO.setSCOUTSCHOOLYEAR(scoutschoolyear);
			pictVO.setSCOUTSCHOOLBAN(scoutschoolban);
			
			pictVO.setSCOUTCLSCODE(scoutclscode);
			pictVO.setSCOUTPOSITIONCODE(scoutpositioncode);
			pictVO.setSCOUTBAN(scoutban);
			
			
			pictVO.setFEEEXCLUDECODE(feeexcludcode);
			pictVO.setBANKDAY(bankday);
			pictVO.setPAYY(payy);
			pictVO.setENTRYFEE(entryfee);
			pictVO.setINSURANCEFEE(insurancefee);
			pictVO.setSCOUTMAGACNT(scoutmagacnt);
			pictVO.setSCOUTMAGAFEE(scoutmagafee);

			pictService.scout_save(pictVO);
			
			return "Y";
		}
		catch(Exception e) {
			System.out.println(e);
			return "N";
		}
	}
	
	//대원 연공기입
	@RequestMapping("/scout_update")
	@ResponseBody
	public String scout_update(@ModelAttribute("pictVO") PictVO pictVO, ModelMap model, HttpServletRequest request, @RequestBody Map<String, Object> param) throws Exception {
		try {
			String scout_idx = param.get("scout_idx").toString();
			String memberno = param.get("memberno").toString();
			String startday = param.get("startday").toString();
			String endday = param.get("endday").toString();
			String confirmy = param.get("confirmy").toString();
			String associationcode = param.get("associationcode").toString();
			String parenttroopno = param.get("parenttroopno").toString();
			String troopno = param.get("troopno").toString();
			
			String scoutorgno = param.get("scoutorgno").toString();
			String scoutschoolyear = param.get("scoutschoolyear").toString();
			String scoutschoolban = param.get("scoutschoolban").toString();
			
			String scoutclscode = param.get("scoutclscode").toString();
			String scoutpositioncode = param.get("scoutpositioncode").toString();
			String scoutban = param.get("scoutban").toString();
			
			String feeexcludcode = param.get("feeexcludcode").toString();
			String bankday = param.get("bankday").toString();
			String payy = param.get("payy").toString();
			String entryfee = param.get("entryfee").toString();
			String insurancefee = param.get("insurancefee").toString();
			String scoutmagacnt = param.get("scoutmagacnt").toString();
			String scoutmagafee = param.get("scoutmagafee").toString();
			
			pictVO.setIdx(Integer.parseInt(scout_idx));
			pictVO.setMEMBERNO(memberno);
			pictVO.setSTARTDAY(startday);
			pictVO.setENDDAY(endday);
			pictVO.setCONFIRMY(confirmy);
			pictVO.setASSOCIATIONCODE(associationcode);
			pictVO.setPARENTTROOPNO(parenttroopno);
			pictVO.setTROOPNO(troopno);
			
			pictVO.setSCOUTORGNO(scoutorgno);
			pictVO.setSCOUTSCHOOLYEAR(scoutschoolyear);
			pictVO.setSCOUTSCHOOLBAN(scoutschoolban);
			
			pictVO.setSCOUTCLSCODE(scoutclscode);
			pictVO.setSCOUTPOSITIONCODE(scoutpositioncode);
			pictVO.setSCOUTBAN(scoutban);
			
			
			pictVO.setFEEEXCLUDECODE(feeexcludcode);
			pictVO.setBANKDAY(bankday);
			pictVO.setPAYY(payy);
			pictVO.setENTRYFEE(entryfee);
			pictVO.setINSURANCEFEE(insurancefee);
			pictVO.setSCOUTMAGACNT(scoutmagacnt);
			pictVO.setSCOUTMAGAFEE(scoutmagafee);
			

			System.out.println("업데이트를 타야해");
			pictService.scout_update(pictVO);
			
			return "Y";
		}
		catch(Exception e) {
			System.out.println(e);
			return "N";
		}
	}
	@RequestMapping("/scout_del")
	@ResponseBody
	public String scout_del(@ModelAttribute("pictVO") PictVO pictVO, ModelMap model, HttpServletRequest request, 
			@RequestBody Map<String, Object> param) throws Exception {	
		try {
			String idx = param.get("idx").toString();
			String memberno = param.get("memberno").toString();
			
			pictVO.setIdx(Integer.parseInt(idx));
			pictVO.setMEMBERNO(memberno);
			
			System.out.println(pictVO.getIdx());
			pictService.scout_del(pictVO);

			return "Y";
		}
		catch(Exception e) {
			return "N";
		}
	}
	
	
	//기본 정보 대원학교단체에서 구분 검색
	@RequestMapping("/fn_get_orgclscode")
	@ResponseBody
	public HashMap<String, Object> fn_get_orgclscode(@ModelAttribute("pictVO") PictVO pictVO, ModelMap model, HttpServletRequest request, @RequestBody Map<String, Object> param) throws Exception {	
		String orgclscode1 = param.get("orgclscode1").toString();
		HashMap<String, Object> map = new HashMap<String, Object>();
		
		pictVO.setORGCLSCODE1(orgclscode1);
		
		List<PictVO> relation_list = pictService.fn_get_orgclscode(pictVO);
		if(relation_list.size() > 0) {
			map.put("list", relation_list);
			return map;
		}
		else {
			return map;
		}
		
	}
	//기본정보 대원학교단체에서 관할교육청검색
	@RequestMapping("/fn_get_parentorgno")
	@ResponseBody
	public HashMap<String, Object> fn_get_parentorgno(@ModelAttribute("pictVO") PictVO pictVO, ModelMap model, HttpServletRequest request, @RequestBody Map<String, Object> param) throws Exception {	
		String associationcode = param.get("associationcode").toString();
		HashMap<String, Object> map = new HashMap<String, Object>();
		
		pictVO.setASSOCIATIONCODE(associationcode);
		
		List<PictVO> relation_list = pictService.fn_get_parentorgno(pictVO);
		if(relation_list.size() > 0) {
			map.put("list", relation_list);
			return map;
		}
		else {
			return map;
		}
	}
	
	//기본정보 대원학교단체에서 조회 버튼 클릭
	@RequestMapping("/search_org")
	@ResponseBody
	public HashMap<String, Object> search_org(@ModelAttribute("pictVO") PictVO pictVO, ModelMap model, HttpServletRequest request, @RequestBody Map<String, Object> param) throws Exception {	
		String associationcode = param.get("associationcode").toString();
		String orgclscode1 = param.get("orgclscode1").toString();
		String orgclscode2 = param.get("orgclscode2").toString();
		String parentorgno = param.get("parentorgno").toString();
		String search_orgtext = param.get("search_orgtext").toString();
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		
		pictVO.setASSOCIATIONCODE(associationcode);
		pictVO.setORGCLSCODE1(orgclscode1);
		pictVO.setORGCLSCODE2(orgclscode2);
		pictVO.setPARENTORGNO(parentorgno);
		pictVO.setSearch_orgtext(search_orgtext);
		
		List<PictVO> relation_list = pictService.search_org(pictVO);
		if(relation_list.size() > 0) {
			map.put("list", relation_list);
			return map;
		}
		else {
			return map;
		}
	}
	
	//메인 대원 단체 저장
	@RequestMapping("/main_scout_org_save")
	@ResponseBody
	public String main_scout_org_save(@ModelAttribute("pictVO") PictVO pictVO, ModelMap model, HttpServletRequest request, 
			@RequestBody Map<String, Object> param) throws Exception {	
		try {
			String memberno = param.get("memberno").toString();
			String scoutorgno = param.get("scoutorgno").toString();
			String scoutorgclscode1 = param.get("scoutorgclscode1").toString();
			String scoutorgclscode2 = param.get("scoutorgclscode2").toString();
			
			
			pictVO.setMEMBERNO(memberno);
			pictVO.setSCOUTORGNO(scoutorgno);
			pictVO.setSCOUTORGCLSCODE1(scoutorgclscode1);
			pictVO.setSCOUTORGCLSCODE2(scoutorgclscode2);
			
			pictService.main_scout_org_save(pictVO);

			return "Y";
		}
		catch(Exception e) {
			return "N";
		}
	}
	
	
	
	//프로필사진 업로드
	@RequestMapping("/profile_img")
	@ResponseBody
	public String profile_img(@ModelAttribute("pictVO") PictVO pictVO, ModelMap model, MultipartHttpServletRequest request, 
			@RequestParam("img") MultipartFile multi,
			@RequestPart(value = "request") Map<String, Object> param) throws Exception {	
		try {
			//String uploadPath = "/user1/upload_file/risingstar/";
			String uploadpath  = "D:\\user1\\upload_file\\default";
            String originFilename = multi.getOriginalFilename();
            String extName = originFilename.substring(originFilename.lastIndexOf("."),originFilename.length());
            long size = multi.getSize();
            String saveFileName = genSaveFileName(extName);
            
            System.out.println("uploadpath : " + uploadpath );
            System.out.println("originFilename : " + originFilename);
            System.out.println("extensionName : " + extName);
            System.out.println("size : " + size);
            System.out.println("saveFileName : " + saveFileName);
			
			String memberno = param.get("memberno").toString();
			
            if(!multi.isEmpty()){
                File file = new File(uploadpath, multi.getOriginalFilename());
                multi.transferTo(file);
                pictVO.setMEMBERNO(memberno);
                pictVO.setPICIMG(file.getAbsolutePath());
                pictService.profile_img(pictVO);  
                
            }
			return "Y";
		}
		catch(Exception e) {
			return "N";
		}
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
	//지도자가입에서 단위대 목록가져오기
	@RequestMapping("/get_troop_list_leader")
	@ResponseBody
	public HashMap<String, Object> get_troop_list_leader(@ModelAttribute("pictVO") PictVO pictVO, ModelMap model, HttpServletRequest request, @RequestBody Map<String, Object> param) throws Exception {	
		String associationcode = param.get("associationcode").toString();
		String parenttroopno = param.get("parenttroopno").toString();
		HashMap<String, Object> map = new HashMap<String, Object>();
		
		pictVO.setASSOCIATIONCODE(associationcode);
		pictVO.setPARENTTROOPNO(parenttroopno);
		
		
		List<PictVO> troop_list = pictService.troop_list(pictVO);
		if(troop_list.size() > 0) {
			map.put("list", troop_list);
			return map;
		}
		else {
			return map;
		}
		
	}
	
	//조직통합창
	@RequestMapping("/new_person")
	public String new_person(@ModelAttribute("pictVO") PictVO pictVO, HttpServletRequest request, ModelMap model) throws Exception {
		
		pictService.new_person(pictVO);
		
		
		model.addAttribute("message", "정상적으로 저장되었습니다.");
		model.addAttribute("retType", ":location");
		model.addAttribute("retUrl", "/front/signup");
		return "pict/main/message";	
		//return "pict/front/ko/management";
	}
	
	
	//지도자연공 삭제
	@RequestMapping("/leader_del")
	@ResponseBody
	public String leader_del(@ModelAttribute("pictVO") PictVO pictVO, ModelMap model, HttpServletRequest request, 
			@RequestBody Map<String, Object> param) throws Exception {	
		try {
			String idx = param.get("idx").toString();
			String memberno = param.get("memberno").toString();
			
			pictVO.setIdx(Integer.parseInt(idx));
			pictVO.setMEMBERNO(memberno);
			
			System.out.println(pictVO.getIdx());
			pictService.leader_del(pictVO);

			return "Y";
		}
		catch(Exception e) {
			return "N";
		}
	}
	//지도자 연공 수정창
	@RequestMapping("/get_leader_mod")
	@ResponseBody
	public HashMap<String, Object> get_leader_mod(@ModelAttribute("pictVO") PictVO pictVO, ModelMap model, HttpServletRequest request, @RequestBody Map<String, Object> param) throws Exception {	
		String idx = param.get("idx").toString();
		String memberno = param.get("memberno").toString();
		HashMap<String, Object> map = new HashMap<String, Object>();
		pictVO.setIdx(Integer.parseInt(idx));
		pictVO.setMEMBERNO(memberno);
		
		pictVO = pictService.get_leader_mod(pictVO);
		if(pictVO != null) {
			map.put("rst", pictVO);
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
		
		PictVO vo = new PictVO();
		vo.setMEMBERNO(memberno);
		
		if(pictVO != null) {
			List<PictVO> relation_list = pictService.get_relation_info(vo);
			map.put("relation_list", relation_list);
			
			
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
		//String uploadPath = "/user1/upload_file/risingstar/";
		String uploadPath = "D:\\user1\\upload_file\\default";
		return uploadPath;
	}

	private String genSaveFileName(String extName) {
        String fileName = "";
        
        Calendar calendar = Calendar.getInstance();
        fileName += calendar.get(Calendar.YEAR);
        fileName += calendar.get(Calendar.MONTH);
        fileName += calendar.get(Calendar.DATE);
        fileName += calendar.get(Calendar.HOUR);
        fileName += calendar.get(Calendar.MINUTE);
        fileName += calendar.get(Calendar.SECOND);
        fileName += calendar.get(Calendar.MILLISECOND);
        fileName += extName;
        
        return fileName;
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
