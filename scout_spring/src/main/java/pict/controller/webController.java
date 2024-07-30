package pict.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.security.MessageDigest;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import pict.service.AdminService;
import pict.service.PictService;
import pict.service.PictVO;

@Controller
public class webController {

	@Autowired
	PictService pictService;

	@Autowired
	AdminService adminService;

	
	@RequestMapping("/")
	public String pict_main(@ModelAttribute("pictVO") PictVO pictVO, HttpServletRequest request, ModelMap model, HttpSession session, RedirectAttributes rttr) throws Exception {
		
		return "pict/web/main";
	}
	@RequestMapping("/logout")
	public String logout(@ModelAttribute("pictVO") PictVO pictVO, HttpServletRequest request, ModelMap model)
			throws Exception {
		request.getSession().setAttribute("id", null);
		request.getSession().setAttribute("name", null);
		request.getSession().setAttribute("associationname", null);
		request.getSession().setAttribute("leaderpositionname", null);
		request.getSession().setAttribute("employeey", null);
		request.getSession().setAttribute("adminy", null);
		request.getSession().setAttribute("picimg", null);

		return "redirect:/";

	}
	
	//행사
	//잼버리
	@RequestMapping("jamboree")
	public String jamboree(@ModelAttribute("pictVO") PictVO pictVO, HttpServletRequest request, ModelMap model) throws Exception {
		
		return "pict/web/jamboree";
	}
	//youthhero
	@RequestMapping("youthhero")
	public String youthhero(@ModelAttribute("pictVO") PictVO pictVO, HttpServletRequest request, ModelMap model) throws Exception {

		List<PictVO> youth_group = pictService.youth_group(pictVO);
		model.addAttribute("youth_group", youth_group);
		model.addAttribute("pictVO", pictVO);
		return "pict/web/youthhero";
	}
	

	@RequestMapping("/get_youthhero")
	@ResponseBody
	public HashMap<String, Object> fn_get_units_info(@ModelAttribute("pictVO") PictVO pictVO, ModelMap model, HttpServletRequest request, @RequestBody Map<String, Object> param) throws Exception {
		String year = param.get("year").toString();

		HashMap<String, Object> map = new HashMap<String, Object>();
		pictVO.setYEAR(year);
		List<PictVO> youth_list = pictService.youth_list(pictVO);

		map.put("youth_list", youth_list);
		return map;

	}
	
	//장학사업
	@RequestMapping("scholarship")
	public String scholarship(@ModelAttribute("pictVO") PictVO pictVO, HttpServletRequest request, ModelMap model) throws Exception {
		
		return "pict/web/scholarship";
	}
	
