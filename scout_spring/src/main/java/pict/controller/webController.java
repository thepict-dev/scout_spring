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
import java.util.Date;
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
		
		return "pict/web/notice";
	}
	//공지사항 뷰
	@RequestMapping("notice_view")
	public String notice_view(@ModelAttribute("pictVO") PictVO pictVO, HttpServletRequest request, ModelMap model) throws Exception {
		
		return "pict/web/notice_view";
	}
	//뉴스
	@RequestMapping("news")
	public String news(@ModelAttribute("pictVO") PictVO pictVO, HttpServletRequest request, ModelMap model) throws Exception {
		
		return "pict/web/news";
	}
	//공지사항 뷰
	@RequestMapping("news_view")
	public String news_view(@ModelAttribute("pictVO") PictVO pictVO, HttpServletRequest request, ModelMap model) throws Exception {
		
		return "pict/web/news_view";
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
		
		return "pict/web/information";
	}
	//정보공개 뷰
	@RequestMapping("information_view")
	public String information_view(@ModelAttribute("pictVO") PictVO pictVO, HttpServletRequest request, ModelMap model) throws Exception {
		
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