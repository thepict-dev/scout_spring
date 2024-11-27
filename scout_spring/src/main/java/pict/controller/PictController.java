package pict.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.net.URLEncoder;
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
import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFCellStyle;
import org.apache.poi.hssf.usermodel.HSSFFont;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.BorderStyle;
import org.apache.poi.ss.usermodel.FillPatternType;
import org.apache.poi.ss.usermodel.IndexedColors;
import org.json.simple.JSONObject;
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
@RequestMapping("/admin")
public class PictController {

	@Autowired
	PictService pictService;

	@Autowired
	AdminService adminService;

	@RequestMapping("/pict_main")
	public String pict_main(@ModelAttribute("pictVO") PictVO pictVO, HttpServletRequest request, ModelMap model,
			HttpSession session, RedirectAttributes rttr) throws Exception {
		String authority = (String) request.getSession().getAttribute("authority");
		if (authority == null || authority == "null") {
			return "redirect:/admin/pict_login";
		} else {
			
			/*
			if (request.getSession().getAttribute("id") != null) {
				pictVO.setMEMBERNO((String) request.getSession().getAttribute("id"));
				pictVO = adminService.get_user_info(pictVO);
				model.addAttribute("adminVO", pictVO);
			}
			*/
			
			if (authority.equals("jeonjong")) {
				return "redirect:/admin/front/users";
			}
			else if(authority.equals("sub_admin")) {
				return "redirect:/admin/front/units";
			}
			else {
				return "redirect:/";
			}
			
			

		}
	}

	@RequestMapping("/pict_login")
	public String login_main(@ModelAttribute("pictVO") PictVO pictVO, HttpServletRequest request, ModelMap model,
			HttpServletResponse response) throws Exception {
		String userAgent = request.getHeader("user-agent");
		String authority = (String) request.getSession().getAttribute("authority");
		boolean mobile1 = userAgent.matches(
				".*(iPhone|iPod|Android|Windows CE|BlackBerry|Symbian|Windows Phone|webOS|Opera Mini|Opera Mobi|POLARIS|IEMobile|lgtelecom|nokia|SonyEricsson).*");
		boolean mobile2 = userAgent.matches(".*(LG|SAMSUNG|Samsung).*");
		if (mobile1 || mobile2) {
			// 여기 모바일일 경우
		
			model.addAttribute("message", "PC에서만 사용이 가능합니다.");
			model.addAttribute("retType", ":exit");
			return "pict/main/message";
		}

		if (authority == null || authority == "null") {
			System.out.println("여아님?");
			List<PictVO> association_list = pictService.association_list(pictVO);
			model.addAttribute("resultList", association_list);
			
			pictVO.setASSOCIATIONCODE("200");
			List<PictVO> troop_list = pictService.login_troop_list(pictVO);
			model.addAttribute("association_list", association_list);
			model.addAttribute("troop_list", troop_list);
			
			return "pict/main/login";
		} else {
			// 나중에 여기 계정별로 리다이렉트 분기처리
			
			
			if (authority.equals("jeonjong")) {
				return "redirect:/admin/front/users";
			}
			else if(authority.equals("sub_admin")) {
				return "redirect:/admin/front/scout_whole_register";
			}
			else {
				return "redirect:/";
			}

		}

	}
	
	@RequestMapping("/get_login_troop")
	@ResponseBody
	public HashMap<String, Object> get_login_troop(@ModelAttribute("pictVO") PictVO pictVO, ModelMap model, HttpServletRequest request, @RequestBody Map<String, Object> param) throws Exception {	
		HashMap<String, Object> map = new HashMap<String, Object>();
		String associationcode = param.get("associationcode").toString();
		pictVO.setASSOCIATIONCODE(associationcode);
		List<PictVO> relation_list = pictService.login_troop_list(pictVO);
		
		if(relation_list.size() > 0) {
			map.put("list", relation_list);
			return map;
		}
		else {
			return map;
		}
	}
	
	

	@RequestMapping("/login")
	public String login(@ModelAttribute("pictVO") PictVO pictVO, HttpServletRequest request, ModelMap model)
			throws Exception {
		// 처음 드러와서 세션에 정보있으면 메인으로 보내줘야함
		String inpuId = pictVO.getMEMBERNO();
		String inputPw = pictVO.getPassword();

		pictVO = adminService.get_user_info(pictVO);

		if (pictVO != null && pictVO.getMEMBERNO() != null && !pictVO.getMEMBERNO().equals("")) {
			String user_id = pictVO.getMEMBERNO();
			String enpassword = encryptPassword(inputPw); // 입력비밀번호
			
			if (enpassword.equals(pictVO.getPassword())) {
				if(pictVO.getEMPLOYEEY().equals("X") && pictVO.getADMINY().equals("N")) {
					model.addAttribute("message", "탈퇴한 회원입니다.");
					model.addAttribute("retType", ":location");
					model.addAttribute("retUrl", "/admin/pict_login");
					return "pict/main/message";
				}
				else {
					request.getSession().setAttribute("id", pictVO.getMEMBERNO());
					request.getSession().setAttribute("name", pictVO.getKNAME());
					request.getSession().setAttribute("associationname", pictVO.getASSOCIATIONNAME());
					request.getSession().setAttribute("associationcode", pictVO.getASSOCIATIONCODE());
					request.getSession().setAttribute("picimg", pictVO.getPICIMG());
					request.getSession().setAttribute("authority", "jeonjong");
					
					return "redirect:/admin/pict_main";
				}

			} else {
				model.addAttribute("message", "입력하신 정보가 일치하지 않습니다.");
				model.addAttribute("retType", ":location");
				model.addAttribute("retUrl", "/admin/pict_login");
				return "pict/main/message";
			}
		} else {
			model.addAttribute("message", "해당 로그인 방식은 전종지도자 이상만 활용이 가능합니다.<br>대등록이 필요한 지도자분들은 상단탭의 대등록 로그인방식을 이용해주세요.");
			model.addAttribute("retType", ":location");
			model.addAttribute("retUrl", "/admin/pict_login");
			return "pict/main/message";
		}
	}
	
	@RequestMapping("/sub_admin_login")
	public String sub_admin_login(@ModelAttribute("pictVO") PictVO pictVO, HttpServletRequest request, ModelMap model)
			throws Exception {
		String inpuId = pictVO.getMEMBERNO();
		String inputPw = pictVO.getPassword();
		pictVO = adminService.sub_admin_info(pictVO);
		System.out.println("여기가 로그인 액션이 필요함");
		if (pictVO != null && pictVO.getTROOPNO() != null && !pictVO.getTROOPNO().equals("")) {
			String enpassword = encryptPassword(inputPw); // 입력비밀번호
			
			if (enpassword.equals(pictVO.getPassword())) {
				request.getSession().setAttribute("troop_associationcode", pictVO.getASSOCIATIONCODE());
				request.getSession().setAttribute("troopno", pictVO.getTROOPNO());
				request.getSession().setAttribute("troopname", pictVO.getTROOPNAME());
				request.getSession().setAttribute("authority", "sub_admin");
				
				return "redirect:/admin/pict_main";
		

			} else {
				model.addAttribute("message", "입력하신 정보가 일치하지 않습니다.");
				model.addAttribute("retType", ":location");
				model.addAttribute("retUrl", "/admin/pict_login");
				return "pict/main/message";
			}
		} else {
			model.addAttribute("message", "입력하신 정보가 일치하지 않습니다.");
			model.addAttribute("retType", ":location");
			model.addAttribute("retUrl", "/admin/pict_login");
			return "pict/main/message";
		}
	}