	//뉴스
	//공지사항
	@RequestMapping("notice")
	public String notice(@ModelAttribute("pictVO") PictVO pictVO, HttpServletRequest request, ModelMap model) throws Exception {
		int limitNumber = 20;
		pictVO.setLimit(limitNumber);
		pictVO.setMain("main");
		Integer pageNum = pictVO.getPageNumber();
		
		if(pageNum == 0) {
			pictVO.setPageNumber(1);
			pageNum = 1;
		}

		int startNum = (pageNum - 1) * limitNumber;
		pictVO.setStartNumber(startNum);
		pictVO.setBRDNO("56");
		Integer totalCnt = pictService.board_list_cnt(pictVO);
		
		int lastPageValue = (int)(Math.ceil( totalCnt * 1.0 / 20 )); 
		pictVO.setLastPage(lastPageValue);
		
		Integer s_page = pageNum - 4;
		Integer e_page = pageNum + 5;
		if (s_page <= 0) {
			s_page = 1;
			e_page = 10;
		} 
		if (e_page > lastPageValue){
			e_page = lastPageValue;
		}
		
		pictVO.setStartPage(s_page);
		pictVO.setEndPage(e_page);
		
		
		List<PictVO> board_list = pictService.board_list(pictVO);
		model.addAttribute("board_list", board_list);
		model.addAttribute("board_cnt", totalCnt);
		
		return "pict/web/notice";
	}
	//공지사항 뷰
	@RequestMapping("notice_view")
	public String notice_view(@ModelAttribute("pictVO") PictVO pictVO, HttpServletRequest request, ModelMap model) throws Exception {
		pictService.board_view_cnt(pictVO);
		pictVO = pictService.board_list_one(pictVO);
		model.addAttribute("pictVO", pictVO);
		return "pict/web/notice_view";
	}
	//뉴스
	@RequestMapping("news")
	public String news(@ModelAttribute("pictVO") PictVO pictVO, HttpServletRequest request, ModelMap model) throws Exception {
		int limitNumber = 20;
		pictVO.setLimit(limitNumber);
		
		Integer pageNum = pictVO.getPageNumber();
		
		if(pageNum == 0) {
			pictVO.setPageNumber(1);
			pageNum = 1;
		}

		int startNum = (pageNum - 1) * limitNumber;
		pictVO.setStartNumber(startNum);
		pictVO.setBRDNO("227");
		Integer totalCnt = pictService.board_list_cnt(pictVO);
		
		int lastPageValue = (int)(Math.ceil( totalCnt * 1.0 / 20 )); 
		pictVO.setLastPage(lastPageValue);
		
		Integer s_page = pageNum - 4;
		Integer e_page = pageNum + 5;
		if (s_page <= 0) {
			s_page = 1;
			e_page = 10;
		} 
		if (e_page > lastPageValue){
			e_page = lastPageValue;
		}
		
		pictVO.setStartPage(s_page);
		pictVO.setEndPage(e_page);
		
		
		List<PictVO> board_list = pictService.board_list(pictVO);
		model.addAttribute("board_list", board_list);
		model.addAttribute("board_cnt", totalCnt);
		
		return "pict/web/news";
	}
	//공지사항 뷰
	@RequestMapping("news_view")
	public String news_view(@ModelAttribute("pictVO") PictVO pictVO, HttpServletRequest request, ModelMap model) throws Exception {
		pictService.board_view_cnt(pictVO);
		pictVO = pictService.board_list_one(pictVO);
		model.addAttribute("pictVO", pictVO);
		return "pict/web/news_view";
	}
	//연맹별 공지사항
	@RequestMapping("federation")
	public String federation(@ModelAttribute("pictVO") PictVO pictVO, HttpServletRequest request, ModelMap model) throws Exception {
		
		
		if(pictVO != null) {
			if(pictVO.getDataid().equals("gangwon")) pictVO.setBRDNO("967");
		}
		pictVO.setType("sub");
		
		/* 연맹별 공지사항 */
		int limitNumber = 20;
		pictVO.setLimit(limitNumber);
		Integer pageNum = pictVO.getPageNumber();
		if(pageNum == 0) {
			pictVO.setPageNumber(1);
			pageNum = 1;
		}
		int startNum = (pageNum - 1) * limitNumber;
		pictVO.setStartNumber(startNum);
		Integer totalCnt = pictService.board_list_cnt(pictVO);
		System.out.println(totalCnt);
		int lastPageValue = (int)(Math.ceil( totalCnt * 1.0 / 20 )); 
		pictVO.setLastPage(lastPageValue);
		
		Integer s_page = pageNum - 4;
		Integer e_page = pageNum + 5;
		if (s_page <= 0) {
			s_page = 1;
			e_page = 10;
		} 
		if (e_page > lastPageValue){
			e_page = lastPageValue;
		}
		pictVO.setStartPage(s_page);
		pictVO.setEndPage(e_page);
		
		model.addAttribute("pictVO", pictVO);
		
		List<PictVO> board_list = pictService.board_list(pictVO);

		model.addAttribute("board_list", board_list);
		model.addAttribute("board_cnt", totalCnt);
		/* 연맹별 공지사항 */
		PictVO vo = pictService.getLocal_info(pictVO);
		model.addAttribute("vo", vo);
		
		return "pict/web/federation";
	}
	//연맹조직도
	@RequestMapping("federation_organ")
	public String federation_organ(@ModelAttribute("pictVO") PictVO pictVO, HttpServletRequest request, ModelMap model) throws Exception {
		
		return "pict/web/federation_organ";
	}
	//연맹공지사항
	@RequestMapping("federation_notice")
	public String federation_notice(@ModelAttribute("pictVO") PictVO pictVO, HttpServletRequest request, ModelMap model) throws Exception {
		
		return "pict/web/federation_notice";
	}
	//연맹자료실
	@RequestMapping("federation_files")
	public String federation_files(@ModelAttribute("pictVO") PictVO pictVO, HttpServletRequest request, ModelMap model) throws Exception {
		
		return "pict/web/federation_files";
	}
	//연맹행사안내
	@RequestMapping("federation_event")
	public String federation_event(@ModelAttribute("pictVO") PictVO pictVO, HttpServletRequest request, ModelMap model) throws Exception {
		
		return "pict/web/federation_event";
	}
	//연맹오시는길
	@RequestMapping("federation_location")
	public String federation_location(@ModelAttribute("pictVO") PictVO pictVO, HttpServletRequest request, ModelMap model) throws Exception {
		
		return "pict/web/federation_location";
	}
	
	
	//연맹별 공지사항 뷰
	@RequestMapping("federation_view")
	public String federation_view(@ModelAttribute("pictVO") PictVO pictVO, HttpServletRequest request, ModelMap model) throws Exception {
		
		return "pict/web/federation_view";
	}
	//통합자료실
	@RequestMapping("integrated")
	public String integrated(@ModelAttribute("pictVO") PictVO pictVO, HttpServletRequest request, ModelMap model) throws Exception {
		int limitNumber = 20;
		pictVO.setLimit(limitNumber);
		
		Integer pageNum = pictVO.getPageNumber();
		
		if(pageNum == 0) {
			pictVO.setPageNumber(1);
			pageNum = 1;
		}

		int startNum = (pageNum - 1) * limitNumber;
		pictVO.setStartNumber(startNum);
		pictVO.setBRDNO("1587");
		
		Integer totalCnt = pictService.board_list_cnt(pictVO);
		
		int lastPageValue = (int)(Math.ceil( totalCnt * 1.0 / 20 )); 
		pictVO.setLastPage(lastPageValue);
		
		Integer s_page = pageNum - 4;
		Integer e_page = pageNum + 5;
		if (s_page <= 0) {
			s_page = 1;
			e_page = 10;
		} 
		if (e_page > lastPageValue){
			e_page = lastPageValue;
		}
		
		pictVO.setStartPage(s_page);
		pictVO.setEndPage(e_page);
		
		
		List<PictVO> board_list = pictService.board_list(pictVO);
		model.addAttribute("board_list", board_list);
		model.addAttribute("board_cnt", totalCnt);
		
		return "pict/web/integrated";
	}
	//통합자료실 뷰
	@RequestMapping("integrated_view")
	public String integrated_view(@ModelAttribute("pictVO") PictVO pictVO, HttpServletRequest request, ModelMap model) throws Exception {
		pictService.board_view_cnt(pictVO);
		pictVO = pictService.board_list_one(pictVO);
		model.addAttribute("pictVO", pictVO);
		return "pict/web/integrated_view";
	}
	//프로그램자료실(대운영)
	@RequestMapping("program")
	public String program(@ModelAttribute("pictVO") PictVO pictVO, HttpServletRequest request, ModelMap model) throws Exception {
		/*
		String sessions = (String) request.getSession().getAttribute("id");
		if (sessions == null || sessions == "null") {
			model.addAttribute("message", "해당 메뉴는 로그인이 필요한 메뉴입니다.");
			model.addAttribute("retType", ":location");
			model.addAttribute("retUrl", "/");
			return "pict/main/message";
		}
		*/

		int limitNumber = 20;
		pictVO.setLimit(limitNumber);
		
		Integer pageNum = pictVO.getPageNumber();
		
		if(pageNum == 0) {
			pictVO.setPageNumber(1);
			pageNum = 1;
		}

		int startNum = (pageNum - 1) * limitNumber;
		pictVO.setStartNumber(startNum);
		pictVO.setBRDNO("290");
		Integer totalCnt = pictService.board_list_cnt(pictVO);
		
		int lastPageValue = (int)(Math.ceil( totalCnt * 1.0 / 20 )); 
		pictVO.setLastPage(lastPageValue);
		
		Integer s_page = pageNum - 4;
		Integer e_page = pageNum + 5;
		if (s_page <= 0) {
			s_page = 1;
			e_page = 10;
		} 
		if (e_page > lastPageValue){
			e_page = lastPageValue;
		}
		
		pictVO.setStartPage(s_page);
		pictVO.setEndPage(e_page);
		
		
		List<PictVO> board_list = pictService.board_list(pictVO);
		model.addAttribute("board_list", board_list);
		model.addAttribute("board_cnt", totalCnt);
		
		return "pict/web/program";
	}
	//통합자료실 뷰
	@RequestMapping("program_view")
	public String program_view(@ModelAttribute("pictVO") PictVO pictVO, HttpServletRequest request, ModelMap model) throws Exception {
		pictService.board_view_cnt(pictVO);
		pictVO = pictService.board_list_one(pictVO);
		model.addAttribute("pictVO", pictVO);
		return "pict/web/program_view";
	}

