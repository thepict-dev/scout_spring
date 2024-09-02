<%@ page import="kcb.org.json.*" %>
<%@ page import="pict.service.PictVO" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%
    //**************************************************************************
    // 파일명 : phone_popup3.jsp
    // - 팝업페이지
    // 휴대폰 본인확인 인증 결과 화면(return url).
    // 암호화된 인증결과정보를 복호화한다.
    //**************************************************************************

    //' 처리결과 모듈 토큰 정보
    String MDL_TKN = request.getParameter("mdl_tkn");
    
    //'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
    //' KCB로부터 부여받은 회원사코드(아이디) 설정 (12자리)
    //'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
    String CP_CD = "V63170000000";	// 회원사코드
    //String CP_CD = (String)session.getAttribute("PHONE_CP_CD");

    //'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
    //' 타겟 : 운영/테스트 전환시 변경 필요
    //'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
    String target = "PROD";	// 테스트="TEST", 운영="PROD"

    //'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
    //' 라이센스 파일
    //'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
    //String license = "C:\\Users\\82105\\git\\scout_spring\\scout_spring\\src\\main\\webapp\\_kcb\\";
	String license = "/user1/scout_spring/scout_spring/_kcb/";
	String licenseName = CP_CD + "_IDS_01_" + target + "_AES_license.dat";

    //'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
    //' 서비스명 (고정값)
    //'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
    String svcName = "IDS_HS_POPUP_RESULT";

    /**************************************************************************
     okcert3 요청 정보
     **************************************************************************/
    JSONObject reqJson = new JSONObject();

    reqJson.put("MDL_TKN", MDL_TKN);
    String reqStr = reqJson.toString();

    /**************************************************************************
     okcert3 실행
     **************************************************************************/
    kcb.module.v3.OkCert okcert = new kcb.module.v3.OkCert();

    // '************ IBM JDK 사용 시, 주석 해제하여 호출 ************
    // okcert.setProtocol2type("22");
    // '객체 내 license를 리로드해야 될 경우에만 주석 해제하여 호출. (v1.1.7 이후 라이센스는 파일위치를 key로 하여 static HashMap으로 사용됨)
    // okcert.delLicense(license);

    //' callOkCert 메소드호출 : String license 파일 path로 라이센스 로드
    String resultStr = okcert.callOkCert(target, CP_CD, svcName, license + licenseName,  reqStr);
	/*
	// 'OkCert3 내부에서 String license 파일 path로 라이센스를 못 읽어올 경우(Executable Jar 환경 등에서 발생),
	// '메소드 마지막 파라미터에 InputStream를 사용하여 라이센스 로드
	String resultStr = null;
	if ( ! okcert.containsLicense(license) ) {			// 로드된 라이센스 정보가 HashMap에 없는 경우
		java.io.InputStream is = new java.io.FileInputStream(license);	// 환경에 맞게 InputStream 로드
		resultStr = okcert.callOkCert(target, CP_CD, svcName, license,  reqStr, is);
	} else {											// 로드된 라이센스 정보가 HashMap에 있는 경우
		resultStr = okcert.callOkCert(target, CP_CD, svcName, license,  reqStr);
	}
	*/

    JSONObject resJson = new JSONObject(resultStr);

    String RSLT_CD =  resJson.getString("RSLT_CD");
    String RSLT_MSG =  resJson.getString("RSLT_MSG");
    String TX_SEQ_NO =  resJson.getString("TX_SEQ_NO");

    String RSLT_NAME = "";
    String RSLT_BIRTHDAY = "";
    String RSLT_SEX_CD = "";
    String RSLT_NTV_FRNR_CD = "";

    String DI = "";
    String CI = "";
    String CI_UPDATE = "";
    String TEL_COM_CD = "";
    String TEL_NO = "";

    String RETURN_MSG= "";
    if(resJson.has("RETURN_MSG")) RETURN_MSG =  resJson.getString("RETURN_MSG");

    if ("B000".equals(RSLT_CD)){
        // 실명
        RSLT_NAME = resJson.getString("RSLT_NAME");
        
        // 생년월일
        RSLT_BIRTHDAY = resJson.getString("RSLT_BIRTHDAY");
        // 성별
        RSLT_SEX_CD = resJson.getString("RSLT_SEX_CD");
        // 내외국인 구분 (내국인:L, 외국인:F)
        RSLT_NTV_FRNR_CD = resJson.getString("RSLT_NTV_FRNR_CD");

        // DI 값. 중복가입 확인정보 (64byte)
        DI = resJson.getString("DI");
        // CI 값. 연계정보 확인정보 (88byte) - (CI_UPDATE가 홀수일 경우 사용)
        CI = resJson.getString("CI");
        // CI 업데이트 횟수 (현재 ‘1’ 로 고정임)
        CI_UPDATE = resJson.getString("CI_UPDATE");
        // 통신사 구분 (01:SKT, 02:KT, 03:LGU+, 04:알뜰폰SKT, 05:알뜰폰KT, 06:알뜰폰LGU+)
        TEL_COM_CD = resJson.getString("TEL_COM_CD");
        // 휴대폰번호
        TEL_NO = resJson.getString("TEL_NO");

        // 사용자 정보 session 저장 작업해야함(태호)
        /*
        PictVO loginCheck = new PictVO();
        loginCheck.setMOBILE(TEL_NO);
        loginCheck.setKNAME(RSLT_NAME);
        
        request.getSession().setAttribute("loginVO", loginCheck);
        */

    }
    // returnUrl 저장
    //String returnPage = (String)request.getSession().getAttribute("returnUrl");
    //String returnUrl = (returnPage==null || returnPage.equals("")) ? "/" : returnPage;
    //returnUrl = "https://hspg.ihc.go.kr";
    
%>

<title>KCB 휴대폰 본인확인</title>
<script type="text/javascript" >
    function fncOpenerSubmit() {
    	opener.document.kcbResultForm.CP_CD.value = "<%=CP_CD%>";
        opener.document.kcbResultForm.TX_SEQ_NO.value = "<%=TX_SEQ_NO%>";
        opener.document.kcbResultForm.RSLT_CD.value = "<%=RSLT_CD%>";
        opener.document.kcbResultForm.RSLT_MSG.value = "<%=RSLT_MSG%>";
        opener.document.kcbResultForm.RSLT_NAME.value = "<%=RSLT_NAME%>";
        opener.document.kcbResultForm.TEL_NO.value = "<%=TEL_NO%>";
        opener.document.kcbResultForm.RETURN_MSG.value = "<%=RETURN_MSG%>";
        opener.parent.abc();
        self.close();

    }
</script>
</head>
<body>
</body>
<script>
    let RSLT_CD = "<%=RSLT_CD%>";
    if(RSLT_CD == "B000"){
        fncOpenerSubmit();
    } else {
        self.close();
    }
</script>
</html>
