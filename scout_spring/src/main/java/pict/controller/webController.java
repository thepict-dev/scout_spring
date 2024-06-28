package pict.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.security.MessageDigest;
import java.util.Calendar;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
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
	
	//행사
	//잼버리
	@RequestMapping("jamboree")
	public String jamboree(@ModelAttribute("pictVO") PictVO pictVO, HttpServletRequest request, ModelMap model) throws Exception {
		
		return "pict/web/jamboree";
	}
	//youthhero
	@RequestMapping("youthhero")
	public String youthhero(@ModelAttribute("pictVO") PictVO pictVO, HttpServletRequest request, ModelMap model) throws Exception {
		
		return "pict/web/youthhero";
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
	@RequestMapping("history")
	public String history(@ModelAttribute("pictVO") PictVO pictVO, HttpServletRequest request, ModelMap model) throws Exception {
		
		return "pict/web/history";
	}
	//조직
	@RequestMapping("organization")
	public String organization(@ModelAttribute("pictVO") PictVO pictVO, HttpServletRequest request, ModelMap model) throws Exception {
		
		return "pict/web/organization";
	}
	//규정,휘장
	@RequestMapping("rules")
	public String rules(@ModelAttribute("pictVO") PictVO pictVO, HttpServletRequest request, ModelMap model) throws Exception {
		
		return "pict/web/rules";
	}
	//시설안내,예약
	@RequestMapping("facility")
	public String facility(@ModelAttribute("pictVO") PictVO pictVO, HttpServletRequest request, ModelMap model) throws Exception {

		return "pict/web/facility";
	}
	//찾아오시는 길
	@RequestMapping("location")
	public String location(@ModelAttribute("pictVO") PictVO pictVO, HttpServletRequest request, ModelMap model) throws Exception {
		
		return "pict/web/location";
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