	//한국스카우트연맹
	//소개
	@RequestMapping("intro")
	public String intro(@ModelAttribute("pictVO") PictVO pictVO, HttpServletRequest request, ModelMap model) throws Exception {
		
		return "pict/web/intro";
	}
	//인사말
	@RequestMapping("greeting")
	public String greeting(@ModelAttribute("pictVO") PictVO pictVO, HttpServletRequest request, ModelMap model) throws Exception {
		
		return "pict/web/greeting";
	}
	//비전
	@RequestMapping("vision")
	public String vision(@ModelAttribute("pictVO") PictVO pictVO, HttpServletRequest request, ModelMap model) throws Exception {
		
		return "pict/web/vision";
	}
	//연혁,사업
	@RequestMapping("history_local")
	public String history_local(@ModelAttribute("pictVO") PictVO pictVO, HttpServletRequest request, ModelMap model) throws Exception {
		
		return "pict/web/history_local";
	}
	//연혁,사업
	@RequestMapping("history_inter")
	public String history_inter(@ModelAttribute("pictVO") PictVO pictVO, HttpServletRequest request, ModelMap model) throws Exception {
		
		return "pict/web/history_inter";
	}
	//조직
	@RequestMapping("organization")
	public String organization(@ModelAttribute("pictVO") PictVO pictVO, HttpServletRequest request, ModelMap model) throws Exception {
		
		return "pict/web/organization";
	}
	//규정
	@RequestMapping("rules")
	public String rules(@ModelAttribute("pictVO") PictVO pictVO, HttpServletRequest request, ModelMap model) throws Exception {
		
		return "pict/web/rules";
	}
	//선서
	@RequestMapping("oath")
	public String oath(@ModelAttribute("pictVO") PictVO pictVO, HttpServletRequest request, ModelMap model) throws Exception {
		
		return "pict/web/oath";
	}
	//휘장
	@RequestMapping("logos")
	public String logos(@ModelAttribute("pictVO") PictVO pictVO, HttpServletRequest request, ModelMap model) throws Exception {
		
		return "pict/web/logos";
	}
	//시설안내,예약
	@RequestMapping("facility")
	public String facility(@ModelAttribute("pictVO") PictVO pictVO, HttpServletRequest request, ModelMap model) throws Exception {

		return "pict/web/facility";
	}
	//스카우트 설명
	@RequestMapping("scouts")
	public String scouts(@ModelAttribute("pictVO") PictVO pictVO, HttpServletRequest request, ModelMap model) throws Exception {

		return "pict/web/scouts";
	}