	@RequestMapping("/logout")
	public String logout(@ModelAttribute("pictVO") PictVO pictVO, HttpServletRequest request, ModelMap model)
			throws Exception {
		request.getSession().setAttribute("id", null);
		request.getSession().setAttribute("name", null);
		request.getSession().setAttribute("associationname", null);
		request.getSession().setAttribute("associationcode", null);
		request.getSession().setAttribute("picimg", null);
		request.getSession().setAttribute("troopno", null);
		request.getSession().setAttribute("troopname", null);
		request.getSession().setAttribute("authority", null);

		return "redirect:/admin/pict_login";

	}

	
	@RequestMapping("/main")
	public String main(@ModelAttribute("pictVO") AdminVO adminVO, HttpServletRequest request, ModelMap model,
			HttpSession session, RedirectAttributes rttr) throws Exception {
		return "redirect:/admin/pict_login";
	}
	//대원통합창
	@RequestMapping("/front/users")
	public String ko_main(@ModelAttribute("pictVO") PictVO pictVO, HttpServletRequest request, ModelMap model,
			HttpSession session, RedirectAttributes rttr) throws Exception {
		
		String sessions = (String) request.getSession().getAttribute("authority");
		if (sessions == null || sessions == "null") {
			return "redirect:/admin/pict_login";
		}
		
		Date today = new Date();
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy");
		String current_year = dateFormat.format(today);
		model.addAttribute("current_year", current_year);
		pictVO.setSearch_year(current_year);
		String authority = (String) request.getSession().getAttribute("authority");
		
		if (authority == null || authority == "null" || authority.equals("") || !authority.equals("jeonjong")) {
			model.addAttribute("message", "해당 메뉴는 전종지도자만 활용 가능한 메뉴입니다.");
			model.addAttribute("retType", ":location");
			model.addAttribute("retUrl", "/admin/main");
			
			return "pict/main/message";
		}
		String loginNo = request.getSession().getAttribute("id").toString();
		String flag = pictService.login_user_info(loginNo);
		model.addAttribute("flag", flag);
		
		
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
			model.addAttribute("search_flag", "");
		}
		else {
			List<PictVO> scout_list = pictService.scout_left_search_list(pictVO);
			
			//회원번호로 정렬
			//scout_list.sort(Comparator.comparing(PictVO::getMEMBERNO));
			model.addAttribute("resultList", scout_list);
			List<?> job_list= pictService.job_list(pictVO);
			model.addAttribute("resultListCnt", scout_list.size());
			model.addAttribute("job_list", job_list);
			model.addAttribute("pictVO", pictVO);
			model.addAttribute("search_flag", "search");
		}
		
		
		return "pict/front/users";
	}
	@RequestMapping(value = "/users_excel")
	public void users_excel(@ModelAttribute("searchVO") PictVO pictVO, ModelMap model, HttpServletRequest request, HttpServletResponse response) throws Exception {
		Date today = new Date();
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy");
		String current_year = dateFormat.format(today);
		model.addAttribute("current_year", current_year);
		pictVO.setSearch_year(current_year);
		List<PictVO> attendance_list = pictService.scout_left_search_list(pictVO);

		HSSFWorkbook objWorkBook = new HSSFWorkbook();
        HSSFSheet objSheet = null;
        HSSFRow objRow = null;
        HSSFCell objCell = null;       //셀 생성

        //제목 폰트
        HSSFFont font = objWorkBook.createFont();
        HSSFFont font_title = objWorkBook.createFont();
        font_title.setFontHeightInPoints((short)11);
        font.setFontHeightInPoints((short)9);
        font.setFontName("맑은고딕");
		int rowIndex = 0;
		
		HSSFCellStyle styleHd_title = objWorkBook.createCellStyle(); // 제목 스타일
		HSSFCellStyle styleHd = objWorkBook.createCellStyle();    //내용 스타일
		
		styleHd_title.setFillForegroundColor(IndexedColors.GREY_25_PERCENT.getIndex());
		styleHd_title.setFillPattern(FillPatternType.SOLID_FOREGROUND);
		
		// 각항목 테두리
		styleHd.setBorderRight(BorderStyle.THIN);
		styleHd.setBorderLeft(BorderStyle.THIN);
		styleHd.setBorderTop(BorderStyle.THIN);
		styleHd.setBorderBottom(BorderStyle.THIN);
		styleHd.setWrapText(true);//자동 줄바꿈

		styleHd_title.setBorderRight(BorderStyle.THIN);
		styleHd_title.setBorderLeft(BorderStyle.THIN);
		styleHd_title.setBorderTop(BorderStyle.THIN);
		styleHd_title.setBorderBottom(BorderStyle.THIN);
					
        objSheet = objWorkBook.createSheet("첫번째 시트");     //워크시트 생성
		
		
		//헤더
        objRow = objSheet.createRow(0);
        objRow.setHeight ((short) 0x150);
        
        objCell = objRow.createCell(0);
        objCell.setCellValue("회원번호");
        objCell.setCellStyle(styleHd_title);

        objCell = objRow.createCell(1);
        objCell.setCellValue("회원명");
        objCell.setCellStyle(styleHd_title);
		
        objCell = objRow.createCell(2);
        objCell.setCellValue("생년월일");
        objCell.setCellStyle(styleHd_title);
        
        objCell = objRow.createCell(3);
        objCell.setCellValue("대번호(당해)");
        objCell.setCellStyle(styleHd_title);
        
        objCell = objRow.createCell(4);
        objCell.setCellValue("단위대명(당해)");
        objCell.setCellStyle(styleHd_title);
        
        
        objCell = objRow.createCell(5);
        objCell.setCellValue("회원구분");
        objCell.setCellStyle(styleHd_title);
        
        objCell = objRow.createCell(6);
        objCell.setCellValue("회원등급");
        objCell.setCellStyle(styleHd_title);
        
        objCell = objRow.createCell(7);
        objCell.setCellValue("대원여부");
        objCell.setCellStyle(styleHd_title);
        
        objCell = objRow.createCell(8);
        objCell.setCellValue("지도자여부");
        objCell.setCellStyle(styleHd_title);
        
        objCell = objRow.createCell(9);
        objCell.setCellValue("평생회원여부");
        objCell.setCellStyle(styleHd_title);
        
        objCell = objRow.createCell(10);
        objCell.setCellValue("전종여부");
        objCell.setCellStyle(styleHd_title);
        
        objCell = objRow.createCell(11);
        objCell.setCellValue("성별");
        objCell.setCellStyle(styleHd_title);
        
        objCell = objRow.createCell(12);
        objCell.setCellValue("연락처");
        objCell.setCellStyle(styleHd_title);
        
        objCell = objRow.createCell(13);
        objCell.setCellValue("이메일");
        objCell.setCellStyle(styleHd_title);
        
        objCell = objRow.createCell(14);
        objCell.setCellValue("우편번호");
        objCell.setCellStyle(styleHd_title);
        
        objCell = objRow.createCell(15);
        objCell.setCellValue("집주소");
        objCell.setCellStyle(styleHd_title);
		//바디
        int doublecnt = 0;
		for(int i=0; i<attendance_list.size(); i++) {
        	//순서
			objRow = objSheet.createRow(i+1+doublecnt);
	        objRow.setHeight ((short) 0x150);
	        objSheet.autoSizeColumn(i);
	        
	        //회원번호
	        objCell = objRow.createCell(0);
	        objCell.setCellValue(attendance_list.get(i).getMEMBERNO());
	        objSheet.setColumnWidth(0, (short)0x1000);
	        objCell.setCellStyle(styleHd);
	        
	        //회원명
	        objCell = objRow.createCell(1);
	        objCell.setCellValue(attendance_list.get(i).getKNAME());
	        objSheet.setColumnWidth(1, (short)0x1000);
	        objCell.setCellStyle(styleHd);

	        //생년월일
	        objCell = objRow.createCell(2);
	        objCell.setCellValue(attendance_list.get(i).getBIRTHDAY());
	        objSheet.setColumnWidth(2, (short)0x1500);
	        objCell.setCellStyle(styleHd);
	        
	        //대번호
	        String disptroopno = "";
	        if(attendance_list.get(i).getDISPTROOPNO() != null) {
	        	disptroopno = attendance_list.get(i).getDISPTROOPNO();
	        	
	        }
	        objCell = objRow.createCell(3);
	        objCell.setCellValue(disptroopno);
	        objSheet.setColumnWidth(3, (short)0x1500);
	        objCell.setCellStyle(styleHd);
	        
	        //단위대명
	        String troopname = "";
	        if(attendance_list.get(i).getTROOPNAME() != null) {
	        	troopname = attendance_list.get(i).getTROOPNAME();
	        }
	        objCell = objRow.createCell(4);
	        objCell.setCellValue(troopname);
	        objSheet.setColumnWidth(4, (short)0x2000);
	        objCell.setCellStyle(styleHd);
	        
	        //회원구분
	        String memclscode = "개인";
	        if(attendance_list.get(i).getMEMCLSCODE().equals("2")) memclscode = "법인";
    		if(attendance_list.get(i).getMEMCLSCODE().equals("3")) memclscode = "단체";
    		
	        objCell = objRow.createCell(5);
	        objCell.setCellValue(memclscode);
	        objSheet.setColumnWidth(5, (short)0x800);
	        objCell.setCellStyle(styleHd);
	        
        	
        	//회원등급
	        String memgradecode = "대원/지도자";
	        if(attendance_list.get(i).getMEMGRADECODE() != null) {
		        if(attendance_list.get(i).getMEMGRADECODE().equals("1")) memclscode = "행사회원";
	    		if(attendance_list.get(i).getMEMGRADECODE().equals("2")) memclscode = "후원회원";
	        }
	        objCell = objRow.createCell(6);
	        objCell.setCellValue(memgradecode);
	        objSheet.setColumnWidth(6, (short)0x1200);
	        objCell.setCellStyle(styleHd);
	        
	        //대원여부
	        objCell = objRow.createCell(7);
	        objCell.setCellValue(attendance_list.get(i).getTROOPSCOUTY());
	        objSheet.setColumnWidth(7, (short)0x1000);
	        objCell.setCellStyle(styleHd);
	        
	        //지도자여부
	        objCell = objRow.createCell(8);
	        objCell.setCellValue(attendance_list.get(i).getTROOPLEADERY());
	        objSheet.setColumnWidth(8, (short)0x1000);
	        objCell.setCellStyle(styleHd);
	        
	        //평생회원여부
	        objCell = objRow.createCell(9);
	        objCell.setCellValue(attendance_list.get(i).getLIFE());
	        objSheet.setColumnWidth(9, (short)0x1000);
	        objCell.setCellStyle(styleHd);
	        
	        //전종여부
	        objCell = objRow.createCell(10);
	        objCell.setCellValue(attendance_list.get(i).getEMPLOYEEY());
	        objSheet.setColumnWidth(10, (short)0x1000);
	        objCell.setCellStyle(styleHd);

	        //성별
	        String sex = "";
	        if(attendance_list.get(i).getSEX() != null) {
	        	if(attendance_list.get(i).getSEX().equals("W")) sex = "여";
	        	if(attendance_list.get(i).getSEX().equals("M")) sex = "남";
	        }
	        
	        objCell = objRow.createCell(11);
	        objCell.setCellValue(sex);
	        objSheet.setColumnWidth(11, (short)0x1000);
	        objCell.setCellStyle(styleHd);
	        
	        //연락처
	        objCell = objRow.createCell(12);
	        objCell.setCellValue(attendance_list.get(i).getMOBILE());
	        objSheet.setColumnWidth(12, (short)0x1500);
	        objCell.setCellStyle(styleHd);
	        
	        //이메일
	        objCell = objRow.createCell(13);
	        objCell.setCellValue(attendance_list.get(i).getEMAIL());
	        objSheet.setColumnWidth(13, (short)0x1500);
	        objCell.setCellStyle(styleHd);
	        
	        //우편번호
	        objCell = objRow.createCell(14);
	        objCell.setCellValue(attendance_list.get(i).getHPOSTCODE());
	        objSheet.setColumnWidth(14, (short)0x1500);
	        objCell.setCellStyle(styleHd);
	      
	        //집주소
	        objCell = objRow.createCell(15);
	        objCell.setCellValue(attendance_list.get(i).getHADDR());
	        objSheet.setColumnWidth(15, (short)0x4500);
	        objCell.setCellStyle(styleHd);
	      
        }
	        
	      
	       
		String filename = "회원통합관리_회원목록";
		String header = request.getHeader("User-Agent");
		if(header.contains("Edge") || header.contains("MSIE")) {
			filename = URLEncoder.encode(filename, "UTF-8").replaceAll("//+", "%20");
		}
		else if(header.contains("Chrome") || header.contains("Opera") || header.contains("Firefox")) {
			filename = new String(filename.getBytes("UTF-8"), "ISO-8859-1");
		}
        
        response.setHeader("Content-Disposition", "ATTachment; Filename=" +filename +".xls");

        OutputStream fileOut  = response.getOutputStream();
        objWorkBook.write(fileOut);
        fileOut.close();

        response.getOutputStream().flush();
        response.getOutputStream().close();
	}
	
	//조직통합창
	@RequestMapping("/front/organization")
	public String organization(@ModelAttribute("pictVO") PictVO pictVO, HttpServletRequest request, ModelMap model,
			HttpSession session, RedirectAttributes rttr) throws Exception {
		String sessions = (String) request.getSession().getAttribute("authority");
		if (sessions == null || sessions == "null") {
			return "redirect:/admin/pict_login";
		}
		String authority = (String) request.getSession().getAttribute("authority");
		
		if (authority == null || authority == "null" || authority.equals("") || !authority.equals("jeonjong")) {
			model.addAttribute("message", "해당 메뉴는 전종지도자만 활용 가능한 메뉴입니다.");
			model.addAttribute("retType", ":location");
			model.addAttribute("retUrl", "/admin/main");
			
			return "pict/main/message";
		}
		
		String associationcode = (String) request.getSession().getAttribute("associationcode");
		//중앙본부 아니면 자기 연맹것만 확인
		if(!associationcode.equals("200")) {
			
			pictVO.setSearch_associationcode(associationcode);
		}
		else {
			if(pictVO != null && pictVO.getSearch_associationcode() != null) {
				
			}
			else {
				pictVO.setSearch_associationcode("200");
			}
		}
		
		List<PictVO> association_list = pictService.association_list(pictVO);
		
		List<PictVO> unity_list = pictService.unity_list(pictVO);
		model.addAttribute("association_list", association_list);
		model.addAttribute("unity_list", unity_list);
		model.addAttribute("pictVO", pictVO);
		
		return "pict/front/organization";
	}
	
	//단위대 통합창
	@RequestMapping("/front/units")
	public String units(@ModelAttribute("pictVO") PictVO pictVO, HttpServletRequest request, ModelMap model,
			HttpSession session, RedirectAttributes rttr) throws Exception {
		String sessions = (String) request.getSession().getAttribute("authority");
		if (sessions == null || sessions == "null") {
			return "redirect:/admin/pict_login";
		}
		
		String authority = (String) request.getSession().getAttribute("authority");
		/*
		if (authority == null || authority == "null" || authority.equals("") || !authority.equals("jeonjong")) {
			model.addAttribute("message", "해당 메뉴는 전종지도자만 활용 가능한 메뉴입니다.");
			model.addAttribute("retType", ":location");
			model.addAttribute("retUrl", "/admin/main");
			
			return "pict/main/message";
		}
		*/
		Date today = new Date();
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy");
		String current_year = dateFormat.format(today);
		model.addAttribute("current_year", current_year);
		if(authority != null && authority != "null" && authority.equals("jeonjong") && !authority.equals("") ) {
			String associationcode = (String) request.getSession().getAttribute("associationcode");
			//중앙본부 아니면 자기 연맹것만 확인
			if(!associationcode.equals("200")) {
				
				pictVO.setSearch_associationcode(associationcode);
			}
			else {
				if(pictVO != null && pictVO.getSearch_associationcode() != null) {
					
				}
				else {
					pictVO.setSearch_associationcode("200");
				}
			}
			List<PictVO> association_list = pictService.association_list(pictVO);
			if(request.getQueryString() == null) {
				pictVO.setASSOCIATIONCODE("200");
				pictVO.setSearch_year(current_year);	//재영 이거 시스템 날짜로 바꿔야해
			}
			else {
				if(pictVO == null) {
					
				}
				else {
					pictVO.setASSOCIATIONCODE(pictVO.getSearch_associationcode());
					int year = Integer.parseInt(pictVO.getSearch_year());
					pictVO.setPre_year((year - 1) + "");
					List<PictVO> units_list = pictService.units_list(pictVO);
	
					model.addAttribute("units_list", units_list);
					model.addAttribute("units_cnt", units_list.size());
				}
				
				model.addAttribute("pictVO", pictVO);
			}
			List<PictVO> unity_list = pictService.unity_list(pictVO);
			model.addAttribute("association_list", association_list);
			model.addAttribute("unity_list", unity_list);
		}
		else if(authority != null && authority != "null" && authority.equals("sub_admin") && !authority.equals("") ){
			String troopno = (String) request.getSession().getAttribute("troopno");
			model.addAttribute("authority", authority);
			model.addAttribute("troopno", troopno);
			pictVO.setTROOPNO(troopno);
			List<PictVO> troop_list = pictService.login_troop_list2(pictVO);
			String asso = "";
			String troopname = "";
			String disptroopno = "";
			
			for(int i=0; i<troop_list.size(); i++) {
				asso = troop_list.get(i).getASSOCIATIONCODE();
				troopname = troop_list.get(i).getTROOPNAME();
				disptroopno = troop_list.get(i).getDISPTROOPNO();
			}
			model.addAttribute("asso", asso);
			model.addAttribute("troopname", troopname);
			model.addAttribute("disptroopno", disptroopno);
			System.out.println("여기에서 이제 단위대 정보를 보여줘야해");
		}
		return "pict/front/units";
	}
	@RequestMapping(value = "/units_excel")
	public void units_excel(@ModelAttribute("searchVO") PictVO pictVO, ModelMap model, HttpServletRequest request, HttpServletResponse response) throws Exception {
		Date today = new Date();
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy");
		String current_year = dateFormat.format(today);
		

		pictVO.setASSOCIATIONCODE(pictVO.getSearch_associationcode());
		int year = Integer.parseInt(pictVO.getSearch_year());
		pictVO.setPre_year((year - 1) + "");
		List<PictVO> attendance_list = pictService.units_list_excel(pictVO);

		HSSFWorkbook objWorkBook = new HSSFWorkbook();
        HSSFSheet objSheet = null;
        HSSFRow objRow = null;
        HSSFCell objCell = null;       //셀 생성

        //제목 폰트
        HSSFFont font = objWorkBook.createFont();
        HSSFFont font_title = objWorkBook.createFont();
        font_title.setFontHeightInPoints((short)11);
        font.setFontHeightInPoints((short)9);
        font.setFontName("맑은고딕");
		int rowIndex = 0;
		
		HSSFCellStyle styleHd_title = objWorkBook.createCellStyle(); // 제목 스타일
		HSSFCellStyle styleHd = objWorkBook.createCellStyle();    //내용 스타일
		
		styleHd_title.setFillForegroundColor(IndexedColors.GREY_25_PERCENT.getIndex());
		styleHd_title.setFillPattern(FillPatternType.SOLID_FOREGROUND);
		
		// 각항목 테두리
		styleHd.setBorderRight(BorderStyle.THIN);
		styleHd.setBorderLeft(BorderStyle.THIN);
		styleHd.setBorderTop(BorderStyle.THIN);
		styleHd.setBorderBottom(BorderStyle.THIN);
		styleHd.setWrapText(true);//자동 줄바꿈

		styleHd_title.setBorderRight(BorderStyle.THIN);
		styleHd_title.setBorderLeft(BorderStyle.THIN);
		styleHd_title.setBorderTop(BorderStyle.THIN);
		styleHd_title.setBorderBottom(BorderStyle.THIN);
					
        objSheet = objWorkBook.createSheet("첫번째 시트");     //워크시트 생성
		
		
		//헤더
        objRow = objSheet.createRow(0);
        objRow.setHeight ((short) 0x150);
        
        objCell = objRow.createCell(0);
        objCell.setCellValue("지구연합회");
        objCell.setCellStyle(styleHd_title);

        objCell = objRow.createCell(1);
        objCell.setCellValue("대번호");
        objCell.setCellStyle(styleHd_title);
		
        objCell = objRow.createCell(2);
        objCell.setCellValue("단위대명");
        objCell.setCellStyle(styleHd_title);
        
        objCell = objRow.createCell(3);
        objCell.setCellValue("스카우트구분");
        objCell.setCellStyle(styleHd_title);
        
        objCell = objRow.createCell(4);
        objCell.setCellValue("단위대구분");
        objCell.setCellStyle(styleHd_title);
        
        objCell = objRow.createCell(5);
        objCell.setCellValue("상세");
        objCell.setCellStyle(styleHd_title);
        
		//바디
        int doublecnt = 0;
		for(int i=0; i<attendance_list.size(); i++) {
        	//순서
			objRow = objSheet.createRow(i+1+doublecnt);
	        objRow.setHeight ((short) 0x150);
	        objSheet.autoSizeColumn(i);
	        
	        //지구연합회
	        objCell = objRow.createCell(0);
	        objCell.setCellValue(attendance_list.get(i).getPARENTTROOPNAME());
	        objSheet.setColumnWidth(0, (short)0x1500);
	        objCell.setCellStyle(styleHd);
	        
	        //대번호
	        objCell = objRow.createCell(1);
	        objCell.setCellValue(attendance_list.get(i).getDISPTROOPNO());
	        objSheet.setColumnWidth(1, (short)0x1000);
	        objCell.setCellStyle(styleHd);

	        //단위대명
	        objCell = objRow.createCell(2);
	        objCell.setCellValue(attendance_list.get(i).getTROOPNAME());
	        objSheet.setColumnWidth(2, (short)0x2000);
	        objCell.setCellStyle(styleHd);
	        
	        //스카우트구분
	        objCell = objRow.createCell(3);
	        objCell.setCellValue(attendance_list.get(i).getSCOUTCLSNAME());
	        objSheet.setColumnWidth(3, (short)0x1000);
	        objCell.setCellStyle(styleHd);
        	
        	//단위대구분
	        objCell = objRow.createCell(4);
	        objCell.setCellValue(attendance_list.get(i).getTROOPCLSNAME());
	        objSheet.setColumnWidth(4, (short)0x1000);
	        objCell.setCellStyle(styleHd);
	        
	        //상세
	        objCell = objRow.createCell(5);
	        objCell.setCellValue(attendance_list.get(i).getDETAIL());
	        objSheet.setColumnWidth(5, (short)0x1000);
	        objCell.setCellStyle(styleHd);
	        
        }
	        
	      
	       
		String filename = "단위대통합관리_단위대목록";
		String header = request.getHeader("User-Agent");
		if(header.contains("Edge") || header.contains("MSIE")) {
			filename = URLEncoder.encode(filename, "UTF-8").replaceAll("//+", "%20");
		}
		else if(header.contains("Chrome") || header.contains("Opera") || header.contains("Firefox")) {
			filename = new String(filename.getBytes("UTF-8"), "ISO-8859-1");
		}
        
        response.setHeader("Content-Disposition", "ATTachment; Filename=" +filename +".xls");

        OutputStream fileOut  = response.getOutputStream();
        objWorkBook.write(fileOut);
        fileOut.close();

        response.getOutputStream().flush();
        response.getOutputStream().close();
	}
	//단위대 통합관리에서 단위대 소속 리스트 다운로드
	@RequestMapping(value = "/fn_units_excel")
	public void fn_units_excel(@ModelAttribute("searchVO") PictVO pictVO, ModelMap model, HttpServletRequest request, HttpServletResponse response) throws Exception {
		
				
		List<PictVO> attendance_list = pictService.fn_get_units_leader(pictVO);
		List<PictVO> attendance_list2 = pictService.fn_get_units_scout(pictVO);
		
		attendance_list.addAll(attendance_list2);

		HSSFWorkbook objWorkBook = new HSSFWorkbook();
        HSSFSheet objSheet = null;
        HSSFRow objRow = null;
        HSSFCell objCell = null;       //셀 생성

        //제목 폰트
        HSSFFont font = objWorkBook.createFont();
        HSSFFont font_title = objWorkBook.createFont();
        font_title.setFontHeightInPoints((short)11);
        font.setFontHeightInPoints((short)9);
        font.setFontName("맑은고딕");
		int rowIndex = 0;
		
		HSSFCellStyle styleHd_title = objWorkBook.createCellStyle(); // 제목 스타일
		HSSFCellStyle styleHd = objWorkBook.createCellStyle();    //내용 스타일
		
		styleHd_title.setFillForegroundColor(IndexedColors.GREY_25_PERCENT.getIndex());
		styleHd_title.setFillPattern(FillPatternType.SOLID_FOREGROUND);
		
		// 각항목 테두리
		styleHd.setBorderRight(BorderStyle.THIN);
		styleHd.setBorderLeft(BorderStyle.THIN);
		styleHd.setBorderTop(BorderStyle.THIN);
		styleHd.setBorderBottom(BorderStyle.THIN);
		styleHd.setWrapText(true);//자동 줄바꿈

		styleHd_title.setBorderRight(BorderStyle.THIN);
		styleHd_title.setBorderLeft(BorderStyle.THIN);
		styleHd_title.setBorderTop(BorderStyle.THIN);
		styleHd_title.setBorderBottom(BorderStyle.THIN);
					
        objSheet = objWorkBook.createSheet("첫번째 시트");     //워크시트 생성
		
		
		//헤더
        objRow = objSheet.createRow(0);
        objRow.setHeight ((short) 0x150);
        
        objCell = objRow.createCell(0);
        objCell.setCellValue("순서");
        objCell.setCellStyle(styleHd_title);

        objCell = objRow.createCell(1);
        objCell.setCellValue("등록구분");
        objCell.setCellStyle(styleHd_title);
		
        objCell = objRow.createCell(2);
        objCell.setCellValue("회원번호");
        objCell.setCellStyle(styleHd_title);
        
        objCell = objRow.createCell(3);
        objCell.setCellValue("승인여부");
        objCell.setCellStyle(styleHd_title);
        
        objCell = objRow.createCell(4);
        objCell.setCellValue("성명");
        objCell.setCellStyle(styleHd_title);
        
        objCell = objRow.createCell(5);
        objCell.setCellValue("구분");
        objCell.setCellStyle(styleHd_title);
        
        objCell = objRow.createCell(6);
        objCell.setCellValue("연락처");
        objCell.setCellStyle(styleHd_title);
        
        objCell = objRow.createCell(7);
        objCell.setCellValue("생년월일");
        objCell.setCellStyle(styleHd_title);
        
        objCell = objRow.createCell(8);
        objCell.setCellValue("이메일");
        objCell.setCellStyle(styleHd_title);
        
        objCell = objRow.createCell(9);
        objCell.setCellValue("평생회원");
        objCell.setCellStyle(styleHd_title);
        
        objCell = objRow.createCell(10);
        objCell.setCellValue("등록비");
        objCell.setCellStyle(styleHd_title);
        
        objCell = objRow.createCell(11);
        objCell.setCellValue("연맹지구독");
        objCell.setCellStyle(styleHd_title);
        
        objCell = objRow.createCell(12);
        objCell.setCellValue("연공");
        objCell.setCellStyle(styleHd_title);
        
        objCell = objRow.createCell(13);
        objCell.setCellValue("성별");
        objCell.setCellStyle(styleHd_title);
        
        objCell = objRow.createCell(14);
        objCell.setCellValue("비고");
        objCell.setCellStyle(styleHd_title);
        
        
		//바디
        int doublecnt = 0;
		for(int i=0; i<attendance_list.size(); i++) {
        	//컬럼
			objRow = objSheet.createRow(i+1+doublecnt);
	        objRow.setHeight ((short) 0x150);
	        objSheet.autoSizeColumn(i);
	        
	        //순서
	        objCell = objRow.createCell(0);
	        objCell.setCellValue(i+1);
	        objSheet.setColumnWidth(0, (short)0x800);
	        objCell.setCellStyle(styleHd);
	        
	        //등록구분
	        objCell = objRow.createCell(1);
	        objCell.setCellValue(attendance_list.get(i).getLEVEL());
	        objSheet.setColumnWidth(1, (short)0x1000);
	        objCell.setCellStyle(styleHd);
	        
	        //회원번호
	        objCell = objRow.createCell(2);
	        objCell.setCellValue(attendance_list.get(i).getMEMBERNO());
	        objSheet.setColumnWidth(2, (short)0x1500);
	        objCell.setCellStyle(styleHd);

	        //승인여부
	        objCell = objRow.createCell(3);
	        objCell.setCellValue(attendance_list.get(i).getCONFIRMY());
	        objSheet.setColumnWidth(3, (short)0x1000);
	        objCell.setCellStyle(styleHd);
	        
	        //성명
	        objCell = objRow.createCell(4);
	        objCell.setCellValue(attendance_list.get(i).getKNAME());
	        objSheet.setColumnWidth(4, (short)0x1500);
	        objCell.setCellStyle(styleHd);
        	
	        //성명
	        objCell = objRow.createCell(5);
	        String gubun = "";
	        if(attendance_list.get(i).getLEVEL().equals("지도자")) gubun = attendance_list.get(i).getLEADERPOSITIONNAME();
	        if(attendance_list.get(i).getLEVEL().equals("대원")) gubun = attendance_list.get(i).getSCOUTCLSNAME();
	        objCell.setCellValue(gubun);
	        objSheet.setColumnWidth(5, (short)0x2000);
	        objCell.setCellStyle(styleHd);
	        
	        //연락처
	        objCell = objRow.createCell(6);
	        objCell.setCellValue(attendance_list.get(i).getMOBILE());
	        objSheet.setColumnWidth(6, (short)0x2000);
	        objCell.setCellStyle(styleHd);
	        
	        //생년월일
	        objCell = objRow.createCell(7);
	        objCell.setCellValue(attendance_list.get(i).getBIRTHDAY());
	        objSheet.setColumnWidth(7, (short)0x2000);
	        objCell.setCellStyle(styleHd);
	        
	        //이메일
	        objCell = objRow.createCell(8);
	        objCell.setCellValue(attendance_list.get(i).getEMAIL());
	        objSheet.setColumnWidth(8, (short)0x2000);
	        objCell.setCellStyle(styleHd);
	        
	        //평생회원
	        objCell = objRow.createCell(9);
	        objCell.setCellValue(attendance_list.get(i).getLIFEMEMBERY());
	        objSheet.setColumnWidth(9, (short)0x1000);
	        objCell.setCellStyle(styleHd);
	        
	        //등록비
	        objCell = objRow.createCell(10);
	        objCell.setCellValue(attendance_list.get(i).getENTRYFEE());
	        objSheet.setColumnWidth(10, (short)0x1500);
	        objCell.setCellStyle(styleHd);
	        
	        //연맹지구독
	        objCell = objRow.createCell(11);
	        objCell.setCellValue(attendance_list.get(i).getSCOUTMAGACNT());
	        objSheet.setColumnWidth(11, (short)0x1500);
	        objCell.setCellStyle(styleHd);
	        
	        //연공
	        String yeongong = "";
	        if(attendance_list.get(i).getLEVEL().equals("지도자")) yeongong = attendance_list.get(i).getLEADERCNT();
	        if(attendance_list.get(i).getLEVEL().equals("대원")) yeongong = attendance_list.get(i).getSCOUTCNT();
	        objCell = objRow.createCell(12);
	        objCell.setCellValue(yeongong);
	        objSheet.setColumnWidth(12, (short)0x1000);
	        objCell.setCellStyle(styleHd);
	        
	        //성별
	        String sex = "";
	        if(attendance_list.get(i).getSEX() != null) {
		        if(attendance_list.get(i).getSEX().equals("M")) sex = "남";
		        if(attendance_list.get(i).getSEX().equals("W")) sex = "여";
	        }
	        objCell = objRow.createCell(13);
	        objCell.setCellValue(sex);
	        objSheet.setColumnWidth(13, (short)0x1000);
	        objCell.setCellStyle(styleHd);
	        
	        //비고
	        String etc = "";
	        if(attendance_list.get(i).getLEVEL().equals("지도자")) etc = "";
	        if(attendance_list.get(i).getLEVEL().equals("대원")) etc = attendance_list.get(i).getSCOUTSCHOOLYEAR() == null ? "" : attendance_list.get(i).getSCOUTSCHOOLYEAR();
	        objCell = objRow.createCell(14);
	        objCell.setCellValue(etc);
	        objSheet.setColumnWidth(14, (short)0x1500);
	        objCell.setCellStyle(styleHd);
	        
        }
	        
	      
	       
		String filename = "단위대통합관리_단위대 회원목록";
		String header = request.getHeader("User-Agent");
		if(header.contains("Edge") || header.contains("MSIE")) {
			filename = URLEncoder.encode(filename, "UTF-8").replaceAll("//+", "%20");
		}
		else if(header.contains("Chrome") || header.contains("Opera") || header.contains("Firefox")) {
			filename = new String(filename.getBytes("UTF-8"), "ISO-8859-1");
		}
        
        response.setHeader("Content-Disposition", "ATTachment; Filename=" +filename +".xls");

        OutputStream fileOut  = response.getOutputStream();
        objWorkBook.write(fileOut);
        fileOut.close();

        response.getOutputStream().flush();
        response.getOutputStream().close();
	}
	
	//단위대 통합창 단위대 선택했을때
	@RequestMapping("/fn_get_units_info")
	@ResponseBody
	public HashMap<String, Object> fn_get_units_info(@ModelAttribute("pictVO") PictVO pictVO, ModelMap model, HttpServletRequest request, @RequestBody Map<String, Object> param) throws Exception {
		HashMap<String, Object> map = new HashMap<String, Object>();
		try {
			String troopno = param.get("troopno").toString();
			String year = param.get("year").toString();
			pictVO.setSearch_year(year);
			pictVO.setTROOPNO(troopno+"");
			
			
			pictVO = pictService.fn_get_units_info(pictVO);
			if(pictVO != null) {
				map.put("rst", pictVO);
				
				pictVO.setSearch_year(year);
				List<PictVO> leader_list = pictService.fn_get_units_leader(pictVO);
				
				map.put("leader_list", leader_list);
				List<PictVO> scout_list = pictService.fn_get_units_scout(pictVO);
				
				map.put("scout_list", scout_list);
				return map;
			}
			else {
				return map;
			}	
		}
		catch(Exception e) {
			System.out.println(e);
			return map;
		}
		
	}
	
	
	//신규 조직 등록
	@RequestMapping("/front/signup_org")
	public String signup_org(@ModelAttribute("pictVO") PictVO pictVO, HttpServletRequest request, ModelMap model,
			HttpSession session, RedirectAttributes rttr) throws Exception {
		String sessions = (String) request.getSession().getAttribute("authority");
		if (sessions == null || sessions == "null") {
			return "redirect:/admin/pict_login";
		}
		String authority = (String) request.getSession().getAttribute("authority");
		
		if (authority == null || authority == "null" || authority.equals("") || !authority.equals("jeonjong")) {
			model.addAttribute("message", "해당 메뉴는 전종지도자만 활용 가능한 메뉴입니다.");
			model.addAttribute("retType", ":location");
			model.addAttribute("retUrl", "/admin/main");
			
			return "pict/main/message";
		}
		List<PictVO> trooplevel_list = pictService.trooplevel_list(pictVO);
		List<PictVO> scoutcls_list = pictService.scoutcls_list(pictVO);
		
		model.addAttribute("trooplevel_list", trooplevel_list);
		model.addAttribute("scoutcls_list", scoutcls_list);
		
		
		
		List<PictVO> association_list = pictService.association_list(pictVO);
		pictVO.setASSOCIATIONCODE("200");
		List<PictVO> unity_list = pictService.unity_list(pictVO);
		model.addAttribute("association_list", association_list);
		model.addAttribute("unity_list", unity_list);
		
		model.addAttribute("pictVO", pictVO);
		return "pict/front/signup_org";
	}
	//신규 조직 저장
	@RequestMapping("/new_org")
	public String new_org(@ModelAttribute("pictVO") PictVO pictVO, HttpServletRequest request, ModelMap model) throws Exception {
		
		
		pictService.new_org(pictVO);
		
		
		model.addAttribute("message", "정상적으로 저장되었습니다.");
		model.addAttribute("retType", ":location");
		model.addAttribute("retUrl", "/admin/front/signup_org");
		return "pict/main/message";	
	}
	//전종리스트
	@RequestMapping("/front/former_list")
	public String former_list(@ModelAttribute("pictVO") PictVO pictVO, HttpServletRequest request, ModelMap model) throws Exception {
		String sessions = (String) request.getSession().getAttribute("authority");
		if (sessions == null || sessions == "null") {
			return "redirect:/admin/pict_login";
		}
		String authority = (String) request.getSession().getAttribute("authority");
		
		if (authority == null || authority == "null" || authority.equals("") || !authority.equals("jeonjong")) {
			model.addAttribute("message", "해당 메뉴는 전종지도자만 활용 가능한 메뉴입니다.");
			model.addAttribute("retType", ":location");
			model.addAttribute("retUrl", "/admin/main");
			
			return "pict/main/message";
		}
		List<PictVO> former_list= pictService.former_list(pictVO);
		model.addAttribute("former_list", former_list);
		model.addAttribute("pictVO", pictVO);
		
		List<PictVO> association_list = pictService.association_list(pictVO);
		model.addAttribute("association_list", association_list);
		
		return "pict/front/former_list";
	}
	@RequestMapping(value = "/former_excel")
	public void former_excel(@ModelAttribute("searchVO") PictVO pictVO, ModelMap model, HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		
		List<PictVO> attendance_list = pictService.former_list(pictVO);

		HSSFWorkbook objWorkBook = new HSSFWorkbook();
        HSSFSheet objSheet = null;
        HSSFRow objRow = null;
        HSSFCell objCell = null;       //셀 생성

        //제목 폰트
        HSSFFont font = objWorkBook.createFont();
        HSSFFont font_title = objWorkBook.createFont();
        font_title.setFontHeightInPoints((short)11);
        font.setFontHeightInPoints((short)9);
        font.setFontName("맑은고딕");
		int rowIndex = 0;
		
		HSSFCellStyle styleHd_title = objWorkBook.createCellStyle(); // 제목 스타일
		HSSFCellStyle styleHd = objWorkBook.createCellStyle();    //내용 스타일
		
		styleHd_title.setFillForegroundColor(IndexedColors.GREY_25_PERCENT.getIndex());
		styleHd_title.setFillPattern(FillPatternType.SOLID_FOREGROUND);
		
		// 각항목 테두리
		styleHd.setBorderRight(BorderStyle.THIN);
		styleHd.setBorderLeft(BorderStyle.THIN);
		styleHd.setBorderTop(BorderStyle.THIN);
		styleHd.setBorderBottom(BorderStyle.THIN);
		styleHd.setWrapText(true);//자동 줄바꿈

		styleHd_title.setBorderRight(BorderStyle.THIN);
		styleHd_title.setBorderLeft(BorderStyle.THIN);
		styleHd_title.setBorderTop(BorderStyle.THIN);
		styleHd_title.setBorderBottom(BorderStyle.THIN);
					
        objSheet = objWorkBook.createSheet("첫번째 시트");     //워크시트 생성
		
		
		//헤더
        objRow = objSheet.createRow(0);
        objRow.setHeight ((short) 0x150);
        
        objCell = objRow.createCell(0);
        objCell.setCellValue("회원번호");
        objCell.setCellStyle(styleHd_title);

        objCell = objRow.createCell(1);
        objCell.setCellValue("이름");
        objCell.setCellStyle(styleHd_title);
		
        objCell = objRow.createCell(2);
        objCell.setCellValue("연맹");
        objCell.setCellStyle(styleHd_title);
        
        objCell = objRow.createCell(3);
        objCell.setCellValue("소속부서1");
        objCell.setCellStyle(styleHd_title);
        
        objCell = objRow.createCell(4);
        objCell.setCellValue("소속부서2");
        objCell.setCellStyle(styleHd_title);
        
        objCell = objRow.createCell(5);
        objCell.setCellValue("직급");
        objCell.setCellStyle(styleHd_title);
        
        objCell = objRow.createCell(6);
        objCell.setCellValue("생년월일");
        objCell.setCellStyle(styleHd_title);
        
        objCell = objRow.createCell(7);
        objCell.setCellValue("휴대전화");
        objCell.setCellStyle(styleHd_title);
        
        objCell = objRow.createCell(8);
        objCell.setCellValue("이메일");
        objCell.setCellStyle(styleHd_title);
        
        objCell = objRow.createCell(9);
        objCell.setCellValue("탈퇴여부");
        objCell.setCellStyle(styleHd_title);
        
		//바디
        int doublecnt = 0;
		for(int i=0; i<attendance_list.size(); i++) {
        	//순서
			objRow = objSheet.createRow(i+1+doublecnt);
	        objRow.setHeight ((short) 0x150);
	        objSheet.autoSizeColumn(i);
	        
	        //회원번호
	        objCell = objRow.createCell(0);
	        objCell.setCellValue(attendance_list.get(i).getMEMBERNO());
	        objSheet.setColumnWidth(0, (short)0x1500);
	        objCell.setCellStyle(styleHd);
	        
	        //이름
	        objCell = objRow.createCell(1);
	        objCell.setCellValue(attendance_list.get(i).getKNAME());
	        objSheet.setColumnWidth(1, (short)0x1000);
	        objCell.setCellStyle(styleHd);

	        //연맹
	        objCell = objRow.createCell(2);
	        objCell.setCellValue(attendance_list.get(i).getASSOCIATIONNAME());
	        objSheet.setColumnWidth(2, (short)0x1200);
	        objCell.setCellStyle(styleHd);
	        
	        //소속부서1
	        String sosock ="";
	        if(attendance_list.get(i).getSosock() != null) sosock = "본부";
	        objCell = objRow.createCell(3);
	        objCell.setCellValue(sosock);
	        objSheet.setColumnWidth(3, (short)0x1000);
	        objCell.setCellStyle(styleHd);
        	
        	//소속부서2
	        String depart ="";
	        if(attendance_list.get(i).getDepart() != null) {
	        	if(attendance_list.get(i).getDepart().equals("1")) depart = "조직훈육팀";
	        	if(attendance_list.get(i).getDepart().equals("2")) depart = "국제비전팀";
	        	if(attendance_list.get(i).getDepart().equals("3")) depart = "경영지원팀";
	        	if(attendance_list.get(i).getDepart().equals("4")) depart = "총무회계팀";
	        	if(attendance_list.get(i).getDepart().equals("5")) depart = "관리운영팀";
	        	if(attendance_list.get(i).getDepart().equals("6")) depart = "조직훈육사업본부";
	        	if(attendance_list.get(i).getDepart().equals("7")) depart = "관리운영사업본부";
	        	if(attendance_list.get(i).getDepart().equals("8")) depart = "곤지암야영장";
	        	if(attendance_list.get(i).getDepart().equals("9")) depart = "경영국제사업본부";
	        	if(attendance_list.get(i).getDepart().equals("10")) depart = "사회공헌팀";
	        	if(attendance_list.get(i).getDepart().equals("11")) depart = "토당청소년수련관";
	        	if(attendance_list.get(i).getDepart().equals("12")) depart = "대외협력팀";
	        }
	        objCell = objRow.createCell(4);
	        objCell.setCellValue(depart);
	        objSheet.setColumnWidth(4, (short)0x1000);
	        objCell.setCellStyle(styleHd);
	        
	        //직급
	        String ranked = "";
	        if(attendance_list.get(i).getRanked() != null) {
	        	if(attendance_list.get(i).getRanked().equals("1")) ranked = "총재";
	        	if(attendance_list.get(i).getRanked().equals("2")) ranked = "사무총장";
	        	if(attendance_list.get(i).getRanked().equals("3")) ranked = "중앙훈련원장";
	        	if(attendance_list.get(i).getRanked().equals("4")) ranked = "사무처장 직무대리";
	        	if(attendance_list.get(i).getRanked().equals("5")) ranked = "사무처장";
	        	if(attendance_list.get(i).getRanked().equals("6")) ranked = "본부장";
	        	if(attendance_list.get(i).getRanked().equals("7")) ranked = "팀장";
	        	if(attendance_list.get(i).getRanked().equals("8")) ranked = "야영장장";
	        	if(attendance_list.get(i).getRanked().equals("9")) ranked = "국장";
	        	if(attendance_list.get(i).getRanked().equals("10")) ranked = "부장";
	        	if(attendance_list.get(i).getRanked().equals("11")) ranked = "차장";
	        	if(attendance_list.get(i).getRanked().equals("12")) ranked = "과장";
	        	if(attendance_list.get(i).getRanked().equals("13")) ranked = "대리";
	        	if(attendance_list.get(i).getRanked().equals("14")) ranked = "주임";
	        	if(attendance_list.get(i).getRanked().equals("15")) ranked = "사원";
	        	if(attendance_list.get(i).getRanked().equals("16")) ranked = "인턴";
	        }
	        objCell = objRow.createCell(5);
	        objCell.setCellValue(ranked);
	        objSheet.setColumnWidth(5, (short)0x1500);
	        objCell.setCellStyle(styleHd);
	        
	        //생년월일
	        objCell = objRow.createCell(6);
	        objCell.setCellValue(attendance_list.get(i).getBIRTHDAY());
	        objSheet.setColumnWidth(6, (short)0x1000);
	        objCell.setCellStyle(styleHd);
	        
	        //휴대전화
	        objCell = objRow.createCell(7);
	        objCell.setCellValue(attendance_list.get(i).getMOBILE());
	        objSheet.setColumnWidth(7, (short)0x1000);
	        objCell.setCellStyle(styleHd);
	        
	        //이메일
	        objCell = objRow.createCell(8);
	        objCell.setCellValue(attendance_list.get(i).getEMAIL());
	        objSheet.setColumnWidth(8, (short)0x2000);
	        objCell.setCellStyle(styleHd);
	        
	        //탈퇴여부
	        String emp = "";
	        if(attendance_list.get(i).getEMPLOYEEY() != null) {
	        	if(attendance_list.get(i).getEMPLOYEEY().equals("X")) emp = "탈퇴";
	        }
	        objCell = objRow.createCell(9);
	        objCell.setCellValue(emp);
	        objSheet.setColumnWidth(9, (short)0x1000);
	        objCell.setCellStyle(styleHd);
	        
        }
	        
	      
	       
		String filename = "스카우트통합관리_전종지도자목록";
		String header = request.getHeader("User-Agent");
		if(header.contains("Edge") || header.contains("MSIE")) {
			filename = URLEncoder.encode(filename, "UTF-8").replaceAll("//+", "%20");
		}
		else if(header.contains("Chrome") || header.contains("Opera") || header.contains("Firefox")) {
			filename = new String(filename.getBytes("UTF-8"), "ISO-8859-1");
		}
        
        response.setHeader("Content-Disposition", "ATTachment; Filename=" +filename +".xls");

        OutputStream fileOut  = response.getOutputStream();
        objWorkBook.write(fileOut);
        fileOut.close();

        response.getOutputStream().flush();
        response.getOutputStream().close();
	}
	//전종클릭시 정보 리턴
	@RequestMapping("/former_info")
	@ResponseBody
	public HashMap<String, Object> former_info(@ModelAttribute("pictVO") PictVO pictVO, ModelMap model, HttpServletRequest request, @RequestBody Map<String, Object> param) throws Exception {	
		String memberno = param.get("memberno").toString();
		HashMap<String, Object> map = new HashMap<String, Object>();

		pictVO.setMEMBERNO(memberno);
		
		List<?> former_list = pictService.former_list(pictVO);
		if(former_list.size() > 0) {
			map.put("list", former_list);
			return map;
		}
		else {
			return map;
		}
	}
	//전종 저장
	@RequestMapping("/former_save")
	@ResponseBody
	public String former_save(@ModelAttribute("pictVO") PictVO pictVO, ModelMap model, HttpServletRequest request, @RequestBody Map<String, Object> param) throws Exception {	
		try {
			String memberno = param.get("memberno").toString();
			String kname = param.get("kname").toString();
			String association = param.get("association").toString();
			String sosock = param.get("sosock").toString();
			String depart = param.get("depart").toString();
			String ranked = param.get("ranked").toString();
			String birthday = param.get("birthday").toString();
			String mobile = param.get("mobile").toString();
			String email = param.get("email").toString();
			String employeey = param.get("employeey").toString();
	
			
			pictVO.setMEMBERNO(memberno);
			pictVO.setKNAME(kname);
			pictVO.setAssociation(association);
			pictVO.setSosock(sosock);
			pictVO.setDepart(depart);
			pictVO.setRanked(ranked);
			pictVO.setBIRTHDAY(birthday);
			pictVO.setMOBILE(mobile);
			pictVO.setEMAIL(email);
			pictVO.setEMPLOYEEY(employeey);
			pictService.former_save(pictVO);
			
			return "Y";
		}
		catch(Exception e) {
			System.out.println(e);
			return "N";
		}
	}
	
	//평생회원 리스트
	@RequestMapping("/front/life_list")
	public String life_list(@ModelAttribute("pictVO") PictVO pictVO, HttpServletRequest request, ModelMap model) throws Exception {
		String sessions = (String) request.getSession().getAttribute("authority");
		if (sessions == null || sessions == "null") {
			return "redirect:/admin/pict_login";
		}
		String authority = (String) request.getSession().getAttribute("authority");
		
		if (authority == null || authority == "null" || authority.equals("") || !authority.equals("jeonjong")) {
			model.addAttribute("message", "해당 메뉴는 전종지도자만 활용 가능한 메뉴입니다.");
			model.addAttribute("retType", ":location");
			model.addAttribute("retUrl", "/admin/main");
			
			return "pict/main/message";
		}
		Date today = new Date();
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy");
		String current_year = dateFormat.format(today);
		pictVO.setSearch_year(current_year);
		
		List<PictVO> life_list = pictService.life_list(pictVO);
		model.addAttribute("resultList", life_list);
		
		model.addAttribute("pictVO", pictVO);
		
		PictVO vo = new PictVO();
		vo = pictService.life_sub_info(pictVO);
		model.addAttribute("vo", vo);
		
		List<PictVO> association_list = pictService.association_list(pictVO);
		model.addAttribute("association_list", association_list);
		
		
		PictVO maxvo = new PictVO();
		maxvo = pictService.life_max_info(pictVO);
		model.addAttribute("maxvo", maxvo);
		
		return "pict/front/life_list";
	}
	
	//평생회원 클릭시 정보 리턴
	@RequestMapping("/life_info")
	@ResponseBody
	public HashMap<String, Object> life_info(@ModelAttribute("pictVO") PictVO pictVO, ModelMap model, HttpServletRequest request, @RequestBody Map<String, Object> param) throws Exception {	
		String memberno = param.get("memberno").toString();
		HashMap<String, Object> map = new HashMap<String, Object>();

		pictVO.setMEMBERNO(memberno);
		pictVO.setLimit(1);
		pictVO.setOffset(0);
		
		List<?> former_list = pictService.life_list(pictVO);
		if(former_list.size() > 0) {
			map.put("list", former_list);
			return map;
		}
		else {
			return map;
		}
	}
	@RequestMapping(value = "/life_excel")
	public void life_excel(@ModelAttribute("searchVO") PictVO pictVO, ModelMap model, HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		pictVO.setLimit(99999);
		pictVO.setOffset(0);
		List<PictVO> attendance_list = pictService.life_list(pictVO);

		HSSFWorkbook objWorkBook = new HSSFWorkbook();
        HSSFSheet objSheet = null;
        HSSFRow objRow = null;
        HSSFCell objCell = null;       //셀 생성

        //제목 폰트
        HSSFFont font = objWorkBook.createFont();
        HSSFFont font_title = objWorkBook.createFont();
        font_title.setFontHeightInPoints((short)11);
        font.setFontHeightInPoints((short)9);
        font.setFontName("맑은고딕");
		int rowIndex = 0;
		
		HSSFCellStyle styleHd_title = objWorkBook.createCellStyle(); // 제목 스타일
		HSSFCellStyle styleHd = objWorkBook.createCellStyle();    //내용 스타일
		
		styleHd_title.setFillForegroundColor(IndexedColors.GREY_25_PERCENT.getIndex());
		styleHd_title.setFillPattern(FillPatternType.SOLID_FOREGROUND);
		
		// 각항목 테두리
		styleHd.setBorderRight(BorderStyle.THIN);
		styleHd.setBorderLeft(BorderStyle.THIN);
		styleHd.setBorderTop(BorderStyle.THIN);
		styleHd.setBorderBottom(BorderStyle.THIN);
		styleHd.setWrapText(true);//자동 줄바꿈

		styleHd_title.setBorderRight(BorderStyle.THIN);
		styleHd_title.setBorderLeft(BorderStyle.THIN);
		styleHd_title.setBorderTop(BorderStyle.THIN);
		styleHd_title.setBorderBottom(BorderStyle.THIN);
					
        objSheet = objWorkBook.createSheet("첫번째 시트");     //워크시트 생성
		
		
		//헤더
        objRow = objSheet.createRow(0);
        objRow.setHeight ((short) 0x150);
        
        objCell = objRow.createCell(0);
        objCell.setCellValue("회원번호");
        objCell.setCellStyle(styleHd_title);

        objCell = objRow.createCell(1);
        objCell.setCellValue("이름");
        objCell.setCellStyle(styleHd_title);
		
        objCell = objRow.createCell(2);
        objCell.setCellValue("생년월일");
        objCell.setCellStyle(styleHd_title);
        
        objCell = objRow.createCell(3);
        objCell.setCellValue("성별");
        objCell.setCellStyle(styleHd_title);
        
        objCell = objRow.createCell(4);
        objCell.setCellValue("연락처");
        objCell.setCellStyle(styleHd_title);
        
        objCell = objRow.createCell(5);
        objCell.setCellValue("지도자/대원");
        objCell.setCellStyle(styleHd_title);
        
        objCell = objRow.createCell(6);
        objCell.setCellValue("평생회원번호");
        objCell.setCellStyle(styleHd_title);
        
        objCell = objRow.createCell(7);
        objCell.setCellValue("평생회원등급");
        objCell.setCellStyle(styleHd_title);
        
        objCell = objRow.createCell(8);
        objCell.setCellValue("평생회원상태");
        objCell.setCellStyle(styleHd_title);
        
        objCell = objRow.createCell(9);
        objCell.setCellValue("평생회원등록일");
        objCell.setCellStyle(styleHd_title);
        
        objCell = objRow.createCell(10);
        objCell.setCellValue("주소지");
        objCell.setCellStyle(styleHd_title);
        
		//바디
        int doublecnt = 0;
		for(int i=0; i<attendance_list.size(); i++) {
        	//순서
			objRow = objSheet.createRow(i+1+doublecnt);
	        objRow.setHeight ((short) 0x150);
	        objSheet.autoSizeColumn(i);
	        
	        //회원번호
	        objCell = objRow.createCell(0);
	        objCell.setCellValue(attendance_list.get(i).getMEMBERNO());
	        objSheet.setColumnWidth(0, (short)0x1000);
	        objCell.setCellStyle(styleHd);
	        
	        //이름
	        objCell = objRow.createCell(1);
	        objCell.setCellValue(attendance_list.get(i).getKNAME());
	        objSheet.setColumnWidth(1, (short)0x1500);
	        objCell.setCellStyle(styleHd);

	        //생년월일
	        objCell = objRow.createCell(2);
	        objCell.setCellValue(attendance_list.get(i).getBIRTHDAY());
	        objSheet.setColumnWidth(2, (short)0x1500);
	        objCell.setCellStyle(styleHd);
	        
	        //성별
	        String SEX ="";
	        if(attendance_list.get(i).getSEX() != null && attendance_list.get(i).getSEX().equals("W")) SEX = "여자";
	        if(attendance_list.get(i).getSEX() != null && attendance_list.get(i).getSEX().equals("M")) SEX = "남자";
	        objCell = objRow.createCell(3);
	        objCell.setCellValue(SEX);
	        objSheet.setColumnWidth(3, (short)0x1000);
	        objCell.setCellStyle(styleHd);
        	
        	//연락처
	        objCell = objRow.createCell(4);
	        objCell.setCellValue(attendance_list.get(i).getMOBILE());
	        objSheet.setColumnWidth(4, (short)0x1500);
	        objCell.setCellStyle(styleHd);
	        
	        //지도자/대원
	        String ranked = "";
	        if(attendance_list.get(i).getTROOPSCOUTY() != null && attendance_list.get(i).getTROOPSCOUTY().equals("Y")) ranked = "대원";
	        	
	        if(attendance_list.get(i).getTROOPLEADERY() != null && attendance_list.get(i).getTROOPLEADERY().equals("Y")) ranked = "지도자";
	        
	        objCell = objRow.createCell(5);
	        objCell.setCellValue(ranked);
	        objSheet.setColumnWidth(5, (short)0x1000);
	        objCell.setCellStyle(styleHd);
	        
	        //평생회원번호
	        objCell = objRow.createCell(6);
	        objCell.setCellValue(attendance_list.get(i).getLIFEMEMBERNO());
	        objSheet.setColumnWidth(6, (short)0x1000);
	        objCell.setCellStyle(styleHd);
	        
	        //평생회원등급
	        String liferank = "";
	        if(attendance_list.get(i).getLIFERANK() != null) {
	        	if(attendance_list.get(i).getLIFERANK().equals("C")) liferank = "일반";
	        	if(attendance_list.get(i).getLIFERANK().equals("S")) liferank = "실버";
	        	if(attendance_list.get(i).getLIFERANK().equals("G")) liferank = "골드";
	        }
	        objCell = objRow.createCell(7);
	        objCell.setCellValue(liferank);
	        objSheet.setColumnWidth(7, (short)0x1000);
	        objCell.setCellStyle(styleHd);
	        
	        //평생회원상태
	        String lifestatus = "";
	        if(attendance_list.get(i).getLIFERANK() != null) {
	        	if(attendance_list.get(i).getLIFESTATUS().equals("1")) lifestatus = "유지";
	        	if(attendance_list.get(i).getLIFESTATUS().equals("2")) lifestatus = "승계";
	        	if(attendance_list.get(i).getLIFESTATUS().equals("3")) lifestatus = "탈퇴";
	        	if(attendance_list.get(i).getLIFESTATUS().equals("4")) lifestatus = "사망";
	        }
	        
	        objCell = objRow.createCell(8);
	        objCell.setCellValue(lifestatus);
	        objSheet.setColumnWidth(8, (short)0x1000);
	        objCell.setCellStyle(styleHd);
	        
	        //평생회원등록일
	        objCell = objRow.createCell(9);
	        objCell.setCellValue(attendance_list.get(i).getLIFEENTERDATE());
	        objSheet.setColumnWidth(9, (short)0x1500);
	        objCell.setCellStyle(styleHd);
	        
	        //주소지
	        objCell = objRow.createCell(10);
	        objCell.setCellValue(attendance_list.get(i).getHADDR());
	        objSheet.setColumnWidth(10, (short)0x4000);
	        objCell.setCellStyle(styleHd);
	        
        }
	        
	      
	       
		String filename = "스카우트통합관리_평생회원목록";
		String header = request.getHeader("User-Agent");
		if(header.contains("Edge") || header.contains("MSIE")) {
			filename = URLEncoder.encode(filename, "UTF-8").replaceAll("//+", "%20");
		}
		else if(header.contains("Chrome") || header.contains("Opera") || header.contains("Firefox")) {
			filename = new String(filename.getBytes("UTF-8"), "ISO-8859-1");
		}
        
        response.setHeader("Content-Disposition", "ATTachment; Filename=" +filename +".xls");

        OutputStream fileOut  = response.getOutputStream();
        objWorkBook.write(fileOut);
        fileOut.close();

        response.getOutputStream().flush();
        response.getOutputStream().close();
	}
	
	//조직 수정 저장
	@RequestMapping("/organ_update")
	@ResponseBody
	public String organ_update(@ModelAttribute("pictVO") PictVO pictVO, ModelMap model, HttpServletRequest request, 
			@RequestBody Map<String, Object> param) throws Exception {	
		try {
			String troopno = param.get("troopno").toString();
			String scoutclscode = param.get("scoutclscode").toString();
			String disptroopno = param.get("disptroopno").toString();
			String regday = param.get("regday").toString();
			String engtroopname = param.get("engtroopname").toString();
			String troopname = param.get("troopname").toString();
			String orgno = param.get("orgno").toString();
			String postcode = param.get("postcode").toString();
			String addr = param.get("addr").toString();
			String telno = param.get("telno").toString();
			String faxno = param.get("faxno").toString();
			String bigo = param.get("bigo").toString();
			
			
			pictVO.setTROOPNO(troopno);
			pictVO.setSCOUTCLSCODE(scoutclscode);
			pictVO.setDISPTROOPNO(disptroopno);
			pictVO.setREGDAY(regday);
			pictVO.setENGTROOPNAME(engtroopname);
			pictVO.setTROOPNAME(troopname);
			pictVO.setORGNO(orgno);
			pictVO.setPOSTCODE(postcode);
			pictVO.setADDR(addr);
			pictVO.setTELNO(telno);
			pictVO.setFAXNO(faxno);
			pictVO.setBIGO(bigo);
		
			pictService.organ_update(pictVO);

			return "Y";
		}
		catch(Exception e) {
			return "N";
		}
	}
	
	//신규 회원 등록
	@RequestMapping("/front/signup")
	public String signup(@ModelAttribute("pictVO") PictVO pictVO, HttpServletRequest request, ModelMap model,
			HttpSession session, RedirectAttributes rttr) throws Exception {
		
		String sessions = (String) request.getSession().getAttribute("authority");
		if (sessions == null || sessions == "null") {
			return "redirect:/admin/pict_login";
		}
		String authority = (String) request.getSession().getAttribute("authority");
		
		if (authority == null || authority == "null" || authority.equals("") || !authority.equals("jeonjong")) {
			model.addAttribute("message", "해당 메뉴는 전종지도자만 활용 가능한 메뉴입니다.");
			model.addAttribute("retType", ":location");
			model.addAttribute("retUrl", "/admin/main");
			
			return "pict/main/message";
		}
		
		List<?> job_list= pictService.job_list(pictVO);
		
		model.addAttribute("job_list", job_list);
		model.addAttribute("pictVO", pictVO);
		return "pict/front/signup";
	}
	
	@RequestMapping("/person_save")
	@ResponseBody
	public String person_save(@ModelAttribute("pictVO") PictVO pictVO, ModelMap model, HttpServletRequest request, @RequestBody Map<String, Object> param) throws Exception {	
		System.out.println(param.get("SEX").toString());
		try {
			
			String MEMBERNO = param.get("MEMBERNO").toString();
			String MEMCLSCODE = param.get("MEMCLSCODE").toString();
			String MEMGRADECODE = param.get("MEMGRADECODE").toString();
			String BIRTHDAY = param.get("BIRTHDAY").toString();
			String KNAME = param.get("KNAME").toString();
			//String ENAME = param.get("ENAME").toString();
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
			String BIGO = param.get("BIGO").toString();
			String LIFEMEMBERY = param.get("LIFEMEMBERY").toString();
			String LIFERANK = param.get("LIFERANK").toString();
			
			String LIFEMEMBERNO = param.get("LIFEMEMBERNO").toString();
			String LIFEENTERDATE = param.get("LIFEENTERDATE").toString();
			String LIFESTATUS = param.get("LIFESTATUS").toString();
			
			String TROOPRANK = param.get("TROOPRANK").toString();
			if(TROOPRANK.equals("0")) {
				pictVO.setTROOPSCOUTY("Y");
			}
			else if(TROOPRANK.equals("1")) {
				pictVO.setTROOPLEADERY("Y");
			}
			
			pictVO.setMEMBERNO(MEMBERNO);
			pictVO.setMEMCLSCODE(MEMCLSCODE);
			pictVO.setMEMGRADECODE(MEMGRADECODE);
			pictVO.setBIRTHDAY(BIRTHDAY);
			pictVO.setKNAME(KNAME);
			//pictVO.setENAME(ENAME);
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
			pictVO.setBIGO(BIGO);
			pictVO.setLIFEMEMBERY(LIFEMEMBERY);
			pictVO.setLIFERANK(LIFERANK);
			pictVO.setLIFEMEMBERNO(LIFEMEMBERNO);
			pictVO.setLIFEENTERDATE(LIFEENTERDATE);
			pictVO.setLIFESTATUS(LIFESTATUS);
			
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
	
	@RequestMapping("/today_task")
	@ResponseBody
	public HashMap<String, Object> today_task(@ModelAttribute("pictVO") PictVO pictVO, ModelMap model, HttpServletRequest request, @RequestBody Map<String, Object> param) throws Exception {	
		String memberno = param.get("memberno").toString();
		String associationcode = param.get("associationcode").toString();
		

		
		HashMap<String, Object> map = new HashMap<String, Object>();
		/*
		List<PictVO> relation_list = pictService.get_relation_person_search(pictVO);
		
		if(relation_list.size() > 0) {
			map.put("list", relation_list);
			return map;
		}
		else {
			return map;
		}
		*/
		return map;
	}
	
	
	//관계
	@RequestMapping("/relation_insert")
	@ResponseBody
	public HashMap<String, Object> relation_insert(@ModelAttribute("pictVO") PictVO pictVO, ModelMap model, HttpServletRequest request, @RequestBody Map<String, Object> param) throws Exception {
		HashMap<String, Object> map = new HashMap<String, Object>();
		try {
			String frommemberno = param.get("frommemberno").toString();
			String tomemberno = param.get("tomemberno").toString();
			String relationcode = param.get("relationcode").toString();
			
			pictVO.setFROMMEMBERNO(frommemberno);
			pictVO.setTOMEMBERNO(tomemberno);
			pictVO.setRELATIONCODE(relationcode);
			
			pictService.relation_insert(pictVO);
			
			pictVO.setMEMBERNO(frommemberno);
			List<PictVO> relation_list = pictService.get_relation_info(pictVO);
			map.put("relation_list", relation_list);
			
			return map;
		}
		catch(Exception e) {
			return map;
		}
	}
	@RequestMapping("/relation_delete")
	@ResponseBody
	public HashMap<String, Object> relation_delete(@ModelAttribute("pictVO") PictVO pictVO, ModelMap model, HttpServletRequest request, @RequestBody Map<String, Object> param) throws Exception {
		HashMap<String, Object> map = new HashMap<String, Object>();
		try {
			String idx = param.get("idx").toString();
			String memberno = param.get("memberno").toString();
			
			pictVO.setIdx(Integer.parseInt(idx));
			pictService.relation_delete(pictVO);
			
			
			pictVO.setMEMBERNO(memberno);
			List<PictVO> relation_list = pictService.get_relation_info(pictVO);
			map.put("relation_list", relation_list);
			return map;
		}
		catch(Exception e) {
			return map;
		}
	}
	
	//지도자연공기입
	@RequestMapping("/leader_save")
	@ResponseBody
	public HashMap<String, Object> leader_save(@ModelAttribute("pictVO") PictVO pictVO, ModelMap model, HttpServletRequest request, @RequestBody Map<String, Object> param) throws Exception {
		HashMap<String, Object> map = new HashMap<String, Object>();
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

			
			pictService.leader_save(pictVO);
			
			String kname = param.get("kname").toString();
			
			pictVO.setKNAME(kname);
			pictVO.setMEMBERNO(memberno);
			 
			pictVO = pictService.get_per_info(pictVO);
			map.put("info", pictVO);
			List<PictVO> leader_list = pictService.leader_list(pictVO);
			if(leader_list.size() > 0) {
				map.put("list", leader_list);
				return map;
			}
			else {
				return map;
			}
			
		}
		catch(Exception e) {
			System.out.println(e);
			return map;
		}
	}
	
	//지도자연공기입
	@RequestMapping("/leader_update")
	@ResponseBody
	public HashMap<String, Object> leader_update(@ModelAttribute("pictVO") PictVO pictVO, ModelMap model, HttpServletRequest request, @RequestBody Map<String, Object> param) throws Exception {
		HashMap<String, Object> map = new HashMap<String, Object>();
		try {
			String startday = param.get("startday").toString();
			String endday = param.get("endday").toString();
			String confirmy = param.get("confirmy").toString();
			String associationcode = param.get("associationcode").toString();
			String parenttroopno = param.get("parenttroopno").toString();
			String troopno = param.get("troopno").toString();
			
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
			
			pictVO.setSTARTDAY(startday);
			pictVO.setENDDAY(endday);
			pictVO.setCONFIRMY(confirmy);
			pictVO.setASSOCIATIONCODE(associationcode);
			pictVO.setPARENTTROOPNO(parenttroopno);
			pictVO.setTROOPNO(troopno);
			
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
			
			
			
			pictService.leader_update(pictVO);
			
			String kname = param.get("kname").toString();
			
			pictVO.setKNAME(kname);
			pictVO.setMEMBERNO(memberno);
			 
			pictVO = pictService.get_per_info(pictVO);
			map.put("info", pictVO);
			List<PictVO> leader_list = pictService.leader_list(pictVO);
			if(leader_list.size() > 0) {
				map.put("list", leader_list);
				return map;
			}
			else {
				return map;
			}
			
		}
		catch(Exception e) {
			System.out.println(e);
			return map;
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
	public HashMap<String, Object> scout_save(@ModelAttribute("pictVO") PictVO pictVO, ModelMap model, HttpServletRequest request, @RequestBody Map<String, Object> param) throws Exception {
		HashMap<String, Object> map = new HashMap<String, Object>();
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
			String kname = param.get("kname").toString();
			
			pictVO.setKNAME(kname);
			pictVO.setMEMBERNO(memberno);
			 
			pictVO = pictService.get_per_info(pictVO);
			map.put("info", pictVO);
			List<PictVO> scout_list = pictService.scout_list(pictVO);
			if(scout_list.size() > 0) {
				map.put("scout_list", scout_list);
				return map;
			}
			else {
				return map;
			}
			
		}
		catch(Exception e) {
			System.out.println(e);
			return map;
		}
	}
	
	//대원 연공기입
	@RequestMapping("/scout_update")
	@ResponseBody
	public HashMap<String, Object> scout_update(@ModelAttribute("pictVO") PictVO pictVO, ModelMap model, HttpServletRequest request, @RequestBody Map<String, Object> param) throws Exception {
		HashMap<String, Object> map = new HashMap<String, Object>();
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
			

			
			pictService.scout_update(pictVO);
			
			String kname = param.get("kname").toString();
			
			pictVO.setKNAME(kname);
			pictVO.setMEMBERNO(memberno);
			 
			pictVO = pictService.get_per_info(pictVO);
			map.put("info", pictVO);
			List<PictVO> scout_list = pictService.scout_list(pictVO);
			if(scout_list.size() > 0) {
				map.put("scout_list", scout_list);
				return map;
			}
			else {
				return map;
			}
			
		}
		catch(Exception e) {
			System.out.println(e);
			return map;
		}
	}
	@RequestMapping("/scout_del")
	@ResponseBody
	public HashMap<String, Object> scout_del(@ModelAttribute("pictVO") PictVO pictVO, ModelMap model, HttpServletRequest request, 
			@RequestBody Map<String, Object> param) throws Exception {
		HashMap<String, Object> map = new HashMap<String, Object>();
		try {
			String idx = param.get("idx").toString();
			String memberno = param.get("memberno").toString();
			String kname = param.get("kname").toString();
			
			pictVO.setIdx(Integer.parseInt(idx));
			pictVO.setMEMBERNO(memberno);
			
			pictService.scout_del(pictVO);
			
			pictVO.setMEMBERNO(memberno);
			pictVO.setKNAME(kname);
			 
			pictVO = pictService.get_per_info(pictVO);
			map.put("info", pictVO);
			
			List<PictVO> scout_list = pictService.scout_list(pictVO);
			

			if(scout_list.size() > 0) {
				map.put("list", scout_list);
				return map;
			}
			else {
				return map;
			}
		}
		catch(Exception e) {
			return map;
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
	
	//메인 대원 단체 저장
	@RequestMapping("/main_leader_org_save")
	@ResponseBody
	public String main_leader_org_save(@ModelAttribute("pictVO") PictVO pictVO, ModelMap model, HttpServletRequest request, 
			@RequestBody Map<String, Object> param) throws Exception {	
		try {
			String memberno = param.get("memberno").toString();
			String leaderorgno = param.get("leaderorgno").toString();
			String leaderorgpositioncode = param.get("leaderorgpositioncode").toString();
			
			
			pictVO.setMEMBERNO(memberno);
			pictVO.setLEADERORGNO(leaderorgno);
			pictVO.setLEADERORGPOSITIONCODE(leaderorgpositioncode);
			
			pictService.main_leader_org_save(pictVO);

			return "Y";
		}
		catch(Exception e) {
			return "N";
		}
	}
	
	
	//관리자 비밀번호 초기화
	@RequestMapping("/admin_reset")
	@ResponseBody
	public String admin_reset(@ModelAttribute("pictVO") PictVO pictVO, ModelMap model, HttpServletRequest request, 
			@RequestBody Map<String, Object> param) throws Exception {	
		try {
			String memberno = param.get("memberno").toString();
			
			String enpassword = encryptPassword(memberno+"1!");
			pictVO.setPassword(enpassword);
			pictVO.setMEMBERNO(memberno);
			
			
			adminService.user_reset(pictVO);
			

			return "Y";
		}
		catch(Exception e) {
			return "N";
		}
	}
	//관리자 비밀번호 변경
	@RequestMapping("/admin_password")
	@ResponseBody
	public String admin_password(@ModelAttribute("pictVO") PictVO pictVO, ModelMap model, HttpServletRequest request, 
			@RequestBody Map<String, Object> param) throws Exception {	
		try {
			String memberno = param.get("memberno").toString();
			String password = param.get("password").toString();
			
			String enpassword = encryptPassword(password);
			pictVO.setPassword(enpassword);
			pictVO.setMEMBERNO(memberno);
			
			
			adminService.admin_password(pictVO);
			

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
			String uploadpath = "/user1/upload_file/scout/";
			//String uploadpath  = "D:\\user1\\upload_file\\default";
            String originFilename = multi.getOriginalFilename();
            String extName = originFilename.substring(originFilename.lastIndexOf("."),originFilename.length());
            long size = multi.getSize();
            String saveFileName = genSaveFileName(extName);
            
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
			System.out.println(e);
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
	
	//회원 등록
	@RequestMapping("/new_person")
	public String new_person(@ModelAttribute("pictVO") PictVO pictVO, HttpServletRequest request, ModelMap model) throws Exception {
		
		pictService.new_person(pictVO);
		System.out.println("다녀왔는가" + pictVO.getMEMBERNO());
		
		model.addAttribute("message", "정상적으로 저장되었습니다.");
		model.addAttribute("retType", ":location");
		model.addAttribute("retUrl", "/admin/front/signup");
		return "pict/main/message";	
	}
	
	//조직통합창에서 단위대 구분 검색
	@RequestMapping("/troopclscode1_search")
	@ResponseBody
	public HashMap<String, Object> troopclscode1_search(@ModelAttribute("pictVO") PictVO pictVO, ModelMap model, HttpServletRequest request, @RequestBody Map<String, Object> param) throws Exception {	
		String troopclscode1 = param.get("troopclscode1").toString();
		HashMap<String, Object> map = new HashMap<String, Object>();
		
		pictVO.setTROOPCLSCODE1(troopclscode1);
		
		
		List<PictVO> troop_list = pictService.troopclscode1_search(pictVO);
		if(troop_list.size() > 0) {
			map.put("list", troop_list);
			return map;
		}
		else {
			return map;
		}
	}
	//조직통합창에서 조회!
	@RequestMapping("/organ_search")
	@ResponseBody
	public HashMap<String, Object> organ_search(@ModelAttribute("pictVO") PictVO pictVO, ModelMap model, HttpServletRequest request, @RequestBody Map<String, Object> param) throws Exception {	
		String associationcode = param.get("associationcode").toString();
		String parenttroopno = param.get("parenttroopno").toString();
		String trooplevelcode = param.get("trooplevelcode").toString();
		String troopclscode1 = param.get("troopclscode1").toString();
		String troopclscode2 = param.get("troopclscode2").toString();
		String parentorgno = param.get("parentorgno").toString();
		String scoutclscode = param.get("scoutclscode").toString();
		String search_type = param.get("search_type").toString();
		String search_text = param.get("search_text").toString();
		String type = param.get("type").toString();
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		
		pictVO.setASSOCIATIONCODE(associationcode);
		pictVO.setPARENTTROOPNO(parenttroopno);
		pictVO.setTROOPLEVELCODE(trooplevelcode);
		pictVO.setTROOPCLSCODE1(troopclscode1);
		pictVO.setTROOPCLSCODE2(troopclscode2);
		pictVO.setPARENTORGNO(parentorgno);
		pictVO.setSCOUTCLSCODE(scoutclscode);
		pictVO.setSearch_type(search_type);
		pictVO.setSearch_text(search_text);
		pictVO.setType(type);
		
		List<PictVO> troop_list = pictService.organ_search(pictVO);
		if(troop_list.size() > 0) {
			map.put("list", troop_list);
			return map;
		}
		else {
			return map;
		}
	}
	//조직엑셀다운로드
	@RequestMapping(value = "/organ_excel")
	public void reservation_excel(@ModelAttribute("searchVO") PictVO pictVO, ModelMap model, HttpServletRequest request, HttpServletResponse response) throws Exception {
		pictVO.setASSOCIATIONCODE(pictVO.getAssociationcode_search());
		pictVO.setPARENTTROOPNO(pictVO.getUnitycode_search());
		pictVO.setTROOPLEVELCODE(pictVO.getTrooplevelcode_search());
		pictVO.setTROOPCLSCODE1(pictVO.getTroopclscode1_search());
		pictVO.setTROOPCLSCODE2(pictVO.getTroopclscode2_search());
		pictVO.setPARENTORGNO(pictVO.getParentorgno_search());
		pictVO.setSCOUTCLSCODE(pictVO.getScoutclscode_search());

		
		List<PictVO> attendance_list = pictService.organ_search(pictVO);
		HSSFWorkbook objWorkBook = new HSSFWorkbook();
        HSSFSheet objSheet = null;
        HSSFRow objRow = null;
        HSSFCell objCell = null;       //셀 생성

        //제목 폰트
        HSSFFont font = objWorkBook.createFont();
        HSSFFont font_title = objWorkBook.createFont();
        font_title.setFontHeightInPoints((short)11);
        font.setFontHeightInPoints((short)9);
        font.setFontName("맑은고딕");
		int rowIndex = 0;
		
		HSSFCellStyle styleHd_title = objWorkBook.createCellStyle(); // 제목 스타일
		HSSFCellStyle styleHd = objWorkBook.createCellStyle();    //내용 스타일
		
		styleHd_title.setFillForegroundColor(IndexedColors.GREY_25_PERCENT.getIndex());
		styleHd_title.setFillPattern(FillPatternType.SOLID_FOREGROUND);
		
		// 각항목 테두리
		styleHd.setBorderRight(BorderStyle.THIN);
		styleHd.setBorderLeft(BorderStyle.THIN);
		styleHd.setBorderTop(BorderStyle.THIN);
		styleHd.setBorderBottom(BorderStyle.THIN);
		styleHd.setWrapText(true);//자동 줄바꿈

		styleHd_title.setBorderRight(BorderStyle.THIN);
		styleHd_title.setBorderLeft(BorderStyle.THIN);
		styleHd_title.setBorderTop(BorderStyle.THIN);
		styleHd_title.setBorderBottom(BorderStyle.THIN);
					
        objSheet = objWorkBook.createSheet("첫번째 시트");     //워크시트 생성
		
		
		//헤더
        objRow = objSheet.createRow(0);
        objRow.setHeight ((short) 0x150);
        
        objCell = objRow.createCell(0);
        objCell.setCellValue("지구연합회");
        objCell.setCellStyle(styleHd_title);

        objCell = objRow.createCell(1);
        objCell.setCellValue("대번호");
        objCell.setCellStyle(styleHd_title);
		
        objCell = objRow.createCell(2);
        objCell.setCellValue("단위대명");
        objCell.setCellStyle(styleHd_title);
        
        objCell = objRow.createCell(3);
        objCell.setCellValue("스카우트구분");
        objCell.setCellStyle(styleHd_title);
        
        objCell = objRow.createCell(4);
        objCell.setCellValue("단위대구분");
        objCell.setCellStyle(styleHd_title);
        
        objCell = objRow.createCell(5);
        objCell.setCellValue("우편번호");
        objCell.setCellStyle(styleHd_title);
        
        objCell = objRow.createCell(6);
        objCell.setCellValue("주소");
        objCell.setCellStyle(styleHd_title);
        
        objCell = objRow.createCell(7);
        objCell.setCellValue("전화번호");
        objCell.setCellStyle(styleHd_title);
        
        objCell = objRow.createCell(8);
        objCell.setCellValue("팩스번호");
        objCell.setCellStyle(styleHd_title);
        
        
		//바디
        int doublecnt = 0;
		for(int i=0; i<attendance_list.size(); i++) {
        	//순서
			objRow = objSheet.createRow(i+1+doublecnt);
	        objRow.setHeight ((short) 0x150);
	        objSheet.autoSizeColumn(i);
	        
	        //지구연합회
	        objCell = objRow.createCell(0);
	        objCell.setCellValue(attendance_list.get(i).getPARENTTROOPNAME());
	        objSheet.setColumnWidth(0, (short)0x1500);
	        objCell.setCellStyle(styleHd);
	        
	        //대번호
	        objCell = objRow.createCell(1);
	        objCell.setCellValue(attendance_list.get(i).getDISPTROOPNO());
	        objSheet.setColumnWidth(1, (short)0x1000);
	        objCell.setCellStyle(styleHd);

	        //단위대명
	        objCell = objRow.createCell(2);
	        objCell.setCellValue(attendance_list.get(i).getTROOPNAME());
	        objSheet.setColumnWidth(2, (short)0x1500);
	        objCell.setCellStyle(styleHd);
	        
	        //스카우트구분
	        objCell = objRow.createCell(3);
	        objCell.setCellValue(attendance_list.get(i).getSCOUTCLSNAME());
	        objSheet.setColumnWidth(3, (short)0x1500);
	        objCell.setCellStyle(styleHd);
	        
        	
        	//단위대구분
	        objCell = objRow.createCell(4);
	        objCell.setCellValue(attendance_list.get(i).getTROOPCLSNAME());
	        objSheet.setColumnWidth(4, (short)0x1200);
	        objCell.setCellStyle(styleHd);
	        
	        //우편번호
	        objCell = objRow.createCell(5);
	        objCell.setCellValue(attendance_list.get(i).getPOSTCODE());
	        objSheet.setColumnWidth(5, (short)0x1200);
	        objCell.setCellStyle(styleHd);
	        
	        //주소
	        objCell = objRow.createCell(6);
	        objCell.setCellValue(attendance_list.get(i).getADDR());
	        objSheet.setColumnWidth(6, (short)0x4500);
	        objCell.setCellStyle(styleHd);
	        
	        //전화번호
	        objCell = objRow.createCell(7);
	        objCell.setCellValue(attendance_list.get(i).getTELNO());
	        objSheet.setColumnWidth(7, (short)0x1000);
	        objCell.setCellStyle(styleHd);
	        
	        //팩스번호
	        objCell = objRow.createCell(8);
	        objCell.setCellValue(attendance_list.get(i).getFAXNO());
	        objSheet.setColumnWidth(8, (short)0x1000);
	        objCell.setCellStyle(styleHd);
	        
	      
        }
	        
	      
	       
		String filename = "조직통합관리_단위대목록";
		String header = request.getHeader("User-Agent");
		if(header.contains("Edge") || header.contains("MSIE")) {
			filename = URLEncoder.encode(filename, "UTF-8").replaceAll("//+", "%20");
		}
		else if(header.contains("Chrome") || header.contains("Opera") || header.contains("Firefox")) {
			filename = new String(filename.getBytes("UTF-8"), "ISO-8859-1");
		}
        
        response.setHeader("Content-Disposition", "ATTachment; Filename=" +filename +".xls");

        OutputStream fileOut  = response.getOutputStream();
        objWorkBook.write(fileOut);
        fileOut.close();

        response.getOutputStream().flush();
        response.getOutputStream().close();
	}
	
	@RequestMapping("/organ_info")
	@ResponseBody
	public HashMap<String, Object> organ_info(@ModelAttribute("pictVO") PictVO pictVO, ModelMap model, HttpServletRequest request, @RequestBody Map<String, Object> param) throws Exception {	
		Date today = new Date();
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy");
		String current_year = dateFormat.format(today);
		
		String troopno = param.get("troopno").toString();
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		pictVO.setTROOPNO(troopno);		
		
		pictVO = pictService.organ_info(pictVO);
		if(pictVO != null) {
			map.put("rst", pictVO);
			pictVO.setSearch_year(current_year);	//재영 여기 연도
			List<PictVO> leader_list = pictService.organ_leader_list(pictVO);
			List<PictVO> scout_list = pictService.organ_scout_list(pictVO);
			map.put("leader_list", leader_list);
			map.put("scout_list", scout_list);
			
			return map;
		}
		else {
			return map;
		}
		
	}
	
	
	//지도자연공 삭제
	@RequestMapping("/leader_del")
	@ResponseBody
	public HashMap<String, Object> leader_del(@ModelAttribute("pictVO") PictVO pictVO, ModelMap model, HttpServletRequest request, 
			@RequestBody Map<String, Object> param) throws Exception {
		HashMap<String, Object> map = new HashMap<String, Object>();
		try {
			String idx = param.get("idx").toString();
			String memberno = param.get("memberno").toString();
			String kname = param.get("kname").toString();
			
			pictVO.setIdx(Integer.parseInt(idx));
			pictVO.setMEMBERNO(memberno);
			
			pictService.leader_del(pictVO);
			
			pictVO.setKNAME(kname);
			pictVO.setMEMBERNO(memberno);
			 
			pictVO = pictService.get_per_info(pictVO);
			map.put("info", pictVO);
			
			List<PictVO> leader_list = pictService.leader_list(pictVO);
			

			if(leader_list.size() > 0) {
				map.put("list", leader_list);
				return map;
			}
			else {
				return map;
			}
		}
		catch(Exception e) {
			return map;
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
			/*
			//지도자일경우
			if(leadery.equals("Y")) {
				
				
				return map;
			}
			//대원의경우
			else{
				
				
				map.put("info", pictVO);
				
				
				return map;
			}
			*/
			List<PictVO> leader_list = pictService.leader_list(pictVO);
			map.put("leader_list", leader_list);
			map.put("info", pictVO);
			List<PictVO> scout_list = pictService.scout_list(pictVO);
			map.put("scout_list", scout_list);
			return map;
			
		}
		else {
			return map;
		}
		
	}
	
	
	//대원일괄등록
	@RequestMapping("/front/scout_whole_register")
	public String scout_whole_register(@ModelAttribute("pictVO") PictVO pictVO, HttpServletRequest request, ModelMap model) throws Exception {
		//여기서 로그인한 지도자의 연맹, 단위대 골라줘야함 혹여나 로그인한 사람이 전종이면 셀렉트 해줄 필요 없고
		String sessions = (String) request.getSession().getAttribute("authority");
		if (sessions == null || sessions == "null") {
			return "redirect:/admin/pict_login";
		}
		String authority = (String) request.getSession().getAttribute("authority");
		System.out.println("이분 권한은?" + authority);

		if ((authority == null || authority == "null" || authority.equals("jeonjong") || authority.equals("")) && (authority == null || authority == "null" || authority.equals("sub_admin") || authority.equals(""))) {
			model.addAttribute("message", "해당 메뉴는 관리지도자 권한 이상만 활용 가능한 메뉴입니다.");
			model.addAttribute("retType", ":location");
			model.addAttribute("retUrl", "/admin/main");
			
			return "pict/main/message";
		}
		String associationcode = (String) request.getSession().getAttribute("associationcode");
		//전종지도자 일경우
		if(authority != null && authority != "null" && authority.equals("jeonjong") && !authority.equals("") ){
			//중앙본부 아니면 자기 연맹것만 확인
			if(!associationcode.equals("200")) {
				pictVO.setASSOCIATIONCODE(associationcode);
			}
			else {
				if(pictVO != null && pictVO.getASSOCIATIONCODE() != null) {
				}
				else {
					pictVO.setASSOCIATIONCODE("");
				}
			}
			
			List<PictVO> trooplevel_list = pictService.trooplevel_list(pictVO);
			List<PictVO> scoutcls_list = pictService.scoutcls_list(pictVO);
			
			model.addAttribute("trooplevel_list", trooplevel_list);
			model.addAttribute("scoutcls_list", scoutcls_list);
			
			
			List<PictVO> association_list = pictService.association_list(pictVO);
			List<PictVO> unity_list = pictService.unity_list(pictVO);
			model.addAttribute("association_list", association_list);
			model.addAttribute("unity_list", unity_list);
			model.addAttribute("associationcode", associationcode);
			model.addAttribute("pictVO", pictVO);
		}
		//단위대 일경우
		else if(authority != null && authority != "null" && authority.equals("sub_admin") && !authority.equals("") ){
			String troopno = (String) request.getSession().getAttribute("troopno");
			model.addAttribute("authority", authority);
			model.addAttribute("troopno", troopno);
			pictVO.setTROOPNO(troopno);
			List<PictVO> troop_list = pictService.login_troop_list2(pictVO);
			String asso = "";
			String troopname = "";
			String disptroopno = "";
			
			for(int i=0; i<troop_list.size(); i++) {
				asso = troop_list.get(i).getASSOCIATIONCODE();
				troopname = troop_list.get(i).getTROOPNAME();
				disptroopno = troop_list.get(i).getDISPTROOPNO();
			}
			model.addAttribute("asso", asso);
			model.addAttribute("troopname", troopname);
			model.addAttribute("disptroopno", disptroopno);
			System.out.println("여기에서 이제 단위대 정보를 보여줘야해");
		}
		else {
			model.addAttribute("message", "비정상적인 접근입니다.");
			model.addAttribute("retType", ":location");
			model.addAttribute("retUrl", "/admin/main");
		}
		
		return "pict/front/register_scout";
	}
	//대등록에서 단위대 검색 모달
	@RequestMapping("/troop_search")
	@ResponseBody
	public HashMap<String, Object> troop_search(@ModelAttribute("pictVO") PictVO pictVO, ModelMap model, HttpServletRequest request, @RequestBody Map<String, Object> param) throws Exception {	
		String associationcode = param.get("associationcode").toString();
		String parenttroopno = param.get("parenttroopno").toString();
		//String troopclscode1 = param.get("troopclscode1").toString();
		//String troopclscode2 = param.get("troopclscode2").toString();
		//String troopname = param.get("troopname").toString();
		String search_type = param.get("search_type").toString();
		String search_text = param.get("search_text").toString();
		HashMap<String, Object> map = new HashMap<String, Object>();
		
		pictVO.setASSOCIATIONCODE(associationcode);
		pictVO.setPARENTTROOPNO(parenttroopno);
		//pictVO.setTROOPCLSCODE1(troopclscode1);
		//pictVO.setTROOPCLSCODE2(troopclscode2);
		pictVO.setSearch_type(search_type);
		pictVO.setSearch_text(search_text);
		
		
		List<PictVO> troop_list = pictService.troop_search(pictVO);
		if(troop_list.size() > 0) {
			map.put("list", troop_list);
			return map;
		}
		else {
			return map;
		}
	}
	//대등록에서 회원등록시 검색
	@RequestMapping("/dae_modal_search")
	@ResponseBody
	public HashMap<String, Object> dae_modal_search(@ModelAttribute("pictVO") PictVO pictVO, ModelMap model, HttpServletRequest request, @RequestBody Map<String, Object> param) throws Exception {	
		String memberno = param.get("memberno").toString();
		String kname = param.get("kname").toString();
		String birthday= param.get("birthday").toString();
		String mobile = param.get("mobile").toString();
		HashMap<String, Object> map = new HashMap<String, Object>();
		
		pictVO.setMEMBERNO(memberno);
		pictVO.setKNAME(kname);
		pictVO.setBIRTHDAY(birthday);
		pictVO.setMOBILE(mobile);
		
		
		List<PictVO> troop_list = pictService.dae_modal_search(pictVO);
		if(troop_list.size() > 0) {
			map.put("list", troop_list);
			return map;
		}
		else {
			return map;
		}
	}
	
	
	//대등록에서 단위대 대원/리스트 작년꺼 가져와
	@RequestMapping("/prev_troop_info")
	@ResponseBody
	public HashMap<String, Object> prev_troop_info(@ModelAttribute("pictVO") PictVO pictVO, ModelMap model, HttpServletRequest request, @RequestBody Map<String, Object> param) throws Exception {	
		Date today = new Date();
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy");
		String current_year = dateFormat.format(today);
		int prev_year = Integer.parseInt(current_year) - 1;
		pictVO.setPre_year(prev_year+"");
		pictVO.setSearch_year(current_year);
		
		String troopno = param.get("troopno").toString();
		HashMap<String, Object> map = new HashMap<String, Object>();		
		pictVO.setTROOPNO(troopno);
		pictVO.setCONFIRMY("Y");
		List<PictVO> prev_leader_list = pictService.prev_leader_list(pictVO);
		if(prev_leader_list.size() > 0) {
			map.put("leader_list", prev_leader_list);
		}
		
		List<PictVO> prev_scout_list = pictService.prev_scout_list(pictVO);
		if(prev_scout_list.size() > 0) {
			map.put("scout_list", prev_scout_list);
			
		}
		return map;
	}
	//대등록에서 연맹별 등록비
	@RequestMapping("/association_price")
	@ResponseBody
	public HashMap<String, Object> association_price(@ModelAttribute("pictVO") PictVO pictVO, ModelMap model, HttpServletRequest request, @RequestBody Map<String, Object> param) throws Exception {	
		Date today = new Date();
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy");
		String current_year = dateFormat.format(today);
		
		
		String associationcode = param.get("associationcode").toString();
		HashMap<String, Object> map = new HashMap<String, Object>();

		pictVO.setASSOCIATIONCODE(associationcode);
		pictVO.setSearch_year(current_year);


		map.put("current_year", current_year);
		pictVO = pictService.association_price(pictVO);
		if(pictVO != null) {
			map.put("rst", pictVO);
		}
		return map;
	}
	//대등록에서 일괄등록
	@RequestMapping("/whole_register_input")
	@ResponseBody
	public HashMap<String, Object> whole_register_input(@ModelAttribute("pictVO") PictVO pictVO, ModelMap model, HttpServletRequest request, @RequestBody List<Map<String, Object>> data) throws Exception {
		HashMap<String, Object> map = new HashMap<String, Object>();
		try {
			Date today = new Date();
			SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy");
			String current_year = dateFormat.format(today);
			
			
			for (Map<String, Object> item : data) {
				System.out.println(item.get("MEMBERNO").toString());
				if(item.get("MEMBERNO").toString() != null && !item.get("MEMBERNO").toString().contains("new")) {
					System.out.println("기존에 있던사람들");
					//공통으로 쓸 부분
					String memberno = item.get("MEMBERNO").toString();
					String troopno = item.get("TROOPNO").toString();
					String startday = current_year + "-01-01";
					String endday = current_year + "-12-31";
					String associationcode = item.get("ASSOCIATIONCODE").toString();
					String parrenttroopno = item.get("PARRENTTROOPNO").toString();
					String payy = "N";
					String confirmy = "N";
					String scoutmagacnt = item.get("SCOUTMAGACNT").toString().equals("Y") ? "1" : "0";
					String scoutmagafee = item.get("maga_price").toString();
					String entryfee = item.get("price").toString();
					String excludecode = item.get("excludecode").toString();
					
					pictVO.setMEMBERNO(memberno);
					pictVO.setTROOPNO(troopno);
					pictVO.setSTARTDAY(startday);
					pictVO.setENDDAY(endday);
					pictVO.setASSOCIATIONCODE(associationcode);
					pictVO.setPARENTTROOPNO(parrenttroopno);
					pictVO.setPAYY(payy);
					pictVO.setCONFIRMY(confirmy);
					pictVO.setSCOUTMAGACNT(scoutmagacnt);
					pictVO.setSCOUTMAGAFEE(scoutmagafee);
					pictVO.setENTRYFEE(entryfee);
					
					pictVO.setFEEEXCLUDECODE(excludecode);
					
					//지도자연공
					if(item.get("type").equals("leader")) {
						String leaderpositioncode1 = item.get("LEADERPOSITIONCODE1").toString();
						String leaderpositioncode2 = item.get("LEADERPOSITIONCODE2").toString();
						String adminy = item.get("ADMINY").toString();

						pictVO.setLEADERPOSITIONCODE1(leaderpositioncode1);
						pictVO.setLEADERPOSITIONCODE2(leaderpositioncode2);
						pictVO.setADMINY(adminy);
						
						
						pictService.leader_whole_register(pictVO);
					}
					//대원연공
					else {
						String scoutclscode = item.get("SCOUTCLSCODE").toString();
						String scoutpositioncode = item.get("SCOUTPOSITIONCODE").toString();
						String scoutyear = item.get("scoutyear").toString();
						
						pictVO.setSCOUTCLSCODE(scoutclscode);
						pictVO.setSCOUTPOSITIONCODE(scoutpositioncode);
						pictVO.setSCOUTSCHOOLYEAR(scoutyear);
						pictService.scout_whole_register(pictVO);

					}
				}
				//신규일때
				else {
					String KNAME = item.get("KNAME").toString();
					String BIRTHDAY = item.get("BIRTHDAY").toString();
					String MOBILE = item.get("MOBILE").toString();
					String TROOPSCOUTY = item.get("type").toString().equals("scout") ? "Y" : "N";
					String TROOPLEADERY = item.get("type").toString().equals("leader") ? "Y" : "N";
					String LIFEMEMBERY = item.get("LIFEMEMBERY").toString();
					String sex = item.get("sex").toString();
					String excludecode = item.get("excludecode").toString();
					String nationcode = item.get("nationcode").toString();
					
					pictVO.setKNAME(KNAME);
					pictVO.setBIRTHDAY(BIRTHDAY);
					pictVO.setMOBILE(MOBILE);
					pictVO.setTROOPSCOUTY(TROOPSCOUTY);
					pictVO.setTROOPLEADERY(TROOPLEADERY);
					pictVO.setLIFEMEMBERY(LIFEMEMBERY);
					pictVO.setMEMCLSCODE("1");
					pictVO.setSEX(sex);
					pictVO.setNationcode(nationcode);
					pictService.new_person(pictVO);
					
					System.out.println("새로운 사람 넣고서 그 멤바NO값!!!!!!!!!" + pictVO.getMEMBERNO());
					
					
					String memberno = pictVO.getMEMBERNO();
					String troopno = item.get("TROOPNO").toString();
					String startday = current_year + "-01-01";
					String endday = current_year + "-12-31";
					String associationcode = item.get("ASSOCIATIONCODE").toString();
					String parrenttroopno = item.get("PARRENTTROOPNO").toString();
					String payy = "N";
					String confirmy = "N";
					String scoutmagacnt = item.get("SCOUTMAGACNT").toString().equals("Y") ? "1" : "0";
					String scoutmagafee = item.get("maga_price").toString();
					String entryfee = item.get("price").toString();
					
					pictVO.setMEMBERNO(memberno);
					pictVO.setTROOPNO(troopno);
					pictVO.setSTARTDAY(startday);
					pictVO.setENDDAY(endday);
					pictVO.setASSOCIATIONCODE(associationcode);
					pictVO.setPARENTTROOPNO(parrenttroopno);
					pictVO.setPAYY(payy);
					pictVO.setCONFIRMY(confirmy);
					pictVO.setSCOUTMAGACNT(scoutmagacnt);
					pictVO.setSCOUTMAGAFEE(scoutmagafee);
					pictVO.setENTRYFEE(entryfee);
					pictVO.setFEEEXCLUDECODE(excludecode);
					
					//지도자연공
					if(item.get("type").equals("leader")) {
						System.out.println("지도자 넣을때 신규");
						String leaderpositioncode1 = item.get("LEADERPOSITIONCODE1").toString();
						String leaderpositioncode2 = item.get("LEADERPOSITIONCODE2").toString();
						String adminy = item.get("ADMINY").toString();

						pictVO.setLEADERPOSITIONCODE1(leaderpositioncode1);
						pictVO.setLEADERPOSITIONCODE2(leaderpositioncode2);
						pictVO.setADMINY(adminy);
						
						
						pictService.leader_whole_register(pictVO);
					}
					//대원연공
					else {
						System.out.println("대원 넣을때 신규");
						String scoutclscode = item.get("SCOUTCLSCODE").toString();
						String scoutpositioncode = item.get("SCOUTPOSITIONCODE").toString();
						String scoutyear = item.get("scoutyear").toString();
						
						pictVO.setSCOUTSCHOOLYEAR(scoutyear);
						pictVO.setSCOUTCLSCODE(scoutclscode);
						pictVO.setSCOUTPOSITIONCODE(scoutpositioncode);
						
						pictService.scout_whole_register(pictVO);

					}
				}
				
				
				
			}
			map.put("result", "Y");
			return map;
		}
		catch (Exception e) {
			System.out.println(e);
			e.printStackTrace();
			System.out.println(e.getMessage());
			map.put("result", "N");
			return map;
		}
		
	}
	
	//대원일괄승인
	@RequestMapping("/front/scout_whole_confirm")
	public String scout_whole_confirm(@ModelAttribute("pictVO") PictVO pictVO, HttpServletRequest request, ModelMap model) throws Exception {
		//여기서 로그인한 지도자의 연맹, 단위대 골라줘야함 혹여나 로그인한 사람이 전종이면 셀렉트 해줄 필요 없고
		String sessions = (String) request.getSession().getAttribute("authority");
		if (sessions == null || sessions == "null") {
			return "redirect:/admin/pict_login";
		}
		String authority = (String) request.getSession().getAttribute("authority");
		
		if (authority == null || authority == "null" || authority.equals("") || !authority.equals("jeonjong")) {
			model.addAttribute("message", "해당 메뉴는 전종지도자만 활용 가능한 메뉴입니다.");
			model.addAttribute("retType", ":location");
			model.addAttribute("retUrl", "/admin/main");
			
			return "pict/main/message";
		}
		
		String associationcode = (String) request.getSession().getAttribute("associationcode");
		//중앙본부 아니면 자기 연맹것만 확인
		if(!associationcode.equals("200")) {
			pictVO.setASSOCIATIONCODE(associationcode);
		}
		else {
			if(pictVO != null && pictVO.getASSOCIATIONCODE() != null) {
			}
			else {
				pictVO.setASSOCIATIONCODE("");
			}
		}
		
		List<PictVO> trooplevel_list = pictService.trooplevel_list(pictVO);
		List<PictVO> scoutcls_list = pictService.scoutcls_list(pictVO);
		
		model.addAttribute("trooplevel_list", trooplevel_list);
		model.addAttribute("scoutcls_list", scoutcls_list);
		
		
		List<PictVO> association_list = pictService.association_list(pictVO);
		List<PictVO> unity_list = pictService.unity_list(pictVO);
		model.addAttribute("association_list", association_list);
		model.addAttribute("unity_list", unity_list);
		
		
		
		//대승인 들어가자마자 지도자, 대원 하나라도 등록된게 있는지 조회해서 리스트 취합
		Date today = new Date();
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy");
		String current_year = dateFormat.format(today);
		pictVO.setSearch_year(current_year+"");
		
		System.out.println("연맹번호 : " + pictVO.getASSOCIATIONCODE());

		System.out.println("연맹번호 로그인 : " + associationcode);
		List<PictVO> leader_organ_list = pictService.leader_organ_list(pictVO);
		
		
		List<PictVO> scout_organ_list = pictService.scout_organ_list(pictVO);
		
		List<PictVO> mergedList = mergeAndRemoveDuplicates(leader_organ_list, scout_organ_list);
		
		mergedList.sort(Comparator.comparing(PictVO::getASSOCIATIONCODE));

		model.addAttribute("mergedList", mergedList);
		
		model.addAttribute("pictVO", pictVO);
		return "pict/front/register_confirm";
	}
	
	
	public static List<PictVO> mergeAndRemoveDuplicates(List<PictVO> leaderList, List<PictVO> scoutList) {
        // Map을 사용해서 ASSOCIATIONCODE와 TROOPNO를 기준으로 합침
        Map<String, PictVO> mergedMap = new HashMap<>();

        // leader_organ_list에서 데이터 처리
        for (PictVO leaderVO : leaderList) {
            String key = leaderVO.getASSOCIATIONCODE() + "-" + leaderVO.getTROOPNO();
            mergedMap.putIfAbsent(key, leaderVO);
        }

        // scout_organ_list에서 데이터 처리
        for (PictVO scoutVO : scoutList) {
            String key = scoutVO.getASSOCIATIONCODE() + "-" + scoutVO.getTROOPNO();
            PictVO existingVO = mergedMap.get(key);
            if (existingVO != null) {
                // 기존 값에 추가 (SCOUTCNT, SCOUTMAGACNT, SCOUTPRICE 합침)
                existingVO.setSCOUTCNT(scoutVO.getSCOUTCNT());
                existingVO.setSCOUTMAGACNT(scoutVO.getSCOUTMAGACNT());
                existingVO.setSCOUTPRICE(scoutVO.getSCOUTPRICE());
            } else {
                // 새로운 ASSOCIATIONCODE와 TROOPNO면 추가
                mergedMap.put(key, scoutVO);
            }
        }

        return new ArrayList<>(mergedMap.values());
    }
	
	//대승인에서의 삭제
	@RequestMapping("/register_delete")
	@ResponseBody
	public HashMap<String, Object> register_delete(@ModelAttribute("pictVO") PictVO pictVO, ModelMap model, HttpServletRequest request, @RequestBody Map<String, Object> param) throws Exception {	
		HashMap<String, Object> map = new HashMap<String, Object>();		
		try {
			
			//지도자 삭제
			String check_list = param.get("leader_list").toString();
			check_list = check_list.replaceAll("[\\[\\]]", "");
			String[] arr = check_list.split(", ");
			for(int i=0; i<arr.length; i++) {
				System.out.println("지도자 연공삭제 해야함");
				System.out.println(arr[i]);
				if(arr[i] != null && arr[i] != "") {
					pictVO.setIdx(Integer.parseInt(arr[i]));
					pictService.register_delete_leader(pictVO);
				}
			}
			
			//대원 삭제
			String check_list2 = param.get("scout_list").toString();
			check_list2 = check_list2.replaceAll("[\\[\\]]", "");
			String[] arr2 = check_list2.split(", ");
			for(int i=0; i<arr2.length; i++) {
				System.out.println("대원 연공삭제 해야함");
				System.out.println(arr2[i]);
				if(arr2[i] != null && arr2[i] != "") {
					pictVO.setIdx(Integer.parseInt(arr2[i]));
					pictService.register_delete_scout(pictVO);
				}
				
			}
			
			
			map.put("result", "Y");
			return map;
		}
		catch(Exception e) {
			e.printStackTrace();
			System.out.println(e.getStackTrace());
			map.put("result", "N");
			return map;
		}
		
	}
	
	//대승인에서 개별승인을 위한 리스트
	@RequestMapping("/get_register_person_list")
	@ResponseBody
	public HashMap<String, Object> get_register_person_list(@ModelAttribute("pictVO") PictVO pictVO, ModelMap model, HttpServletRequest request, @RequestBody Map<String, Object> param) throws Exception {	
		HashMap<String, Object> map = new HashMap<String, Object>();		
		try {
			
			//지도자 리스트
			String check_list = param.get("leader_list").toString();
			check_list = check_list.replaceAll("[\\[\\]]", "");
			check_list = check_list.replaceAll(" ", "");
			pictVO.setCondition(check_list);
			
			List<PictVO> leader_register_list = pictService.leader_register_list(pictVO);
			
			
			//대원 리스트
			String check_list2 = param.get("scout_list").toString();
			check_list2 = check_list2.replaceAll("[\\[\\]]", "");
			check_list2 = check_list2.replaceAll(" ", "");
			pictVO.setCondition(check_list2);
			
			List<PictVO> scout_register_list = pictService.scout_register_list(pictVO);


			map.put("leader_list",leader_register_list);
			map.put("scout_list",scout_register_list);
			return map;
		}
		catch(Exception e) {
			e.printStackTrace();
			System.out.println(e.getStackTrace());
			map.put("result", "N");
			return map;
		}
		
	}
	
	//대승인에서 일괄승인을 위한 리스트
	@RequestMapping("/get_register_troop_list")
	@ResponseBody
	public HashMap<String, Object> get_register_troop_list(@ModelAttribute("pictVO") PictVO pictVO, ModelMap model, HttpServletRequest request, @RequestBody Map<String, Object> param) throws Exception {	
		HashMap<String, Object> map = new HashMap<String, Object>();		
		try {
			Date today = new Date();
			SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy");
			String current_year = dateFormat.format(today);
			pictVO.setSearch_year(current_year+"");
			
			String check_list = param.get("troop_list").toString();
			check_list = check_list.replaceAll("[\\[\\]]", "");
			System.out.println(check_list);
			String[] arr = check_list.split(", ");
			
			
			for(int i=0; i<arr.length; i++) {
				pictVO.setTROOPNO(arr[i]);
				
				pictService.current_leader_list_confirm(pictVO);
				pictService.current_scout_list_confirm(pictVO);

			}
			map.put("result", "Y");
			return map;
		}
		catch(Exception e) {
			e.printStackTrace();
			System.out.println(e.getStackTrace());
			map.put("result", "N");
			return map;
		}
		
	}
	
	//대승인에서 단위대 대원/리스트 당해년도꺼 가져와
	@RequestMapping("/current_troop_info")
	@ResponseBody
	public HashMap<String, Object> current_troop_info(@ModelAttribute("pictVO") PictVO pictVO, ModelMap model, HttpServletRequest request, @RequestBody Map<String, Object> param) throws Exception {	
		HashMap<String, Object> map = new HashMap<String, Object>();	
		try {
			Date today = new Date();
			SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy");
			String current_year = dateFormat.format(today);
			pictVO.setSearch_year(current_year+"");
			
			String troopno = param.get("troopno").toString();
				
			pictVO.setTROOPNO(troopno);
			pictVO.setCONFIRMY("N");
			List<PictVO> prev_leader_list = pictService.current_leader_list(pictVO);
			if(prev_leader_list.size() > 0) {
				System.out.println("지도자가 있어야해");
				map.put("leader_list", prev_leader_list);
			}
			
			List<PictVO> prev_scout_list = pictService.current_scout_list(pictVO);
			if(prev_scout_list.size() > 0) {
				System.out.println("대원이 있어야해");
				map.put("scout_list", prev_scout_list);
				
			}
			return map;
		}
		catch(Exception e) {
			e.printStackTrace();
			return map;
		}
	}
	//대등록에서 일괄승인
	@RequestMapping("/whole_register_confirm")
	@ResponseBody
	public HashMap<String, Object> whole_register_confirm(@ModelAttribute("pictVO") PictVO pictVO, ModelMap model, HttpServletRequest request,  @RequestBody Map<String, Object> param) throws Exception {
		HashMap<String, Object> map = new HashMap<String, Object>();
		try {
			
			String check_list = param.get("leader_list").toString();
			check_list = check_list.replaceAll("[\\[\\]]", "");
			String[] arr = check_list.split(", ");
			
			String check_list2 = param.get("scout_list").toString();
			check_list2 = check_list2.replaceAll("[\\[\\]]", "");
			String[] arr2 = check_list2.split(", ");
			
			//지도자 리스트
			for(int i=0; i<arr.length; i++) {
				pictVO.setIdx(Integer.parseInt(arr[i]));
				pictService.leader_individual_confirm(pictVO);
			}
			
			//대원리스트
			for(int i=0; i<arr2.length; i++) {
				pictVO.setIdx(Integer.parseInt(arr2[i]));
				pictService.scout_individual_confirm(pictVO);
			}
			
			
			map.put("result", "Y");
			
		}
		catch (Exception e) {
			System.out.println(e);
			map.put("result", "N");
		}
		return map;
	}
	
	//연맹별납부액
	@SuppressWarnings("null")
	@RequestMapping("/front/association_price")
	public String association_price(@ModelAttribute("pictVO") PictVO pictVO, HttpServletRequest request, ModelMap model) throws Exception {
		//여기 유학준, 안기혁
		String sessions = (String) request.getSession().getAttribute("authority");
		if (sessions == null || sessions == "null") {
			return "redirect:/admin/pict_login";
		}
		 
		String memberno = (String) request.getSession().getAttribute("id");
		  
		if(!memberno.equals("505162") && !memberno.equals("24397") && !memberno.equals("1123506")) {
			model.addAttribute("message", "해당 메뉴는 중앙본부 조직담당자만 활용 가능한 메뉴입니다.");
			model.addAttribute("retType", ":location");
			model.addAttribute("retUrl", "/admin/main");
			
			return "pict/main/message";
		}
		
		List<PictVO> association_list = pictService.association_list(pictVO);
		model.addAttribute("association_list", association_list);
		
		PictVO vo = new PictVO();
		vo = pictService.price_list(pictVO);
		if(vo == null) {
			model.addAttribute("type", "insert");	
		}
		else {
			model.addAttribute("type", "update");	
		}
		model.addAttribute("vo", vo);
		model.addAttribute("pictVO", pictVO);
		
		return "pict/front/association_price";
	}
	//연맹별납부액 저장
	@RequestMapping("/front/association_price_save")
	public String association_price_save(@ModelAttribute("pictVO") PictVO pictVO, HttpServletRequest request, ModelMap model) throws Exception {
		String associationcode = pictVO.getASSOCIATIONCODE();
		String search_year = pictVO.getSearch_year();
		
		
		if(pictVO.getType().equals("insert")) {
			
			pictService.price_insert(pictVO);
		}
		else {
			
			pictService.price_update(pictVO);
		}
		
		model.addAttribute("search_year", search_year);
		model.addAttribute("associationcode", associationcode);
		model.addAttribute("message", "정상적으로 저장되었습니다.");
		model.addAttribute("retType", ":submit");
		
		model.addAttribute("retUrl", "/admin/front/association_price");
		return "pict/main/message";
	}
	
	
	//관리자 통계
	//대시보드
	@RequestMapping("/front/stats_list")
	public String stats_list(@ModelAttribute("pictVO") PictVO pictVO, HttpServletRequest request, ModelMap model, HttpSession session, RedirectAttributes rttr) throws Exception {
		
		String sessions = (String) request.getSession().getAttribute("authority");
		if (sessions == null || sessions == "null") {
			return "redirect:/admin/pict_login";
		}
		
		Date today = new Date();
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy");
		String current_year = dateFormat.format(today);
		model.addAttribute("current_year", current_year);
		pictVO.setSearch_year(current_year);
		int pre_year = Integer.parseInt(current_year) - 1;
		pictVO.setPre_year(pre_year+"");
		String authority = (String) request.getSession().getAttribute("authority");
		
		if (authority == null || authority == "null" || authority.equals("") || !authority.equals("jeonjong")) {
			model.addAttribute("message", "해당 메뉴는 전종지도자만 활용 가능한 메뉴입니다.");
			model.addAttribute("retType", ":location");
			model.addAttribute("retUrl", "/admin/main");
			
			return "pict/main/message";
		}
		
		
		List<PictVO> scout_stats_list = pictService.scout_stats_list(pictVO);
		List<PictVO> leader_stats_list = pictService.leader_stats_list(pictVO);
		ArrayList arr = new ArrayList();
		for(int i=0; i<leader_stats_list.size(); i++) {
			HashMap<String, Object> map = new HashMap<String, Object>();
			for(int j=0; j<scout_stats_list.size(); j++) {
				if(leader_stats_list.get(i).getGubun().equals(scout_stats_list.get(j).getASSOCIATIONCODE())) {
					map.put("ASSOCIATIONCODE", leader_stats_list.get(i).getGubun());
					
					map.put("current", Integer.parseInt(leader_stats_list.get(i).getLeadercurrent()) + Integer.parseInt(scout_stats_list.get(j).getScoutcurrent()));
					map.put("pre", Integer.parseInt(leader_stats_list.get(i).getLeaderpre()) + Integer.parseInt(scout_stats_list.get(j).getScoutpre()));
					arr.add(map);
				}
			}
			if(leader_stats_list.get(i).getGubun().equals("200")) {
				map.put("ASSOCIATIONCODE", leader_stats_list.get(i).getGubun());
				map.put("current", Integer.parseInt(leader_stats_list.get(i).getLeadercurrent()));
				map.put("pre", Integer.parseInt(leader_stats_list.get(i).getLeaderpre()));
				arr.add(map);
			}
		}
		model.addAttribute("resultList", arr);
		model.addAttribute("pictVO", pictVO);
		return "pict/front/stats_list";
	}
	
	//연맹별등록
	@RequestMapping("/front/stats_scout")
	public String stats_scout(@ModelAttribute("pictVO") PictVO pictVO, HttpServletRequest request, ModelMap model, HttpSession session, RedirectAttributes rttr) throws Exception {
		
		String sessions = (String) request.getSession().getAttribute("authority");
		if (sessions == null || sessions == "null") {
			return "redirect:/admin/pict_login";
		}
		if(pictVO != null && pictVO.getSearch_year() != null) {
			String current_year = pictVO.getSearch_year();
			int pre_year = Integer.parseInt(current_year) - 1;
			
			pictVO.setPre_year(pre_year+"");
		}
		else {
			Date today = new Date();
			SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy");
			String current_year = dateFormat.format(today);
			model.addAttribute("current_year", current_year);
			pictVO.setSearch_year(current_year);
			int pre_year = Integer.parseInt(current_year) - 1;
			pictVO.setPre_year(pre_year+"");
		}
		
		String authority = (String) request.getSession().getAttribute("authority");
		
		if (authority == null || authority == "null" || authority.equals("") || !authority.equals("jeonjong")) {
			model.addAttribute("message", "해당 메뉴는 전종지도자만 활용 가능한 메뉴입니다.");
			model.addAttribute("retType", ":location");
			model.addAttribute("retUrl", "/admin/main");
			
			return "pict/main/message";
		}
		
		//재영 작업
		List<PictVO> scout_stats_list = pictService.stats_scout_page(pictVO);
		model.addAttribute("resultList", scout_stats_list);
		model.addAttribute("pictVO", pictVO);
		return "pict/front/stats_scout";
	}
	
	//연맹별등록(상세 리스트 대원/지도자)
	@RequestMapping("/front/stats_detail_list")
	public String stats_detail_list(@ModelAttribute("pictVO") PictVO pictVO, HttpServletRequest request, ModelMap model, HttpSession session, RedirectAttributes rttr) throws Exception {
		
		String sessions = (String) request.getSession().getAttribute("authority");
		if (sessions == null || sessions == "null") {
			return "redirect:/admin/pict_login";
		}
		if(pictVO != null && pictVO.getSearch_year() != null) {
			String current_year = pictVO.getSearch_year();
			pictVO.setSearch_year(current_year);
		}
		else {
			Date today = new Date();
			SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy");
			String current_year = dateFormat.format(today);
			model.addAttribute("current_year", current_year);
			pictVO.setSearch_year(current_year);
		}
		
		String authority = (String) request.getSession().getAttribute("authority");
		
		if (authority == null || authority == "null" || authority.equals("") || !authority.equals("jeonjong")) {
			model.addAttribute("message", "해당 메뉴는 전종지도자만 활용 가능한 메뉴입니다.");
			model.addAttribute("retType", ":location");
			model.addAttribute("retUrl", "/admin/main");
			
			return "pict/main/message";
		}
		
		//재영 작업
		List<PictVO> scout_stats_list = pictService.stats_detail_list(pictVO);
		model.addAttribute("resultList", scout_stats_list);
		model.addAttribute("pictVO", pictVO);
		
		
		int scout = 0;
		int leader = 0;
		int whole = 0;
		for(int i=0; i<scout_stats_list.size(); i++) {
			if(scout_stats_list.get(i).getType().equals("지도자")) leader++;
			if(scout_stats_list.get(i).getType().equals("대원")) scout++;
		}
		whole = scout + leader;
		
		model.addAttribute("scout", scout);
		model.addAttribute("leader", leader);
		model.addAttribute("whole", whole);
		
		
		return "pict/front/stats_detail_list";
	}
	
	@RequestMapping("/front/stats_detail_excel")
	public void stats_detail_excel(@ModelAttribute("pictVO") PictVO pictVO, HttpServletRequest request, ModelMap model, HttpSession session, RedirectAttributes rttr, HttpServletResponse response) throws Exception {
		

		if(pictVO != null && pictVO.getSearch_year() != null) {
			String current_year = pictVO.getSearch_year();
			pictVO.setSearch_year(current_year);
		}
		else {
			Date today = new Date();
			SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy");
			String current_year = dateFormat.format(today);
			model.addAttribute("current_year", current_year);
			pictVO.setSearch_year(current_year);
		}

		//재영 작업
		List<PictVO> attendance_list = pictService.stats_detail_list(pictVO);
		
		HSSFWorkbook objWorkBook = new HSSFWorkbook();
        HSSFSheet objSheet = null;
        HSSFRow objRow = null;
        HSSFCell objCell = null;       //셀 생성

        //제목 폰트
        HSSFFont font = objWorkBook.createFont();
        HSSFFont font_title = objWorkBook.createFont();
        font_title.setFontHeightInPoints((short)11);
        font.setFontHeightInPoints((short)9);
        font.setFontName("맑은고딕");
		int rowIndex = 0;
		
		HSSFCellStyle styleHd_title = objWorkBook.createCellStyle(); // 제목 스타일
		HSSFCellStyle styleHd = objWorkBook.createCellStyle();    //내용 스타일
		
		styleHd_title.setFillForegroundColor(IndexedColors.GREY_25_PERCENT.getIndex());
		styleHd_title.setFillPattern(FillPatternType.SOLID_FOREGROUND);
		
		// 각항목 테두리
		styleHd.setBorderRight(BorderStyle.THIN);
		styleHd.setBorderLeft(BorderStyle.THIN);
		styleHd.setBorderTop(BorderStyle.THIN);
		styleHd.setBorderBottom(BorderStyle.THIN);
		styleHd.setWrapText(true);//자동 줄바꿈

		styleHd_title.setBorderRight(BorderStyle.THIN);
		styleHd_title.setBorderLeft(BorderStyle.THIN);
		styleHd_title.setBorderTop(BorderStyle.THIN);
		styleHd_title.setBorderBottom(BorderStyle.THIN);
					
        objSheet = objWorkBook.createSheet("첫번째 시트");     //워크시트 생성
		
		
		//헤더
        objRow = objSheet.createRow(0);
        objRow.setHeight ((short) 0x150);
        
        objCell = objRow.createCell(0);
        objCell.setCellValue("지도자/대원");
        objCell.setCellStyle(styleHd_title);

        objCell = objRow.createCell(1);
        objCell.setCellValue("연맹");
        objCell.setCellStyle(styleHd_title);
		
        objCell = objRow.createCell(2);
        objCell.setCellValue("단위대명");
        objCell.setCellStyle(styleHd_title);
        
        objCell = objRow.createCell(3);
        objCell.setCellValue("성명");
        objCell.setCellStyle(styleHd_title);
        
        objCell = objRow.createCell(4);
        objCell.setCellValue("연락처");
        objCell.setCellStyle(styleHd_title);
        
        
        objCell = objRow.createCell(5);
        objCell.setCellValue("생년월일");
        objCell.setCellStyle(styleHd_title);
        
        objCell = objRow.createCell(6);
        objCell.setCellValue("성별");
        objCell.setCellStyle(styleHd_title);
        
		//바디
        int doublecnt = 0;
		for(int i=0; i<attendance_list.size(); i++) {
        	//순서
			objRow = objSheet.createRow(i+1+doublecnt);
	        objRow.setHeight ((short) 0x150);
	        objSheet.autoSizeColumn(i);
	        
	        //회원번호
	        objCell = objRow.createCell(0);
	        objCell.setCellValue(attendance_list.get(i).getType());
	        objSheet.setColumnWidth(0, (short)0x1000);
	        objCell.setCellStyle(styleHd);
	        
	        //회원명
	        objCell = objRow.createCell(1);
	        objCell.setCellValue(attendance_list.get(i).getASSOCIATIONNAME());
	        objSheet.setColumnWidth(1, (short)0x1000);
	        objCell.setCellStyle(styleHd);

	        //생년월일
	        objCell = objRow.createCell(2);
	        objCell.setCellValue(attendance_list.get(i).getTROOPNAME());
	        objSheet.setColumnWidth(2, (short)0x1500);
	        objCell.setCellStyle(styleHd);
	        
	        //대번호
	        objCell = objRow.createCell(3);
	        objCell.setCellValue(attendance_list.get(i).getKNAME());
	        objSheet.setColumnWidth(3, (short)0x1500);
	        objCell.setCellStyle(styleHd);
	        
	        //단위대명
	        objCell = objRow.createCell(4);
	        objCell.setCellValue(attendance_list.get(i).getMOBILE());
	        objSheet.setColumnWidth(4, (short)0x2000);
	        objCell.setCellStyle(styleHd);
	        
	        //회원구분
	        objCell = objRow.createCell(5);
	        objCell.setCellValue(attendance_list.get(i).getBIRTHDAY());
	        objSheet.setColumnWidth(5, (short)0x1500);
	        objCell.setCellStyle(styleHd);
	        
        	
        	//회원등급
	        String sex = "";
	        if(attendance_list.get(i).getSEX() != null) {
		        if(attendance_list.get(i).getSEX().equals("W")) sex = "여";
	    		if(attendance_list.get(i).getSEX().equals("M")) sex = "남";
	        }
	        objCell = objRow.createCell(6);
	        objCell.setCellValue(sex);
	        objSheet.setColumnWidth(6, (short)0x1000);
	        objCell.setCellStyle(styleHd);
	        
        }
	        
	      
	       
		String filename = "통계_연맹별회원목록";
		String header = request.getHeader("User-Agent");
		if(header.contains("Edge") || header.contains("MSIE")) {
			filename = URLEncoder.encode(filename, "UTF-8").replaceAll("//+", "%20");
		}
		else if(header.contains("Chrome") || header.contains("Opera") || header.contains("Firefox")) {
			filename = new String(filename.getBytes("UTF-8"), "ISO-8859-1");
		}
        
        response.setHeader("Content-Disposition", "ATTachment; Filename=" +filename +".xls");

        OutputStream fileOut  = response.getOutputStream();
        objWorkBook.write(fileOut);
        fileOut.close();

        response.getOutputStream().flush();
        response.getOutputStream().close();
	}

	//전년대비비율
	@RequestMapping("/front/stats_rate")
	public String stats_rate(@ModelAttribute("pictVO") PictVO pictVO, HttpServletRequest request, ModelMap model, HttpSession session, RedirectAttributes rttr) throws Exception {
		
		String sessions = (String) request.getSession().getAttribute("authority");
		if (sessions == null || sessions == "null") {
			return "redirect:/admin/pict_login";
		}
		if(pictVO != null && pictVO.getSearch_year() != null) {
			String current_year = pictVO.getSearch_year();
			int pre_year = Integer.parseInt(current_year) - 1;
			
			pictVO.setPre_year(pre_year+"");
		}
		else {
			Date today = new Date();
			SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy");
			String current_year = dateFormat.format(today);
			model.addAttribute("current_year", current_year);
			pictVO.setSearch_year(current_year);
			int pre_year = Integer.parseInt(current_year) - 1;
			pictVO.setPre_year(pre_year+"");
		}
		
		String authority = (String) request.getSession().getAttribute("authority");
		
		if (authority == null || authority == "null" || authority.equals("") || !authority.equals("jeonjong")) {
			model.addAttribute("message", "해당 메뉴는 전종지도자만 활용 가능한 메뉴입니다.");
			model.addAttribute("retType", ":location");
			model.addAttribute("retUrl", "/admin/main");
			
			return "pict/main/message";
		}
		
		//재영 작업
		List<PictVO> scout_stats_list = pictService.stats_rate_page(pictVO);
		
		Collections.sort(scout_stats_list, new Comparator<PictVO>() {
            @Override
            public int compare(PictVO p1, PictVO p2) {
                // '전체 합계'인 경우를 마지막으로 정렬
                if ("전체 합계".equals(p1.getASSOCIATIONCODE()) && !"전체 합계".equals(p2.getASSOCIATIONCODE())) {
                    return 1; // p1을 뒤로
                } else if (!"전체 합계".equals(p1.getASSOCIATIONCODE()) && "전체 합계".equals(p2.getASSOCIATIONCODE())) {
                    return -1; // p2를 뒤로
                } else {
                    // 그 외의 경우에는 ASSOCIATIONCODE 기준으로 오름차순 정렬
                    return p1.getASSOCIATIONCODE().compareTo(p2.getASSOCIATIONCODE());
                }
            }
        });
		model.addAttribute("resultList", scout_stats_list);
		model.addAttribute("pictVO", pictVO);
		return "pict/front/stats_rate";
	}
	//육성단체
	@RequestMapping("/front/stats_organ")
	public String stats_organ(@ModelAttribute("pictVO") PictVO pictVO, HttpServletRequest request, ModelMap model, HttpSession session, RedirectAttributes rttr) throws Exception {
		
		String sessions = (String) request.getSession().getAttribute("authority");
		if (sessions == null || sessions == "null") {
			return "redirect:/admin/pict_login";
		}
		if(pictVO != null && pictVO.getSearch_year() != null) {
			String current_year = pictVO.getSearch_year();
			int pre_year = Integer.parseInt(current_year) - 1;
			
			pictVO.setPre_year(pre_year+"");
		}
		else {
			Date today = new Date();
			SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy");
			String current_year = dateFormat.format(today);
			model.addAttribute("current_year", current_year);
			pictVO.setSearch_year(current_year);
			int pre_year = Integer.parseInt(current_year) - 1;
			pictVO.setPre_year(pre_year+"");
		}
		
		String authority = (String) request.getSession().getAttribute("authority");
		
		if (authority == null || authority == "null" || authority.equals("") || !authority.equals("jeonjong")) {
			model.addAttribute("message", "해당 메뉴는 전종지도자만 활용 가능한 메뉴입니다.");
			model.addAttribute("retType", ":location");
			model.addAttribute("retUrl", "/admin/main");
			return "pict/main/message";
		}
		
		//재영 작업
		List<PictVO> organ_list = pictService.stats_organ_page(pictVO);
		HashMap<String, Object> currentMap = null; // 현재 코드에 대한 맵
		
		ArrayList<HashMap<String, Object>> arr = new ArrayList<>();
		for (PictVO pict : organ_list) {
            String associationCode = pict.getASSOCIATIONCODE(); // associationcode
            String level = pict.getLevels(); // level
            String troopCount = pict.getTroopcount(); // troopcount

            if (currentMap == null || !currentMap.get("ASSOCIATIONCODE").equals(associationCode)) {
                currentMap = new HashMap<>();
                currentMap.put("ASSOCIATIONCODE", associationCode); 
                arr.add(currentMap);
            }
            currentMap.put(level, troopCount);
		}
		
		
		HashMap<String, Integer> totals = new HashMap<>();

        // arr 리스트를 반복하면서 합계 계산
		for (HashMap<String, Object> map : arr) { // 여기에서 오류 발생
            for (Map.Entry<String, Object> entry : map.entrySet()) {
                String key = entry.getKey();
                // ASSOCIATIONCODE는 무시
                if (!key.equals("ASSOCIATIONCODE")) {
                    Integer value = Integer.parseInt((String) entry.getValue());
                    totals.put(key, totals.getOrDefault(key, 0) + value);
                }
            }
        }

        // 결과 출력
		HashMap<String, Object> totalMap = new HashMap<>();
        totalMap.put("ASSOCIATIONCODE", "전체 합계"); // 혹은 다른 키로 설정 가능
        totalMap.putAll(totals); // 합계 추가
        arr.add(totalMap); // arr에 추가

		model.addAttribute("resultList", arr);
		model.addAttribute("pictVO", pictVO);
		return "pict/front/stats_organ";
	}
	//연맹별지도자
	//지도자
	@RequestMapping("/front/stats_leader")
	public String stats_leader(@ModelAttribute("pictVO") PictVO pictVO, HttpServletRequest request, ModelMap model, HttpSession session, RedirectAttributes rttr) throws Exception {
		
		String sessions = (String) request.getSession().getAttribute("authority");
		if (sessions == null || sessions == "null") {
			return "redirect:/admin/pict_login";
		}
		
		if(pictVO != null && pictVO.getSearch_year() != null) {
			String current_year = pictVO.getSearch_year();
			int pre_year = Integer.parseInt(current_year) - 1;
			
			pictVO.setPre_year(pre_year+"");
		}
		else {
			Date today = new Date();
			SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy");
			String current_year = dateFormat.format(today);
			model.addAttribute("current_year", current_year);
			pictVO.setSearch_year(current_year);
			int pre_year = Integer.parseInt(current_year) - 1;
			pictVO.setPre_year(pre_year+"");
		}
		
		
		
		String authority = (String) request.getSession().getAttribute("authority");
		
		if (authority == null || authority == "null" || authority.equals("") || !authority.equals("jeonjong")) {
			model.addAttribute("message", "해당 메뉴는 전종지도자만 활용 가능한 메뉴입니다.");
			model.addAttribute("retType", ":location");
			model.addAttribute("retUrl", "/admin/main");
			
			return "pict/main/message";
		}
		
		List<PictVO> scout_stats_list = pictService.stats_leader_page(pictVO);
		System.out.println(scout_stats_list.get(1).getRegisterconfirm());
		List<PictVO> scout_stats_list2 = new ArrayList<PictVO>();
		for(int i=0; i<scout_stats_list.size(); i++) {
			if(scout_stats_list.get(i).getASSOCIATIONCODE().equals("200") || scout_stats_list.get(i).getASSOCIATIONCODE().equals("전체 합계")) {
				scout_stats_list2.add(scout_stats_list.get(i));
				scout_stats_list.remove(i);
			}
		}
		scout_stats_list.addAll(scout_stats_list2);
		System.out.println(scout_stats_list.get(1).getRegisterconfirm());
		
		model.addAttribute("resultList", scout_stats_list);
		model.addAttribute("pictVO", pictVO);
		return "pict/front/stats_leader";
	}
	
	//홈페이지관리
	//게시글 리스트
	@RequestMapping("/front/board_list")
	public String board_list(@ModelAttribute("pictVO") PictVO pictVO, HttpServletRequest request, ModelMap model) throws Exception {
		
		String sessions = (String) request.getSession().getAttribute("authority");
		if (sessions == null || sessions == "null") {
			return "redirect:/admin/pict_login";
		}
		String authority = (String) request.getSession().getAttribute("authority");
		System.out.println(authority);
		if (authority == null || authority == "null" || authority.equals("") || !authority.equals("jeonjong")) {
			model.addAttribute("message", "해당 메뉴는 전종지도자만 활용 가능한 메뉴입니다.");
			model.addAttribute("retType", ":location");
			model.addAttribute("retUrl", "/admin/main");
			
			return "pict/main/message";
		}
		String associationcode = (String) request.getSession().getAttribute("associationcode");
		System.out.println(associationcode);
		if (authority == null || authority == "null" || authority.equals("") || !authority.equals("jeonjong")) {
			model.addAttribute("message", "해당 메뉴는 전종지도자만 활용 가능한 메뉴입니다.");
			model.addAttribute("retType", ":location");
			model.addAttribute("retUrl", "/admin/main");
			
			return "pict/main/message";
		}
		
		if(!associationcode.equals("200")) {
			model.addAttribute("message", "해당 메뉴는 중앙본부 전종지도자만 활용 가능한 메뉴입니다.");
			model.addAttribute("retType", ":location");
			model.addAttribute("retUrl", "/admin/main");
			
			return "pict/main/message";
		}
		
		pictVO.setASSOCIATIONCODE("200");
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
		
		
		return "pict/front/board_list";
	}
	//게시글 폼
	@RequestMapping("/front/board_form")
	public String board_form(@ModelAttribute("pictVO") PictVO pictVO, HttpServletRequest request, ModelMap model) throws Exception {
		String sessions = (String) request.getSession().getAttribute("authority");
		if (sessions == null || sessions == "null") {
			return "redirect:/admin/pict_login";
		}
		if(pictVO != null && pictVO.getBRDCTSNO() != null) {
			//수정
			pictVO = pictService.board_list_one(pictVO);
			pictVO.setSaveType("update");
			
		}
		else {
			pictVO.setSaveType("insert");
		}
		model.addAttribute("pictVO", pictVO);
		return "pict/front/board_form";
	}
	@RequestMapping(value = "/front/board_delete")
	public String board_delete(@ModelAttribute("searchVO") PictVO pictVO, ModelMap model, HttpServletRequest request) throws Exception {
		
		pictService.board_delete(pictVO);
		
		model.addAttribute("message", "정상적으로 삭제되었습니다.");
		model.addAttribute("retType", ":location");
		model.addAttribute("retUrl", "/admin/front/board_list");
		return "pict/main/message";
		
	}
	
	@RequestMapping(value = "/front/board_save", method = RequestMethod.POST)
	public String board_save(@ModelAttribute("searchVO") PictVO pictVO, ModelMap model, MultipartHttpServletRequest request,
			@RequestParam("file1root") MultipartFile attach_file1,
			@RequestParam("file2root") MultipartFile attach_file2,
			@RequestParam("file3root") MultipartFile attach_file3,
			@RequestParam("file4root") MultipartFile attach_file4,
			@RequestParam("file5root") MultipartFile attach_file5) throws Exception {
		
		String sessions = (String) request.getSession().getAttribute("authority");
		if (sessions == null || sessions == "null") {
			return "redirect:/admin/pict_login";
		}
		String file_dir = "/user1/upload_file/scout/";
		
		
        if(attach_file1.getSize() != 0) {
			String uploadPath = fileUpload(request, attach_file1, (String)request.getSession().getAttribute("id"), pictVO.getBRDNO());
			String filepath = file_dir + pictVO.getBRDNO() + "/";
			String filename = uploadPath.split("#####")[1];
			pictVO.setFile1(filepath+filename);
		}
        if(attach_file2.getSize() != 0) {
			String uploadPath = fileUpload(request, attach_file2, (String)request.getSession().getAttribute("id"), pictVO.getBRDNO());
			String filepath = file_dir + pictVO.getBRDNO() + "/";
			String filename = uploadPath.split("#####")[1];
			pictVO.setFile2(filepath+filename);
		}
        if(attach_file3.getSize() != 0) {
			String uploadPath = fileUpload(request, attach_file3, (String)request.getSession().getAttribute("id"), pictVO.getBRDNO());
			String filepath = file_dir + pictVO.getBRDNO() + "/";
			String filename = uploadPath.split("#####")[1];
			pictVO.setFile3(filepath+filename);
		}
        if(attach_file4.getSize() != 0) {
			String uploadPath = fileUpload(request, attach_file4, (String)request.getSession().getAttribute("id"), pictVO.getBRDNO());
			String filepath = file_dir + pictVO.getBRDNO() + "/";
			String filename = uploadPath.split("#####")[1];
			pictVO.setFile4(filepath+filename);
		}
        if(attach_file5.getSize() != 0) {
			String uploadPath = fileUpload(request, attach_file5, (String)request.getSession().getAttribute("id"), pictVO.getBRDNO());
			String filepath = file_dir + pictVO.getBRDNO() + "/";
			String filename = uploadPath.split("#####")[1];
			pictVO.setFile5(filepath+filename);
		}
        if(pictVO.getSaveType() != null && pictVO.getSaveType().equals("update")) {
			pictService.board_update(pictVO);
			model.addAttribute("message", "정상적으로 수정되었습니다.");
			model.addAttribute("retType", ":location");
			model.addAttribute("retUrl", "/admin/front/board_list?BRDNO="+pictVO.getBRDNO());
			return "pict/main/message";
		}
		else {
			pictVO.setRegister(request.getSession().getAttribute("name").toString());
			pictService.board_insert(pictVO);
			model.addAttribute("message", "정상적으로 저장되었습니다.");
			model.addAttribute("retType", ":location");
			model.addAttribute("retUrl", "/admin/front/board_list");
			return "pict/main/message";	
		}
		
		
		
	}
	@RequestMapping(value = "/front/file_delete")
	public String file_delete(@ModelAttribute("searchVO") PictVO pictVO, ModelMap model, HttpServletRequest request) throws Exception {
		
		
		pictService.file_delete(pictVO);
		
		model.addAttribute("message", "정상적으로 삭제되었습니다.");
		model.addAttribute("retType", ":location");
		model.addAttribute("retUrl", "/admin/front/board_form?BRDCTSNO="+pictVO.getBRDCTSNO());
		return "pict/main/message";
	}
	
	
	//연맹별게시글 리스트
	@RequestMapping("/front/board_list_sub")
	public String board_list_sub(@ModelAttribute("pictVO") PictVO pictVO, HttpServletRequest request, ModelMap model) throws Exception {
		String sessions = (String) request.getSession().getAttribute("authority");
		if (sessions == null || sessions == "null") {
			return "redirect:/admin/pict_login";
		}
		String authority = (String) request.getSession().getAttribute("authority");
		
		if (authority == null || authority == "null" || authority.equals("") || !authority.equals("jeonjong")) {
			model.addAttribute("message", "해당 메뉴는 전종지도자만 활용 가능한 메뉴입니다.");
			model.addAttribute("retType", ":location");
			model.addAttribute("retUrl", "/admin/main");
			
			return "pict/main/message";
		}
		String associationcode = (String) request.getSession().getAttribute("associationcode");
		
		//중앙본부 아니면 자기 연맹것만 확인
		if(!associationcode.equals("200")) {
			
			pictVO.setASSOCIATIONCODE(associationcode);
		}
		else {
			if(pictVO != null && pictVO.getASSOCIATIONCODE() != null) {
				
			}
			else {
				pictVO.setASSOCIATIONCODE("");
			}
		}
		
		int limitNumber = 20;
		pictVO.setLimit(limitNumber);
		
		Integer pageNum = pictVO.getPageNumber();
		
		if(pageNum == 0) {
			pictVO.setPageNumber(1);
			pageNum = 1;
		}

		int startNum = (pageNum - 1) * limitNumber;
		pictVO.setStartNumber(startNum);
		
		pictVO.setType("sub");
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
		
		
		model.addAttribute("pictVO", pictVO);
		return "pict/front/board_list_sub";
	}
	//게시글 폼
	@RequestMapping("/front/board_form_sub")
	public String board_form_sub(@ModelAttribute("pictVO") PictVO pictVO, HttpServletRequest request, ModelMap model) throws Exception {
		String sessions = (String) request.getSession().getAttribute("authority");
		if (sessions == null || sessions == "null") {
			return "redirect:/admin/pict_login";
		}
		String associationcode = (String) request.getSession().getAttribute("associationcode");
		
		
		
		//중앙본부 아니면 자기 연맹것만 확인
		if(!associationcode.equals("200")) {
			
			pictVO.setASSOCIATIONCODE(associationcode);
		}
		else {
			if(pictVO != null && pictVO.getASSOCIATIONCODE() != null) {
				
			}
			else {
				pictVO.setASSOCIATIONCODE("");
			}
		}
		if(pictVO != null && pictVO.getBRDCTSNO() != null) {
			//수정
			pictVO = pictService.board_list_one(pictVO);
			pictVO.setSaveType("update");
			
		}
		else {
			pictVO.setSaveType("insert");
		}
		model.addAttribute("pictVO", pictVO);
		return "pict/front/board_form_sub";
	}
	@RequestMapping(value = "/front/board_delete_sub")
	public String board_delete_sub(@ModelAttribute("searchVO") PictVO pictVO, ModelMap model, HttpServletRequest request) throws Exception {
		
		pictService.board_delete(pictVO);
		
		model.addAttribute("message", "정상적으로 삭제되었습니다.");
		model.addAttribute("retType", ":location");
		model.addAttribute("retUrl", "/admin/front/board_list_sub");
		return "pict/main/message";
		
	}
	
	@RequestMapping(value = "/front/board_save_sub", method = RequestMethod.POST)
	public String board_save_sub(@ModelAttribute("searchVO") PictVO pictVO, ModelMap model, MultipartHttpServletRequest request,
			@RequestParam("file1root") MultipartFile attach_file1,
			@RequestParam("file2root") MultipartFile attach_file2,
			@RequestParam("file3root") MultipartFile attach_file3,
			@RequestParam("file4root") MultipartFile attach_file4,
			@RequestParam("file5root") MultipartFile attach_file5) throws Exception {
		
		String sessions = (String) request.getSession().getAttribute("authority");
		if (sessions == null || sessions == "null") {
			return "redirect:/admin/pict_login";
		}
		String file_dir = "/user1/upload_file/scout/";
		
		
        if(attach_file1.getSize() != 0) {
			String uploadPath = fileUpload(request, attach_file1, (String)request.getSession().getAttribute("id"), pictVO.getBRDNO());
			String filepath = file_dir + pictVO.getBRDNO() + "/";
			String filename = uploadPath.split("#####")[1];
			pictVO.setFile1(filepath+filename);
		}
        if(attach_file2.getSize() != 0) {
			String uploadPath = fileUpload(request, attach_file2, (String)request.getSession().getAttribute("id"), pictVO.getBRDNO());
			String filepath = file_dir + pictVO.getBRDNO() + "/";
			String filename = uploadPath.split("#####")[1];
			pictVO.setFile2(filepath+filename);
		}
        if(attach_file3.getSize() != 0) {
			String uploadPath = fileUpload(request, attach_file3, (String)request.getSession().getAttribute("id"), pictVO.getBRDNO());
			String filepath = file_dir + pictVO.getBRDNO() + "/";
			String filename = uploadPath.split("#####")[1];
			pictVO.setFile3(filepath+filename);
		}
        if(attach_file4.getSize() != 0) {
			String uploadPath = fileUpload(request, attach_file4, (String)request.getSession().getAttribute("id"), pictVO.getBRDNO());
			String filepath = file_dir + pictVO.getBRDNO() + "/";
			String filename = uploadPath.split("#####")[1];
			pictVO.setFile4(filepath+filename);
		}
        if(attach_file5.getSize() != 0) {
			String uploadPath = fileUpload(request, attach_file5, (String)request.getSession().getAttribute("id"), pictVO.getBRDNO());
			String filepath = file_dir + pictVO.getBRDNO() + "/";
			String filename = uploadPath.split("#####")[1];
			pictVO.setFile5(filepath+filename);
		}
        if(pictVO.getSaveType() != null && pictVO.getSaveType().equals("update")) {
			pictService.board_update(pictVO);
			model.addAttribute("message", "정상적으로 수정되었습니다.");
			model.addAttribute("retType", ":location");
			model.addAttribute("retUrl", "/admin/front/board_list_sub?BRDNO="+pictVO.getBRDNO());
			return "pict/main/message";
		}
		else {
			pictVO.setRegister(request.getSession().getAttribute("name").toString());
			pictService.board_insert(pictVO);
			model.addAttribute("message", "정상적으로 저장되었습니다.");
			model.addAttribute("retType", ":location");
			model.addAttribute("retUrl", "/admin/front/board_list_sub");
			return "pict/main/message";	
		}
		
		
		
	}
	@RequestMapping(value = "/front/file_delete_sub")
	public String file_delete_sub(@ModelAttribute("searchVO") PictVO pictVO, ModelMap model, HttpServletRequest request) throws Exception {
	
		pictService.file_delete(pictVO);
		
		model.addAttribute("message", "정상적으로 삭제되었습니다.");
		model.addAttribute("retType", ":location");
		model.addAttribute("retUrl", "/admin/front/board_form_sub?BRDCTSNO="+pictVO.getBRDCTSNO());
		return "pict/main/message";
	}
	
	//예약 리스트
	@RequestMapping("/front/reservation_list")
	public String reservation_list(@ModelAttribute("pictVO") PictVO pictVO, HttpServletRequest request, ModelMap model) throws Exception {
		String sessions = (String) request.getSession().getAttribute("authority");
		if (sessions == null || sessions == "null") {
			return "redirect:/admin/pict_login";
		}
		String associationcode = (String) request.getSession().getAttribute("associationcode");
		String authority = (String) request.getSession().getAttribute("authority");
		
		if (authority == null || authority == "null" || authority.equals("") || !authority.equals("jeonjong")) {
			model.addAttribute("message", "해당 메뉴는 전종지도자만 활용 가능한 메뉴입니다.");
			model.addAttribute("retType", ":location");
			model.addAttribute("retUrl", "/admin/main");
			
			return "pict/main/message";
		}
		if(!associationcode.equals("200")) {
			model.addAttribute("message", "해당 메뉴는 중앙본부 전종지도자만 활용 가능한 메뉴입니다.");
			model.addAttribute("retType", ":location");
			model.addAttribute("retUrl", "/admin/main");
			
			return "pict/main/message";
		}
		int limitNumber = 20;
		pictVO.setLimit(limitNumber);
		
		Integer pageNum = pictVO.getPageNumber();
		
		if(pageNum == 0) {
			pictVO.setPageNumber(1);
			pageNum = 1;
		}

		int startNum = (pageNum - 1) * limitNumber;
		pictVO.setStartNumber(startNum);
		
		Integer totalCnt = pictService.reservation_list_cnt(pictVO);
		
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
		
		
		List<PictVO> board_list = pictService.reservation_list(pictVO);
		model.addAttribute("board_list", board_list);
		model.addAttribute("board_cnt", totalCnt);
		
		
		return "pict/front/reservation_list";
	}
	
	//예약 상태값 변경
	@RequestMapping(value = "/front/reservation_cng")
	public String reservation_cng(@ModelAttribute("searchVO") PictVO pictVO, ModelMap model, HttpServletRequest request) throws Exception {
	
		pictService.reservation_cng(pictVO);
		
		model.addAttribute("message", "정상적으로 변경되었습니다.");
		model.addAttribute("retType", ":location");
		model.addAttribute("retUrl", "/admin/front/reservation_list");
		return "pict/main/message";
	}
	
	//지역가입안내
	@RequestMapping("/front/local_list")
	public String local_list(@ModelAttribute("pictVO") PictVO pictVO, HttpServletRequest request, ModelMap model) throws Exception {
		String sessions = (String) request.getSession().getAttribute("authority");
		if (sessions == null || sessions == "null") {
			return "redirect:/admin/pict_login";
		}
		String authority = (String) request.getSession().getAttribute("authority");
		
		if (authority == null || authority == "null" || authority.equals("") || !authority.equals("jeonjong")) {
			model.addAttribute("message", "해당 메뉴는 전종지도자만 활용 가능한 메뉴입니다.");
			model.addAttribute("retType", ":location");
			model.addAttribute("retUrl", "/admin/main");
			
			return "pict/main/message";
		}
		
		String associationcode = (String) request.getSession().getAttribute("associationcode");
		//중앙본부 아니면 자기 연맹것만 확인
		if(!associationcode.equals("200")) {
			pictVO.setSearch_associationcode(associationcode);
		}
		else {
			if(pictVO != null && pictVO.getSearch_associationcode() != null) {
			}
			else {
				pictVO.setSearch_associationcode("");
			}
		}
		
		int limitNumber = 20;
		pictVO.setLimit(limitNumber);
		
		Integer pageNum = pictVO.getPageNumber();
		
		if(pageNum == 0) {
			pictVO.setPageNumber(1);
			pageNum = 1;
		}

		int startNum = (pageNum - 1) * limitNumber;
		pictVO.setStartNumber(startNum);
		
		Integer totalCnt = pictService.local_list_cnt(pictVO);
		
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
		
		
		List<PictVO> board_list = pictService.local_list(pictVO);
		model.addAttribute("board_list", board_list);
		model.addAttribute("board_cnt", totalCnt);
		
		
		return "pict/front/local_list";
	}
	
	//지역가입 상태변경
	@RequestMapping(value = "/front/local_cng")
	public String local_cng(@ModelAttribute("searchVO") PictVO pictVO, ModelMap model, HttpServletRequest request) throws Exception {
	
		pictService.local_cng(pictVO);
		
		model.addAttribute("message", "정상적으로 변경되었습니다.");
		model.addAttribute("retType", ":location");
		model.addAttribute("retUrl", "/admin/front/local_list");
		return "pict/main/message";
	}
	
	//게시물 카테고리
	//대원구성
	@RequestMapping("/front/stats_continue")
	public String stats_continue(@ModelAttribute("pictVO") PictVO pictVO, HttpServletRequest request, ModelMap model, HttpSession session, RedirectAttributes rttr) throws Exception {
		
		String sessions = (String) request.getSession().getAttribute("authority");
		if (sessions == null || sessions == "null") {
			return "redirect:/admin/pict_login";
		}
		if(pictVO != null && pictVO.getSearch_year() != null) {
			String current_year = pictVO.getSearch_year();
			int pre_year = Integer.parseInt(current_year) - 1;
			
			pictVO.setPre_year(pre_year+"");
		}
		else {
			Date today = new Date();
			SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy");
			String current_year = dateFormat.format(today);
			model.addAttribute("current_year", current_year);
			pictVO.setSearch_year(current_year);
			int pre_year = Integer.parseInt(current_year) - 1;
			pictVO.setPre_year(pre_year+"");
		}
		
		String authority = (String) request.getSession().getAttribute("authority");
		
		if (authority == null || authority == "null" || authority.equals("") || !authority.equals("jeonjong")) {
			model.addAttribute("message", "해당 메뉴는 전종지도자만 활용 가능한 메뉴입니다.");
			model.addAttribute("retType", ":location");
			model.addAttribute("retUrl", "/admin/main");
			
			return "pict/main/message";
		}
		
		//재영 작업
		List<PictVO> scout_stats_list = pictService.stats_continue_page(pictVO);
		model.addAttribute("resultList", scout_stats_list);
		model.addAttribute("pictVO", pictVO);
		return "pict/front/stats_continue";
	}
	
	@RequestMapping("/get_board_category")
	@ResponseBody
	public HashMap<String, Object> get_board_category(@ModelAttribute("pictVO") PictVO pictVO, ModelMap model, HttpServletRequest request, @RequestBody Map<String, Object> param) throws Exception {	

		
		String associationcode = param.get("associationcode").toString();
		HashMap<String, Object> map = new HashMap<String, Object>();		
		pictVO.setASSOCIATIONCODE(associationcode);
		
		List<PictVO> board_list = pictService.board_category_list(pictVO);
		if(board_list.size() > 0) {
			map.put("list", board_list);
		}
		

		return map;
	}
	
	//팝업관리
	//예약 리스트
	@RequestMapping("/front/popup_list")
	public String popup_list(@ModelAttribute("pictVO") PictVO pictVO, HttpServletRequest request, ModelMap model) throws Exception {
		String sessions = (String) request.getSession().getAttribute("authority");
		if (sessions == null || sessions == "null") {
			return "redirect:/admin/pict_login";
		}
		String associationcode = (String) request.getSession().getAttribute("associationcode");
		
		String authority = (String) request.getSession().getAttribute("authority");
		
		if (authority == null || authority == "null" || authority.equals("") || !authority.equals("jeonjong")) {
			model.addAttribute("message", "해당 메뉴는 전종지도자만 활용 가능한 메뉴입니다.");
			model.addAttribute("retType", ":location");
			model.addAttribute("retUrl", "/admin/main");
			
			return "pict/main/message";
		}
		if(!associationcode.equals("200")) {
			model.addAttribute("message", "해당 메뉴는 중앙본부 전종지도자만 활용 가능한 메뉴입니다.");
			model.addAttribute("retType", ":location");
			model.addAttribute("retUrl", "/admin/main");
			
			return "pict/main/message";
		}
		int limitNumber = 20;
		pictVO.setLimit(limitNumber);
		
		Integer pageNum = pictVO.getPageNumber();
		
		if(pageNum == 0) {
			pictVO.setPageNumber(1);
			pageNum = 1;
		}

		int startNum = (pageNum - 1) * limitNumber;
		pictVO.setStartNumber(startNum);
		
		Integer totalCnt = pictService.popup_list_cnt(pictVO);
		
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
		
		
		List<PictVO> board_list = pictService.popup_list(pictVO);
		model.addAttribute("board_list", board_list);
		model.addAttribute("board_cnt", totalCnt);
		
		
		return "pict/front/popup_list";
	}
	//팝업 폼
	@RequestMapping("/front/popup_form")
	public String popup_form(@ModelAttribute("pictVO") PictVO pictVO, HttpServletRequest request, ModelMap model) throws Exception {
		String sessions = (String) request.getSession().getAttribute("authority");
		if (sessions == null || sessions == "null") {
			return "redirect:/admin/pict_login";
		}

		if(pictVO != null && pictVO.getIdx() != 0) {
			//수정
			pictVO = pictService.popup_list_one(pictVO);
			pictVO.setSaveType("update");
			
		}
		else {
			pictVO.setSaveType("insert");
		}
		
		model.addAttribute("pictVO", pictVO);
		return "pict/front/popup_form";
	}
	//팝업저장
	@RequestMapping(value = "/front/popup_save", method = RequestMethod.POST)
	public String popup_save(@ModelAttribute("searchVO") PictVO pictVO, ModelMap model, MultipartHttpServletRequest request,
			@RequestParam("file1root") MultipartFile attach_file1) throws Exception {
		
		String sessions = (String) request.getSession().getAttribute("authority");
		if (sessions == null || sessions == "null") {
			return "redirect:/admin/pict_login";
		}
		String file_dir = "/user1/upload_file/scout/";
		
		
        if(attach_file1.getSize() != 0) {
			String uploadPath = fileUpload(request, attach_file1, (String)request.getSession().getAttribute("id"), "popup");
			String filepath = file_dir  + "popup/";
			String filename = uploadPath.split("#####")[1];
			pictVO.setMainimg(filepath+filename);
		}
        
        if(pictVO.getSaveType() != null && pictVO.getSaveType().equals("update")) {
			pictService.popup_update(pictVO);
			model.addAttribute("message", "정상적으로 수정되었습니다.");
			model.addAttribute("retType", ":location");
			model.addAttribute("retUrl", "/admin/front/popup_list");
			return "pict/main/message";
		}
		else {
			pictVO.setRegister(request.getSession().getAttribute("name").toString());
			pictService.popup_insert(pictVO);
			model.addAttribute("message", "정상적으로 저장되었습니다.");
			model.addAttribute("retType", ":location");
			model.addAttribute("retUrl", "/admin/front/popup_list");
			return "pict/main/message";	
		}
	}
	//팝업삭제
	@RequestMapping(value = "/front/popup_delete")
	public String popup_delete(@ModelAttribute("searchVO") PictVO pictVO, ModelMap model, HttpServletRequest request) throws Exception {
		
		pictService.popup_delete(pictVO);
		
		model.addAttribute("message", "정상적으로 삭제되었습니다.");
		model.addAttribute("retType", ":location");
		model.addAttribute("retUrl", "/admin/front/popup_list");
		return "pict/main/message";
		
	}
	//팝업 상태값 변경
	@RequestMapping(value = "/front/popup_cng")
	public String popup_cng(@ModelAttribute("searchVO") PictVO pictVO, ModelMap model, HttpServletRequest request) throws Exception {
	
		pictService.popup_cng(pictVO);
		
		model.addAttribute("message", "정상적으로 변경되었습니다.");
		model.addAttribute("retType", ":location");
		model.addAttribute("retUrl", "/admin/front/popup_list");
		return "pict/main/message";
	}
	
	
	//단위대 최초비밀번호 넣기
	@RequestMapping("/first_password")
	public String first_password(@ModelAttribute("searchVO") PictVO pictVO, ModelMap model, HttpServletRequest request) throws Exception {
	
		List<PictVO> board_list = pictService.first_password(pictVO);
		for(int i=0; i<board_list.size(); i++) {
			String inputPw = board_list.get(i).getASSOCIATIONCODE() + board_list.get(i).getDISPTROOPNO();
			String enpassword = encryptPassword(inputPw);
			String troopno = board_list.get(i).getTROOPNO();
			
			pictVO.setPassword(enpassword);
			pictVO.setTROOPNO(troopno);
			pictService.first_password_cng(pictVO);
			System.out.println(troopno);
		}
		System.out.println("끝");
		
		return "pict/main/message";
	}
	// 공통메소드
	public String fileUpload(MultipartHttpServletRequest request, MultipartFile uploadFile, String target, String brdno) {
		String path = "";
		String fileName = "";
		OutputStream out = null;
		PrintWriter printWriter = null;
		long fileSize = uploadFile.getSize();
		try {
			fileName = uploadFile.getOriginalFilename();
			byte[] bytes = uploadFile.getBytes();

			path = getSaveLocation(request, uploadFile, brdno);

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

	private String getSaveLocation(MultipartHttpServletRequest request, MultipartFile uploadFile, String brdno) {
		String uploadPath = "/user1/upload_file/scout/" + brdno + "/";
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
