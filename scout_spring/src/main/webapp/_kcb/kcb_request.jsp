<%@ page import="kcb.org.json.*" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%

	String SITE_NAME = "한국스카우트연맹"; 		// 요청사이트명
	String SITE_URL = "scout.or.kr";

	String CP_CD = "V63170000000";	// 회원사코드
	session.setAttribute("PHONE_CP_CD", CP_CD);


	String url = request.getServerName() + ":" + request.getServerPort();
	String KCB_RETURN_URL = "";
	if(url.contains("scout")) {
		KCB_RETURN_URL = "https://" + request.getServerName();
	} else {
		KCB_RETURN_URL = "http://" + url;
	}
	// String RETURN_URL = "http://"+request.getServerName()+":8080/phone_popup/phone_popup3.jsp";// 인증 완료 후 리턴될 URL (도메인 포함 full path)
	// String RETURN_URL = KCB_RETURN_URL + "/_member/kcb-response.do";// 인증 완료 후 리턴될 URL (도메인 포함 full path)
	String RETURN_URL = KCB_RETURN_URL + "/_kcb/kcb_final.jsp";// 인증 완료 후 리턴될 URL (도메인 포함 full path)
	//String RETURN_URL = KCB_RETURN_URL + "/verify_final.do";
	//String RETURN_URL = KCB_RETURN_URL + "/WEB-INF/jsp/pict/_kcb/kcb_final.jsp";// 인증 완료 후 리턴될 URL (도메인 포함 full path)
	//String RETURN_URL = "https://www.scout.or.kr";
	System.out.println(RETURN_URL);
	String RQST_CAUS_CD = "00";

	String target = "PROD";	// 테스트="TEST", 운영="PROD"
	String popupUrl = "https://safe.ok-name.co.kr/CommonSvl";// 운영 URL

	//'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
    //' 라이센스 파일
    //'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
    
    String license = "C:\\Users\\82105\\git\\scout_spring\\scout_spring\\src\\main\\webapp\\_kcb\\";
	//String license = "/user1/scout_spring/scout_spring/_kcb/";
	String licenseName = CP_CD + "_IDS_01_" + target + "_AES_license.dat";

	//'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
    //' 서비스명 (고정값)
    //'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
	String svcName = "IDS_HS_POPUP_START";
	JSONObject reqJson = new JSONObject();
	reqJson.put("RETURN_URL", RETURN_URL);
	reqJson.put("SITE_NAME", SITE_NAME);
	reqJson.put("SITE_URL", SITE_URL);
	reqJson.put("RQST_CAUS_CD", RQST_CAUS_CD);
	
	String reqStr = reqJson.toString();
	System.out.println("1111111111111111");
	kcb.module.v3.OkCert okcert = new kcb.module.v3.OkCert();

	String resultStr = okcert.callOkCert(target, CP_CD, svcName, license + licenseName,  reqStr);
	System.out.println("2222222222222222222");
	JSONObject resJson = new JSONObject(resultStr);
	System.out.println("33333333333333");
    String RSLT_CD =  resJson.getString("RSLT_CD");
    String RSLT_MSG = resJson.getString("RSLT_MSG");
    String MDL_TKN = "";

	boolean succ = false;

    if ("B000".equals(RSLT_CD) && resJson.has("MDL_TKN") ) {
		MDL_TKN = resJson.getString("MDL_TKN");
		succ = true;
    }

%>

<html>
<title>KCB 휴대폰 본인확인</title>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=euc-kr">
<script type="text/javascript">
	function request(){
		document.form1.action = "<%=popupUrl%>";
		document.form1.method = "post";
	
		document.form1.submit();
	}
</script>
</head>

<body>
	<form name="form1">
	<!-- 인증 요청 정보 -->
	<!--// 필수 항목 -->
	<input type="hidden" name="tc" value="kcb.oknm.online.safehscert.popup.cmd.P931_CertChoiceCmd"/>	<!-- 변경불가-->
	<input type="hidden" name="cp_cd" value="<%=CP_CD%>">	<!-- 회원사코드 -->
	<input type="hidden" name="mdl_tkn" value="<%=MDL_TKN%>">	<!-- 토큰 --> 
	<input type="hidden" name="target_id" value="">	
	<!-- 필수 항목 //-->	
	</form>
</body>
<%
	if (succ) {
		//인증요청
		out.println("<script>request();</script>");
	} else {
		//요청 실패 페이지로 리턴
		out.println("<script>alert('" + RSLT_CD + " : " + RSLT_MSG + "'); self.close(); </script>");
	}
%>
</html>