	@RequestMapping("facility_reservation")
	@ResponseBody
	public HashMap<String, Object> facility_reservation(@ModelAttribute("pictVO") PictVO pictVO, ModelMap model, HttpServletRequest request, @RequestBody Map<String, Object> param) throws Exception {
		HashMap<String, Object> map = new HashMap<String, Object>();
		try {
			
			String company = param.get("company").toString();
			String depart = param.get("depart").toString();
			String name = param.get("name").toString();
			String mobile = param.get("mobile").toString();
			String applydate = param.get("applydate").toString();
			String time = param.get("time").toString();
			
			String person = param.get("person").toString();
			String etc1 = param.get("etc1").toString();
			String etc2 = param.get("etc2").toString();
			String purpose = param.get("purpose").toString();
			String bigo = param.get("bigo").toString();
			
			
			
			
			pictVO.setCompany(company);
			pictVO.setDepart(depart);
			pictVO.setName(name);
			pictVO.setMOBILE(mobile);
			pictVO.setApplydate(applydate);
			pictVO.setTime(time);
			pictVO.setPerson(person);
			pictVO.setEtc1(etc1);
			pictVO.setEtc2(etc2);
			pictVO.setPurpose(purpose);
			pictVO.setBIGO(bigo);
			
			pictService.reservation_insert(pictVO);
			
			
			//pictService.fn_get_units_info(pictVO);
			map.put("rst", "Y");
			
			return map;
		}
		catch(Exception e) {
			System.out.println(e);
			map.put("rst", "N");
			return map;
		}
		
	}
	
	@RequestMapping("local_apply")
	@ResponseBody
	public HashMap<String, Object> local_apply(@ModelAttribute("pictVO") PictVO pictVO, ModelMap model, HttpServletRequest request, @RequestBody Map<String, Object> param) throws Exception {
		HashMap<String, Object> map = new HashMap<String, Object>();
		try {
			
			String name = param.get("name").toString();
			String email = param.get("email").toString();
			String mobile = param.get("mobile").toString();
			String age = param.get("age").toString();
			String relation = param.get("relation").toString();
			String association = param.get("association").toString();
			
			pictVO.setName(name);
			pictVO.setEMAIL(email);
			pictVO.setMOBILE(mobile);
			pictVO.setAge(age);
			pictVO.setRelation(relation);
			pictVO.setAssociation(association);
			
			
			pictService.local_apply(pictVO);
			
			
			//pictService.fn_get_units_info(pictVO);
			map.put("rst", "Y");
			
			return map;
		}
		catch(Exception e) {
			System.out.println(e);
			map.put("rst", "N");
			return map;
		}
		
	}
	
	//찾아오시는 길(중앙연맹)
	@RequestMapping("location_center")
	public String location_center(@ModelAttribute("pictVO") PictVO pictVO, HttpServletRequest request, ModelMap model) throws Exception {
		
		return "pict/web/location_center";
	}
	//찾아오시는 길(지방)
	@RequestMapping("location_local")
	public String location_local(@ModelAttribute("pictVO") PictVO pictVO, HttpServletRequest request, ModelMap model) throws Exception {
		
		return "pict/web/location_local";
	}
	//수품대리점
	@RequestMapping("store")
	public String store(@ModelAttribute("pictVO") PictVO pictVO, HttpServletRequest request, ModelMap model) throws Exception {
		
		return "pict/web/store";
	}
	//함께하는 기관,기업
	@RequestMapping("family")
	public String family(@ModelAttribute("pictVO") PictVO pictVO, HttpServletRequest request, ModelMap model) throws Exception {
		
		return "pict/web/family";
	}
	//정보공개
	@RequestMapping("information")
	public String information(@ModelAttribute("pictVO") PictVO pictVO, HttpServletRequest request, ModelMap model) throws Exception {
		int limitNumber = 20;
		pictVO.setLimit(limitNumber);
		
		Integer pageNum = pictVO.getPageNumber();
		
		if(pageNum == 0) {
			pictVO.setPageNumber(1);
			pageNum = 1;
		}

		int startNum = (pageNum - 1) * limitNumber;
		pictVO.setStartNumber(startNum);
		pictVO.setBRDNO("1827");
		Integer totalCnt = pictService.board_list_cnt(pictVO);
		
		int lastPageValue = (int)(Math.ceil( totalCnt * 1.0 / 20 )); 
		pictVO.setLastPage(lastPageValue);
		
		Integer s_page = pageNum - 4;
		Integer e_page = pageNum + 5;
		if (s_page <= 0) {
			s_page = 1;
			e_page = 10;
		} 
		if (e_page > lastPageValue){
			e_page = lastPageValue;
		}
		
		pictVO.setStartPage(s_page);
		pictVO.setEndPage(e_page);
		
		
		List<PictVO> board_list = pictService.board_list(pictVO);
		model.addAttribute("board_list", board_list);
		model.addAttribute("board_cnt", totalCnt);
		
		return "pict/web/information";
	}
	//정보공개 뷰
	@RequestMapping("information_view")
	public String information_view(@ModelAttribute("pictVO") PictVO pictVO, HttpServletRequest request, ModelMap model) throws Exception {
		pictService.board_view_cnt(pictVO);
		pictVO = pictService.board_list_one(pictVO);
		model.addAttribute("pictVO", pictVO);
		return "pict/web/information_view";
	}
	//이용약관
	@RequestMapping("terms")
	public String terms(@ModelAttribute("pictVO") PictVO pictVO, HttpServletRequest request, ModelMap model) throws Exception {
		
		return "pict/web/terms";
	}
	//개인정보처리방침
	@RequestMapping("personal_info")
	public String personal_info(@ModelAttribute("pictVO") PictVO pictVO, HttpServletRequest request, ModelMap model) throws Exception {
		
		return "pict/web/personal_info";
	}
	
	//중앙훈련원
	//소개, 인사말
	@RequestMapping("tr_intgree")
	public String tr_intgree(@ModelAttribute("pictVO") PictVO pictVO, HttpServletRequest request, ModelMap model) throws Exception {
		
		return "pict/web/tr_intgree";
	}
	//찾아오시는 길
	@RequestMapping("tr_gil")
	public String tr_gil(@ModelAttribute("pictVO") PictVO pictVO, HttpServletRequest request, ModelMap model) throws Exception {
		
		return "pict/web/tr_gil";
	}
	//공지사항
	@RequestMapping("tr_board")
	public String tr_board(@ModelAttribute("pictVO") PictVO pictVO, HttpServletRequest request, ModelMap model) throws Exception {
		
		return "pict/web/tr_board";
	}
	//공지사항 뷰
	@RequestMapping("tr_borad_view")
	public String tr_borad_view(@ModelAttribute("pictVO") PictVO pictVO, HttpServletRequest request, ModelMap model) throws Exception {
		
		return "pict/web/tr_borad_view";
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
		String uploadPath = "/user1/upload_file/scout/";
		//String uploadPath = "D:\\user1\\upload_file\\default";
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
	
 	public static String encryptPassword(String password) throws Exception {
		MessageDigest md = MessageDigest.getInstance("SHA-256");
		md.update(password.getBytes());
		return bytesToHex(md.digest());
	}
	private static String bytesToHex(byte[] bytes) {
		StringBuilder sb = new StringBuilder();
		for(byte b : bytes) {
			sb.append(String.format("%02x", b));
		}
		return sb.toString();
	}
	
	
}
