/*
 * Copyright 2008-2009 the original author or authors.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package pict.service;

import org.springframework.web.multipart.MultipartFile;

/**
 * @Class Name : SampleVO.java
 * @Description : SampleVO Class
 * @Modification Information
 * @
 * @  수정일      수정자              수정내용
 * @ ---------   ---------   -------------------------------
 * @ 2009.03.16           최초생성
 *
 * @author 개발프레임웍크 실행환경 개발팀
 * @since 2009. 03.16
 * @version 1.0
 * @see
 *
 *  Copyright (C) by MOPAS All right reserved.
 */
public class PictVO extends PictDefaultVO {

	private static final long serialVersionUID = 1L;

	private int idx;
	
	
	
	private String file1;
	private String file2;
	
	private MultipartFile file1root;
	private MultipartFile file2root;
	
	private String MEMBERNO;
	private String KNAME;
	private String BIRTHDAY;
	private String MEMCLSCODE;
	private String MEMGRADECODE;
	private String TROOPSCOUTY;
	private String TROOPLEADERY;
	private String LIFE_YN;
	private String LEADER_YN;
	
	private String search_kname;
	private String search_memberno;
	private String search_memberno_se;
	private String LEADERY;
	private String LEADER;
	private String LIFE;
	private String HPNO_ENC;
	private String EMAIL;
	private String HPOSTCODE;
	private String HADDR;
	private String EMAILYN;
	private String SMSYN;
	private String JOBCODE;
	private String MOBILE;
	private String JOBNAME;
	private String ADMINY;
	private String YEAR;
	private String ASSOCIATIONNAME;
	private String ASSOCIATIONCODE;
	private String TROOPNAME; 
	private String TROOPNO;
	private String UNITY;
	private String LEADERPOSITION;
	private String LEADERPOSITIONNAME;
	private String ORGNAME;
	private String SCOUTSCHOOLYEAR;
	private String ORGCLSNAME;
	private String PARENTTROOPNO;
	private String SCOUTCLSCODE;
	private String SCOUTCLSNAME;
	
	private String TROOPLEVELCODE;
	private String TROOPLEVELNAME;
	private String TROOPCLSCODE;
	private String TROOPCLSCODE1;
	private String TROOPCLSCODE2;
	private String DISPTROOPNO;
	private String UNREGDAY;
	private String POSTCODE;
	private String ADDR;
	private String TELNO;
	private String FAXNO;
	private String BIGO;
	private String SCOUTMCNT;
	private String SCOUTWCNT;
	private String LEADERMCNT;
	private String LEADERWCNT;
	private String LASTREGYEAR;
	private String TROOPCLSNAME;
	private String SEX;
	private String LEADERINCNT;
	private String ENTERDATE;
	private String SCOUTINCNT;
	private String UPDATEDATE;
	private String ENAME;
	private String EMPLOYEEY;
	private String HTELNO;
	private String SCOUTSCHOOLBAN;
	private String LEADERSCORE;
	private String FROMMEMBERNO;
	private String TOMEMBERNO;
	private String RELATIONCODE;
	private String RELATIONNAME1;
	private String RELATIONNAME2;
	private String FROMNAME;
	private String TONAME;
	private String FROMBIRTHDAY;
	private String TOBIRTHDAY;
	private String FROMENTERDATE;
	private String TOENTERDATE;
	private String RELATIONINFO;
	private String PICIMG;
	private String STARTDAY;
	private String ENDDAY;
	private String CONFIRMY;
	private String ORGNO;
	private String LEADERORGPOSITIONCODE;
	private String LEADERPOSITIONCODE1;
	private String LEADERPOSITIONCODE2;
	private String FEEEXCLUDECODE;
	private String BANKDAY;
	private String PAYY;
	private String ENTRYFEE;
	private String INSURANCEFEE;
	private String SCOUTMAGACNT;
	private String SCOUTMAGAFEE;
	private String LEADERMAGACNT;
	private String LEADERMAGAFEE;
	private String LEADERORGNO;
	private String SCOUTPOSITIONCODE;
	private String SCOUTPOSITIONNAME;
	private String SCOUTORGNO;
	private String SCOUTORGCLSCODE1;
	private String SCOUTORGCLSCODE2;
	private String SCOUTBAN;
	private String YEARREGYN;
	private String INSURANCEY;
	private String ORGCLSCODE1;
	private String ORGCLSCODE2;
	private String PARENTORGNO;
	private String ORGCLSNAME1;
	private String ORGCLSNAME2;
	private String SCOUTORGNAME;
	private String LEADERORGNAME;
	private String LEADERORGPOSITIONNAME;
	private String PARENTTROOPNAME;
	private String LASTREGDAY;
	private String ENGTROOPNAME;
	private String REGDAY;
	private String PARENTORGNAME;
	private String TROOPRANK;
	private String DETAIL;
	
	
	private String search_birthday;
	private String search_history;
	private String search_start;
	private String search_end;
	private String search_memclscode;
	private String search_memgradecode;
	private String search_associationcode;
	private String search_unitycode;
	private String search_level;
	private String search_scoutcls;
	private String search_troopcls;
	private String search_troopcls2;
	private String search_troopno_cate;
	private String search_troopno;
	private String search_orgtext;
	private String search_type;
	private String search_text;
	private String password;
	private String password_flag;
	private String search_type2;
	private String search_text2;
	private String search_parenttroopno;
	private String search_year;
	private String pre_year;
	private int preleader;
	private int prescout;
	private int thisleader;
	private int thisscout;
	private int payleader;
	private int payscout;
	private int leaderconfirm; 
	private int leadernoconfirm; 
	private int scoutconfirm;
	private int scoutnoconfirm;
	private int leadermagazinecnt;
	private int leadermagazinefee;
	private int scoutmagazinecnt;
	private int scoutmagazinefee;
	private String LEADERINFOTEXT;
	private String LEADERCNT;
	private String TROOPCODE;
	private String TRAINING;
	private String GIFT;
	private String SCOUTCODE;
	private String LEVELAPPLY;
	private String LEVELINFO;
	private String SCOUTCNT;
	private String OFFICE;
	private String LIFEMEMBERY;
	
	private String sosock;
	private String depart;
	private String ranked;
	private String association;
	private String type;
	private String clscode; 
	private String price;
	private String cls01;
	private String cls02;
	private String cls03;
	private String cls04;
	private String cls05;
	private String cls06;
	private String cls99;
	private String cls01new;
	private String cls02new;
	private String cls03new;
	private String cls04new;
	private String cls05new;
	private String cls06new;
	private String cls99new;
	private String cls01bigo;
	private String cls02bigo;
	private String cls03bigo;
	private String cls04bigo;
	private String cls05bigo;
	private String cls06bigo;
	private String cls99bigo;
	private String cls01newbigo;
	private String cls02newbigo;
	private String cls03newbigo;
	private String cls04newbigo;
	private String cls05newbigo;
	private String cls06newbigo;
	private String cls99newbigo;
	
	

	public String getCls01new() {
		return cls01new;
	}
	public void setCls01new(String cls01new) {
		this.cls01new = cls01new;
	}
	public String getCls02new() {
		return cls02new;
	}
	public void setCls02new(String cls02new) {
		this.cls02new = cls02new;
	}
	public String getCls03new() {
		return cls03new;
	}
	public void setCls03new(String cls03new) {
		this.cls03new = cls03new;
	}
	public String getCls04new() {
		return cls04new;
	}
	public void setCls04new(String cls04new) {
		this.cls04new = cls04new;
	}
	public String getCls05new() {
		return cls05new;
	}
	public void setCls05new(String cls05new) {
		this.cls05new = cls05new;
	}
	public String getCls06new() {
		return cls06new;
	}
	public void setCls06new(String cls06new) {
		this.cls06new = cls06new;
	}
	public String getCls99new() {
		return cls99new;
	}
	public void setCls99new(String cls99new) {
		this.cls99new = cls99new;
	}
	public String getCls01bigo() {
		return cls01bigo;
	}
	public void setCls01bigo(String cls01bigo) {
		this.cls01bigo = cls01bigo;
	}
	public String getCls02bigo() {
		return cls02bigo;
	}
	public void setCls02bigo(String cls02bigo) {
		this.cls02bigo = cls02bigo;
	}
	public String getCls03bigo() {
		return cls03bigo;
	}
	public void setCls03bigo(String cls03bigo) {
		this.cls03bigo = cls03bigo;
	}
	public String getCls04bigo() {
		return cls04bigo;
	}
	public void setCls04bigo(String cls04bigo) {
		this.cls04bigo = cls04bigo;
	}
	public String getCls05bigo() {
		return cls05bigo;
	}
	public void setCls05bigo(String cls05bigo) {
		this.cls05bigo = cls05bigo;
	}
	public String getCls06bigo() {
		return cls06bigo;
	}
	public void setCls06bigo(String cls06bigo) {
		this.cls06bigo = cls06bigo;
	}
	public String getCls99bigo() {
		return cls99bigo;
	}
	public void setCls99bigo(String cls99bigo) {
		this.cls99bigo = cls99bigo;
	}
	public String getCls01newbigo() {
		return cls01newbigo;
	}
	public void setCls01newbigo(String cls01newbigo) {
		this.cls01newbigo = cls01newbigo;
	}
	public String getCls02newbigo() {
		return cls02newbigo;
	}
	public void setCls02newbigo(String cls02newbigo) {
		this.cls02newbigo = cls02newbigo;
	}
	public String getCls03newbigo() {
		return cls03newbigo;
	}
	public void setCls03newbigo(String cls03newbigo) {
		this.cls03newbigo = cls03newbigo;
	}
	public String getCls04newbigo() {
		return cls04newbigo;
	}
	public void setCls04newbigo(String cls04newbigo) {
		this.cls04newbigo = cls04newbigo;
	}
	public String getCls05newbigo() {
		return cls05newbigo;
	}
	public void setCls05newbigo(String cls05newbigo) {
		this.cls05newbigo = cls05newbigo;
	}
	public String getCls06newbigo() {
		return cls06newbigo;
	}
	public void setCls06newbigo(String cls06newbigo) {
		this.cls06newbigo = cls06newbigo;
	}
	public String getCls99newbigo() {
		return cls99newbigo;
	}
	public void setCls99newbigo(String cls99newbigo) {
		this.cls99newbigo = cls99newbigo;
	}
	public String getCls01() {
		return cls01;
	}
	public void setCls01(String cls01) {
		this.cls01 = cls01;
	}
	public String getCls02() {
		return cls02;
	}
	public void setCls02(String cls02) {
		this.cls02 = cls02;
	}
	public String getCls03() {
		return cls03;
	}
	public void setCls03(String cls03) {
		this.cls03 = cls03;
	}
	public String getCls04() {
		return cls04;
	}
	public void setCls04(String cls04) {
		this.cls04 = cls04;
	}
	public String getCls05() {
		return cls05;
	}
	public void setCls05(String cls05) {
		this.cls05 = cls05;
	}
	public String getCls06() {
		return cls06;
	}
	public void setCls06(String cls06) {
		this.cls06 = cls06;
	}
	public String getCls99() {
		return cls99;
	}
	public void setCls99(String cls99) {
		this.cls99 = cls99;
	}
	
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getClscode() {
		return clscode;
	}
	public void setClscode(String clscode) {
		this.clscode = clscode;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getSosock() {
		return sosock;
	}
	public void setSosock(String sosock) {
		this.sosock = sosock;
	}
	public String getDepart() {
		return depart;
	}
	public void setDepart(String depart) {
		this.depart = depart;
	}
	public String getRanked() {
		return ranked;
	}
	public void setRanked(String ranked) {
		this.ranked = ranked;
	}
	public String getAssociation() {
		return association;
	}
	public void setAssociation(String association) {
		this.association = association;
	}
	public String getLIFEMEMBERY() {
		return LIFEMEMBERY;
	}
	public void setLIFEMEMBERY(String lIFEMEMBERY) {
		LIFEMEMBERY = lIFEMEMBERY;
	}
	public String getOFFICE() {
		return OFFICE;
	}
	public void setOFFICE(String oFFICE) {
		OFFICE = oFFICE;
	}
	public String getSCOUTCNT() {
		return SCOUTCNT;
	}
	public void setSCOUTCNT(String sCOUTCNT) {
		SCOUTCNT = sCOUTCNT;
	}
	public String getSCOUTCODE() {
		return SCOUTCODE;
	}
	public void setSCOUTCODE(String sCOUTCODE) {
		SCOUTCODE = sCOUTCODE;
	}
	public String getLEVELAPPLY() {
		return LEVELAPPLY;
	}
	public void setLEVELAPPLY(String lEVELAPPLY) {
		LEVELAPPLY = lEVELAPPLY;
	}
	public String getLEVELINFO() {
		return LEVELINFO;
	}
	public void setLEVELINFO(String lEVELINFO) {
		LEVELINFO = lEVELINFO;
	}
	public String getTRAINING() {
		return TRAINING;
	}
	public void setTRAINING(String tRAINING) {
		TRAINING = tRAINING;
	}
	public String getGIFT() {
		return GIFT;
	}
	public void setGIFT(String gIFT) {
		GIFT = gIFT;
	}
	public String getTROOPCODE() {
		return TROOPCODE;
	}
	public void setTROOPCODE(String tROOPCODE) {
		TROOPCODE = tROOPCODE;
	}
	public String getLEADERCNT() {
		return LEADERCNT;
	}
	public void setLEADERCNT(String lEADERCNT) {
		LEADERCNT = lEADERCNT;
	}
	public String getLEADERINFOTEXT() {
		return LEADERINFOTEXT;
	}
	public void setLEADERINFOTEXT(String lEADERINFOTEXT) {
		LEADERINFOTEXT = lEADERINFOTEXT;
	}
	public int getLeaderconfirm() {
		return leaderconfirm;
	}
	public void setLeaderconfirm(int leaderconfirm) {
		this.leaderconfirm = leaderconfirm;
	}
	public int getLeadernoconfirm() {
		return leadernoconfirm;
	}
	public void setLeadernoconfirm(int leadernoconfirm) {
		this.leadernoconfirm = leadernoconfirm;
	}
	public int getScoutconfirm() {
		return scoutconfirm;
	}
	public void setScoutconfirm(int scoutconfirm) {
		this.scoutconfirm = scoutconfirm;
	}


	public int getScoutnoconfirm() {
		return scoutnoconfirm;
	}
	public void setScoutnoconfirm(int scoutnoconfirm) {
		this.scoutnoconfirm = scoutnoconfirm;
	}
	public int getLeadermagazinecnt() {
		return leadermagazinecnt;
	}
	public void setLeadermagazinecnt(int leadermagazinecnt) {
		this.leadermagazinecnt = leadermagazinecnt;
	}
	public int getLeadermagazinefee() {
		return leadermagazinefee;
	}
	public void setLeadermagazinefee(int leadermagazinefee) {
		this.leadermagazinefee = leadermagazinefee;
	}
	public int getScoutmagazinecnt() {
		return scoutmagazinecnt;
	}
	public void setScoutmagazinecnt(int scoutmagazinecnt) {
		this.scoutmagazinecnt = scoutmagazinecnt;
	}
	public int getScoutmagazinefee() {
		return scoutmagazinefee;
	}
	public void setScoutmagazinefee(int scoutmagazinefee) {
		this.scoutmagazinefee = scoutmagazinefee;
	}
	public int getPreleader() {
		return preleader;
	}
	public void setPreleader(int preleader) {
		this.preleader = preleader;
	}
	public int getPrescout() {
		return prescout;
	}
	public void setPrescout(int prescout) {
		this.prescout = prescout;
	}
	public int getThisleader() {
		return thisleader;
	}
	public void setThisleader(int thisleader) {
		this.thisleader = thisleader;
	}
	public int getThisscout() {
		return thisscout;
	}
	public void setThisscout(int thisscout) {
		this.thisscout = thisscout;
	}
	public int getPayleader() {
		return payleader;
	}
	public void setPayleader(int payleader) {
		this.payleader = payleader;
	}
	public int getPayscout() {
		return payscout;
	}
	public void setPayscout(int payscout) {
		this.payscout = payscout;
	}
	public String getPre_year() {
		return pre_year;
	}
	public void setPre_year(String pre_year) {
		this.pre_year = pre_year;
	}
	public String getSearch_year() {
		return search_year;
	}
	public void setSearch_year(String search_year) {
		this.search_year = search_year;
	}
	public String getDETAIL() {
		return DETAIL;
	}
	public void setDETAIL(String dETAIL) {
		DETAIL = dETAIL;
	}
	public String getSearch_parenttroopno() {
		return search_parenttroopno;
	}
	public void setSearch_parenttroopno(String search_parenttroopno) {
		this.search_parenttroopno = search_parenttroopno;
	}
	public String getSearch_type2() {
		return search_type2;
	}
	public void setSearch_type2(String search_type2) {
		this.search_type2 = search_type2;
	}
	public String getSearch_text2() {
		return search_text2;
	}
	public void setSearch_text2(String search_text2) {
		this.search_text2 = search_text2;
	}
	public String getTROOPRANK() {
		return TROOPRANK;
	}
	public void setTROOPRANK(String tROOPRANK) {
		TROOPRANK = tROOPRANK;
	}
	public String getPassword_flag() {
		return password_flag;
	}
	public void setPassword_flag(String password_flag) {
		this.password_flag = password_flag;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getPARENTORGNAME() {
		return PARENTORGNAME;
	}
	public void setPARENTORGNAME(String pARENTORGNAME) {
		PARENTORGNAME = pARENTORGNAME;
	}
	public String getREGDAY() {
		return REGDAY;
	}
	public void setREGDAY(String rEGDAY) {
		REGDAY = rEGDAY;
	}
	public String getENGTROOPNAME() {
		return ENGTROOPNAME;
	}
	public void setENGTROOPNAME(String eNGTROOPNAME) {
		ENGTROOPNAME = eNGTROOPNAME;
	}
	public String getPARENTTROOPNAME() {
		return PARENTTROOPNAME;
	}
	public void setPARENTTROOPNAME(String pARENTTROOPNAME) {
		PARENTTROOPNAME = pARENTTROOPNAME;
	}
	public String getLASTREGDAY() {
		return LASTREGDAY;
	}
	public void setLASTREGDAY(String lASTREGDAY) {
		LASTREGDAY = lASTREGDAY;
	}
	public String getSearch_text() {
		return search_text;
	}
	public void setSearch_text(String search_text) {
		this.search_text = search_text;
	}
	public String getSearch_type() {
		return search_type;
	}
	public void setSearch_type(String search_type) {
		this.search_type = search_type;
	}
	public String getLEADERORGPOSITIONNAME() {
		return LEADERORGPOSITIONNAME;
	}
	public void setLEADERORGPOSITIONNAME(String lEADERORGPOSITIONNAME) {
		LEADERORGPOSITIONNAME = lEADERORGPOSITIONNAME;
	}
	public String getSCOUTORGNAME() {
		return SCOUTORGNAME;
	}
	public void setSCOUTORGNAME(String sCOUTORGNAME) {
		SCOUTORGNAME = sCOUTORGNAME;
	}
	public String getLEADERORGNAME() {
		return LEADERORGNAME;
	}
	public void setLEADERORGNAME(String lEADERORGNAME) {
		LEADERORGNAME = lEADERORGNAME;
	}
	public String getORGCLSNAME1() {
		return ORGCLSNAME1;
	}
	public void setORGCLSNAME1(String oRGCLSNAME1) {
		ORGCLSNAME1 = oRGCLSNAME1;
	}
	public String getORGCLSNAME2() {
		return ORGCLSNAME2;
	}
	public void setORGCLSNAME2(String oRGCLSNAME2) {
		ORGCLSNAME2 = oRGCLSNAME2;
	}
	public String getSearch_orgtext() {
		return search_orgtext;
	}
	public void setSearch_orgtext(String search_orgtext) {
		this.search_orgtext = search_orgtext;
	}
	public String getPARENTORGNO() {
		return PARENTORGNO;
	}
	public void setPARENTORGNO(String pARENTORGNO) {
		PARENTORGNO = pARENTORGNO;
	}
	public String getORGCLSCODE1() {
		return ORGCLSCODE1;
	}
	public void setORGCLSCODE1(String oRGCLSCODE1) {
		ORGCLSCODE1 = oRGCLSCODE1;
	}
	public String getORGCLSCODE2() {
		return ORGCLSCODE2;
	}
	public void setORGCLSCODE2(String oRGCLSCODE2) {
		ORGCLSCODE2 = oRGCLSCODE2;
	}
	public String getINSURANCEY() {
		return INSURANCEY;
	}
	public void setINSURANCEY(String iNSURANCEY) {
		INSURANCEY = iNSURANCEY;
	}
	public String getSCOUTPOSITIONCODE() {
		return SCOUTPOSITIONCODE;
	}
	public void setSCOUTPOSITIONCODE(String sCOUTPOSITIONCODE) {
		SCOUTPOSITIONCODE = sCOUTPOSITIONCODE;
	}
	public String getSCOUTPOSITIONNAME() {
		return SCOUTPOSITIONNAME;
	}
	public void setSCOUTPOSITIONNAME(String sCOUTPOSITIONNAME) {
		SCOUTPOSITIONNAME = sCOUTPOSITIONNAME;
	}
	public String getSCOUTORGNO() {
		return SCOUTORGNO;
	}
	public void setSCOUTORGNO(String sCOUTORGNO) {
		SCOUTORGNO = sCOUTORGNO;
	}
	public String getSCOUTORGCLSCODE1() {
		return SCOUTORGCLSCODE1;
	}
	public void setSCOUTORGCLSCODE1(String sCOUTORGCLSCODE1) {
		SCOUTORGCLSCODE1 = sCOUTORGCLSCODE1;
	}
	public String getSCOUTORGCLSCODE2() {
		return SCOUTORGCLSCODE2;
	}
	public void setSCOUTORGCLSCODE2(String sCOUTORGCLSCODE2) {
		SCOUTORGCLSCODE2 = sCOUTORGCLSCODE2;
	}
	public String getSCOUTBAN() {
		return SCOUTBAN;
	}
	public void setSCOUTBAN(String sCOUTBAN) {
		SCOUTBAN = sCOUTBAN;
	}
	public String getYEARREGYN() {
		return YEARREGYN;
	}
	public void setYEARREGYN(String yEARREGYN) {
		YEARREGYN = yEARREGYN;
	}
	public String getLEADERORGNO() {
		return LEADERORGNO;
	}
	public void setLEADERORGNO(String lEADERORGNO) {
		LEADERORGNO = lEADERORGNO;
	}
	public String getSTARTDAY() {
		return STARTDAY;
	}
	public void setSTARTDAY(String sTARTDAY) {
		STARTDAY = sTARTDAY;
	}
	public String getENDDAY() {
		return ENDDAY;
	}
	public void setENDDAY(String eNDDAY) {
		ENDDAY = eNDDAY;
	}
	public String getCONFIRMY() {
		return CONFIRMY;
	}
	public void setCONFIRMY(String cONFIRMY) {
		CONFIRMY = cONFIRMY;
	}
	public String getORGNO() {
		return ORGNO;
	}
	public void setORGNO(String oRGNO) {
		ORGNO = oRGNO;
	}
	public String getLEADERORGPOSITIONCODE() {
		return LEADERORGPOSITIONCODE;
	}
	public void setLEADERORGPOSITIONCODE(String lEADERORGPOSITIONCODE) {
		LEADERORGPOSITIONCODE = lEADERORGPOSITIONCODE;
	}
	public String getLEADERPOSITIONCODE1() {
		return LEADERPOSITIONCODE1;
	}
	public void setLEADERPOSITIONCODE1(String lEADERPOSITIONCODE1) {
		LEADERPOSITIONCODE1 = lEADERPOSITIONCODE1;
	}
	public String getLEADERPOSITIONCODE2() {
		return LEADERPOSITIONCODE2;
	}
	public void setLEADERPOSITIONCODE2(String lEADERPOSITIONCODE2) {
		LEADERPOSITIONCODE2 = lEADERPOSITIONCODE2;
	}
	public String getFEEEXCLUDECODE() {
		return FEEEXCLUDECODE;
	}
	public void setFEEEXCLUDECODE(String fEEEXCLUDECODE) {
		FEEEXCLUDECODE = fEEEXCLUDECODE;
	}
	public String getBANKDAY() {
		return BANKDAY;
	}
	public void setBANKDAY(String bANKDAY) {
		BANKDAY = bANKDAY;
	}
	public String getPAYY() {
		return PAYY;
	}
	public void setPAYY(String pAYY) {
		PAYY = pAYY;
	}


	public String getENTRYFEE() {
		return ENTRYFEE;
	}
	public void setENTRYFEE(String eNTRYFEE) {
		ENTRYFEE = eNTRYFEE;
	}
	public String getINSURANCEFEE() {
		return INSURANCEFEE;
	}
	public void setINSURANCEFEE(String iNSURANCEFEE) {
		INSURANCEFEE = iNSURANCEFEE;
	}

	public String getSCOUTMAGACNT() {
		return SCOUTMAGACNT;
	}
	public void setSCOUTMAGACNT(String sCOUTMAGACNT) {
		SCOUTMAGACNT = sCOUTMAGACNT;
	}
	public String getSCOUTMAGAFEE() {
		return SCOUTMAGAFEE;
	}
	public void setSCOUTMAGAFEE(String sCOUTMAGAFEE) {
		SCOUTMAGAFEE = sCOUTMAGAFEE;
	}
	public String getLEADERMAGACNT() {
		return LEADERMAGACNT;
	}
	public void setLEADERMAGACNT(String lEADERMAGACNT) {
		LEADERMAGACNT = lEADERMAGACNT;
	}
	public String getLEADERMAGAFEE() {
		return LEADERMAGAFEE;
	}
	public void setLEADERMAGAFEE(String lEADERMAGAFEE) {
		LEADERMAGAFEE = lEADERMAGAFEE;
	}
	public String getPICIMG() {
		return PICIMG;
	}
	public void setPICIMG(String pICIMG) {
		PICIMG = pICIMG;
	}
	public String getRELATIONINFO() {
		return RELATIONINFO;
	}
	public void setRELATIONINFO(String rELATIONINFO) {
		RELATIONINFO = rELATIONINFO;
	}
	public String getFROMMEMBERNO() {
		return FROMMEMBERNO;
	}
	public void setFROMMEMBERNO(String fROMMEMBERNO) {
		FROMMEMBERNO = fROMMEMBERNO;
	}
	public String getTOMEMBERNO() {
		return TOMEMBERNO;
	}
	public void setTOMEMBERNO(String tOMEMBERNO) {
		TOMEMBERNO = tOMEMBERNO;
	}
	public String getRELATIONCODE() {
		return RELATIONCODE;
	}
	public void setRELATIONCODE(String rELATIONCODE) {
		RELATIONCODE = rELATIONCODE;
	}
	public String getRELATIONNAME1() {
		return RELATIONNAME1;
	}
	public void setRELATIONNAME1(String rELATIONNAME1) {
		RELATIONNAME1 = rELATIONNAME1;
	}
	public String getRELATIONNAME2() {
		return RELATIONNAME2;
	}
	public void setRELATIONNAME2(String rELATIONNAME2) {
		RELATIONNAME2 = rELATIONNAME2;
	}
	public String getFROMNAME() {
		return FROMNAME;
	}
	public void setFROMNAME(String fROMNAME) {
		FROMNAME = fROMNAME;
	}
	public String getTONAME() {
		return TONAME;
	}
	public void setTONAME(String tONAME) {
		TONAME = tONAME;
	}
	public String getFROMBIRTHDAY() {
		return FROMBIRTHDAY;
	}
	public void setFROMBIRTHDAY(String fROMBIRTHDAY) {
		FROMBIRTHDAY = fROMBIRTHDAY;
	}
	public String getTOBIRTHDAY() {
		return TOBIRTHDAY;
	}
	public void setTOBIRTHDAY(String tOBIRTHDAY) {
		TOBIRTHDAY = tOBIRTHDAY;
	}
	public String getFROMENTERDATE() {
		return FROMENTERDATE;
	}
	public void setFROMENTERDATE(String fROMENTERDATE) {
		FROMENTERDATE = fROMENTERDATE;
	}
	public String getTOENTERDATE() {
		return TOENTERDATE;
	}
	public void setTOENTERDATE(String tOENTERDATE) {
		TOENTERDATE = tOENTERDATE;
	}
	public String getSCOUTSCHOOLBAN() {
		return SCOUTSCHOOLBAN;
	}
	public void setSCOUTSCHOOLBAN(String sCOUTSCHOOLBAN) {
		SCOUTSCHOOLBAN = sCOUTSCHOOLBAN;
	}
	public String getLEADERSCORE() {
		return LEADERSCORE;
	}
	public void setLEADERSCORE(String lEADERSCORE) {
		LEADERSCORE = lEADERSCORE;
	}
	public String getHTELNO() {
		return HTELNO;
	}
	public void setHTELNO(String hTELNO) {
		HTELNO = hTELNO;
	}
	public String getEMPLOYEEY() {
		return EMPLOYEEY;
	}
	public void setEMPLOYEEY(String eMPLOYEEY) {
		EMPLOYEEY = eMPLOYEEY;
	}
	public String getENAME() {
		return ENAME;
	}
	public void setENAME(String eNAME) {
		ENAME = eNAME;
	}
	public String getUPDATEDATE() {
		return UPDATEDATE;
	}
	public void setUPDATEDATE(String uPDATEDATE) {
		UPDATEDATE = uPDATEDATE;
	}
	public String getSCOUTINCNT() {
		return SCOUTINCNT;
	}
	public void setSCOUTINCNT(String sCOUTINCNT) {
		SCOUTINCNT = sCOUTINCNT;
	}
	public String getENTERDATE() {
		return ENTERDATE;
	}
	public void setENTERDATE(String eNTERDATE) {
		ENTERDATE = eNTERDATE;
	}
	public String getLEADERINCNT() {
		return LEADERINCNT;
	}
	public void setLEADERINCNT(String lEADERINCNT) {
		LEADERINCNT = lEADERINCNT;
	}
	public String getSEX() {
		return SEX;
	}
	public void setSEX(String sEX) {
		SEX = sEX;
	}
	public String getTROOPCLSCODE1() {
		return TROOPCLSCODE1;
	}
	public void setTROOPCLSCODE1(String tROOPCLSCODE1) {
		TROOPCLSCODE1 = tROOPCLSCODE1;
	}
	public String getTROOPCLSNAME() {
		return TROOPCLSNAME;
	}
	public void setTROOPCLSNAME(String tROOPCLSNAME) {
		TROOPCLSNAME = tROOPCLSNAME;
	}
	public String getUNREGDAY() {
		return UNREGDAY;
	}
	public void setUNREGDAY(String uNREGDAY) {
		UNREGDAY = uNREGDAY;
	}
	public String getPOSTCODE() {
		return POSTCODE;
	}
	public void setPOSTCODE(String pOSTCODE) {
		POSTCODE = pOSTCODE;
	}
	public String getADDR() {
		return ADDR;
	}
	public void setADDR(String aDDR) {
		ADDR = aDDR;
	}
	public String getTELNO() {
		return TELNO;
	}
	public void setTELNO(String tELNO) {
		TELNO = tELNO;
	}
	public String getFAXNO() {
		return FAXNO;
	}
	public void setFAXNO(String fAXNO) {
		FAXNO = fAXNO;
	}
	public String getBIGO() {
		return BIGO;
	}
	public void setBIGO(String bIGO) {
		BIGO = bIGO;
	}
	public String getSCOUTMCNT() {
		return SCOUTMCNT;
	}
	public void setSCOUTMCNT(String sCOUTMCNT) {
		SCOUTMCNT = sCOUTMCNT;
	}
	public String getSCOUTWCNT() {
		return SCOUTWCNT;
	}
	public void setSCOUTWCNT(String sCOUTWCNT) {
		SCOUTWCNT = sCOUTWCNT;
	}
	public String getLEADERMCNT() {
		return LEADERMCNT;
	}
	public void setLEADERMCNT(String lEADERMCNT) {
		LEADERMCNT = lEADERMCNT;
	}
	public String getLEADERWCNT() {
		return LEADERWCNT;
	}
	public void setLEADERWCNT(String lEADERWCNT) {
		LEADERWCNT = lEADERWCNT;
	}
	public String getLASTREGYEAR() {
		return LASTREGYEAR;
	}
	public void setLASTREGYEAR(String lASTREGYEAR) {
		LASTREGYEAR = lASTREGYEAR;
	}
	public String getDISPTROOPNO() {
		return DISPTROOPNO;
	}
	public void setDISPTROOPNO(String dISPTROOPNO) {
		DISPTROOPNO = dISPTROOPNO;
	}
	public String getTROOPCLSCODE() {
		return TROOPCLSCODE;
	}
	public void setTROOPCLSCODE(String tROOPCLSCODE) {
		TROOPCLSCODE = tROOPCLSCODE;
	}
	public String getTROOPCLSCODE2() {
		return TROOPCLSCODE2;
	}
	public void setTROOPCLSCODE2(String tROOPCLSCODE2) {
		TROOPCLSCODE2 = tROOPCLSCODE2;
	}
	public String getSearch_associationcode() {
		return search_associationcode;
	}
	public void setSearch_associationcode(String search_associationcode) {
		this.search_associationcode = search_associationcode;
	}
	public String getSearch_unitycode() {
		return search_unitycode;
	}
	public void setSearch_unitycode(String search_unitycode) {
		this.search_unitycode = search_unitycode;
	}
	public String getSearch_level() {
		return search_level;
	}
	public void setSearch_level(String search_level) {
		this.search_level = search_level;
	}
	public String getSearch_scoutcls() {
		return search_scoutcls;
	}
	public void setSearch_scoutcls(String search_scoutcls) {
		this.search_scoutcls = search_scoutcls;
	}
	public String getSearch_troopcls() {
		return search_troopcls;
	}
	public void setSearch_troopcls(String search_troopcls) {
		this.search_troopcls = search_troopcls;
	}
	public String getSearch_troopcls2() {
		return search_troopcls2;
	}
	public void setSearch_troopcls2(String search_troopcls2) {
		this.search_troopcls2 = search_troopcls2;
	}
	public String getSearch_troopno_cate() {
		return search_troopno_cate;
	}
	public void setSearch_troopno_cate(String search_troopno_cate) {
		this.search_troopno_cate = search_troopno_cate;
	}
	public String getSearch_troopno() {
		return search_troopno;
	}
	public void setSearch_troopno(String search_troopno) {
		this.search_troopno = search_troopno;
	}
	public String getSCOUTCLSCODE() {
		return SCOUTCLSCODE;
	}
	public void setSCOUTCLSCODE(String sCOUTCLSCODE) {
		SCOUTCLSCODE = sCOUTCLSCODE;
	}
	public String getSCOUTCLSNAME() {
		return SCOUTCLSNAME;
	}
	public void setSCOUTCLSNAME(String sCOUTCLSNAME) {
		SCOUTCLSNAME = sCOUTCLSNAME;
	}
	public String getTROOPLEVELCODE() {
		return TROOPLEVELCODE;
	}
	public void setTROOPLEVELCODE(String tROOPLEVELCODE) {
		TROOPLEVELCODE = tROOPLEVELCODE;
	}
	public String getTROOPLEVELNAME() {
		return TROOPLEVELNAME;
	}
	public void setTROOPLEVELNAME(String tROOPLEVELNAME) {
		TROOPLEVELNAME = tROOPLEVELNAME;
	}
	public String getPARENTTROOPNO() {
		return PARENTTROOPNO;
	}
	public void setPARENTTROOPNO(String pARENTTROOPNO) {
		PARENTTROOPNO = pARENTTROOPNO;
	}
	public String getASSOCIATIONCODE() {
		return ASSOCIATIONCODE;
	}
	public void setASSOCIATIONCODE(String aSSOCIATIONCODE) {
		ASSOCIATIONCODE = aSSOCIATIONCODE;
	}
	public String getSearch_memgradecode() {
		return search_memgradecode;
	}
	public void setSearch_memgradecode(String search_memgradecode) {
		this.search_memgradecode = search_memgradecode;
	}
	public String getSearch_memclscode() {
		return search_memclscode;
	}
	public void setSearch_memclscode(String search_memclscode) {
		this.search_memclscode = search_memclscode;
	}
	public String getSearch_birthday() {
		return search_birthday;
	}
	public void setSearch_birthday(String search_birthday) {
		this.search_birthday = search_birthday;
	}
	public String getSearch_history() {
		return search_history;
	}
	public void setSearch_history(String search_history) {
		this.search_history = search_history;
	}
	public String getSearch_start() {
		return search_start;
	}
	public void setSearch_start(String search_start) {
		this.search_start = search_start;
	}
	public String getSearch_end() {
		return search_end;
	}
	public void setSearch_end(String search_end) {
		this.search_end = search_end;
	}
	public String getSCOUTSCHOOLYEAR() {
		return SCOUTSCHOOLYEAR;
	}
	public void setSCOUTSCHOOLYEAR(String sCOUTSCHOOLYEAR) {
		SCOUTSCHOOLYEAR = sCOUTSCHOOLYEAR;
	}
	public String getORGCLSNAME() {
		return ORGCLSNAME;
	}
	public void setORGCLSNAME(String oRGCLSNAME) {
		ORGCLSNAME = oRGCLSNAME;
	}
	public String getADMINY() {
		return ADMINY;
	}
	public void setADMINY(String aDMINY) {
		ADMINY = aDMINY;
	}
	public String getYEAR() {
		return YEAR;
	}
	public void setYEAR(String yEAR) {
		YEAR = yEAR;
	}
	public String getASSOCIATIONNAME() {
		return ASSOCIATIONNAME;
	}
	public void setASSOCIATIONNAME(String aSSOCIATIONNAME) {
		ASSOCIATIONNAME = aSSOCIATIONNAME;
	}
	public String getTROOPNAME() {
		return TROOPNAME;
	}
	public void setTROOPNAME(String tROOPNAME) {
		TROOPNAME = tROOPNAME;
	}
	public String getTROOPNO() {
		return TROOPNO;
	}
	public void setTROOPNO(String tROOPNO) {
		TROOPNO = tROOPNO;
	}
	public String getUNITY() {
		return UNITY;
	}
	public void setUNITY(String uNITY) {
		UNITY = uNITY;
	}
	public String getLEADERPOSITION() {
		return LEADERPOSITION;
	}
	public void setLEADERPOSITION(String lEADERPOSITION) {
		LEADERPOSITION = lEADERPOSITION;
	}
	public String getLEADERPOSITIONNAME() {
		return LEADERPOSITIONNAME;
	}
	public void setLEADERPOSITIONNAME(String lEADERPOSITIONNAME) {
		LEADERPOSITIONNAME = lEADERPOSITIONNAME;
	}
	public String getORGNAME() {
		return ORGNAME;
	}
	public void setORGNAME(String oRGNAME) {
		ORGNAME = oRGNAME;
	}
	public String getJOBNAME() {
		return JOBNAME;
	}
	public void setJOBNAME(String jOBNAME) {
		JOBNAME = jOBNAME;
	}
	public String getMOBILE() {
		return MOBILE;
	}
	public void setMOBILE(String mOBILE) {
		MOBILE = mOBILE;
	}
	public String getHPNO_ENC() {
		return HPNO_ENC;
	}
	public void setHPNO_ENC(String hPNO_ENC) {
		HPNO_ENC = hPNO_ENC;
	}
	public String getEMAIL() {
		return EMAIL;
	}
	public void setEMAIL(String eMAIL) {
		EMAIL = eMAIL;
	}
	public String getHPOSTCODE() {
		return HPOSTCODE;
	}
	public void setHPOSTCODE(String hPOSTCODE) {
		HPOSTCODE = hPOSTCODE;
	}
	public String getHADDR() {
		return HADDR;
	}
	public void setHADDR(String hADDR) {
		HADDR = hADDR;
	}
	public String getEMAILYN() {
		return EMAILYN;
	}
	public void setEMAILYN(String eMAILYN) {
		EMAILYN = eMAILYN;
	}
	public String getSMSYN() {
		return SMSYN;
	}
	public void setSMSYN(String sMSYN) {
		SMSYN = sMSYN;
	}
	public String getJOBCODE() {
		return JOBCODE;
	}
	public void setJOBCODE(String jOBCODE) {
		JOBCODE = jOBCODE;
	}
	public String getLEADER() {
		return LEADER;
	}
	public void setLEADER(String lEADER) {
		LEADER = lEADER;
	}
	public String getLIFE() {
		return LIFE;
	}
	public void setLIFE(String lIFE) {
		LIFE = lIFE;
	}
	public String getLEADER_YN() {
		return LEADER_YN;
	}
	public void setLEADER_YN(String lEADER_YN) {
		LEADER_YN = lEADER_YN;
	}
	public String getLEADERY() {
		return LEADERY;
	}
	public void setLEADERY(String lEADERY) {
		LEADERY = lEADERY;
	}
	public String getSearch_memberno_se() {
		return search_memberno_se;
	}
	public void setSearch_memberno_se(String search_memberno_se) {
		this.search_memberno_se = search_memberno_se;
	}
	public String getSearch_kname() {
		return search_kname;
	}
	public void setSearch_kname(String search_kname) {
		this.search_kname = search_kname;
	}
	public String getSearch_memberno() {
		return search_memberno;
	}
	public void setSearch_memberno(String search_memberno) {
		this.search_memberno = search_memberno;
	}
	public String getMEMBERNO() {
		return MEMBERNO;
	}
	public void setMEMBERNO(String mEMBERNO) {
		MEMBERNO = mEMBERNO;
	}
	public String getKNAME() {
		return KNAME;
	}
	public void setKNAME(String kNAME) {
		KNAME = kNAME;
	}
	public String getBIRTHDAY() {
		return BIRTHDAY;
	}
	public void setBIRTHDAY(String bIRTHDAY) {
		BIRTHDAY = bIRTHDAY;
	}
	public String getMEMCLSCODE() {
		return MEMCLSCODE;
	}
	public void setMEMCLSCODE(String mEMCLSCODE) {
		MEMCLSCODE = mEMCLSCODE;
	}
	public String getMEMGRADECODE() {
		return MEMGRADECODE;
	}
	public void setMEMGRADECODE(String mEMGRADECODE) {
		MEMGRADECODE = mEMGRADECODE;
	}
	public String getTROOPSCOUTY() {
		return TROOPSCOUTY;
	}
	public void setTROOPSCOUTY(String tROOPSCOUTY) {
		TROOPSCOUTY = tROOPSCOUTY;
	}
	public String getTROOPLEADERY() {
		return TROOPLEADERY;
	}
	public void setTROOPLEADERY(String tROOPLEADERY) {
		TROOPLEADERY = tROOPLEADERY;
	}


	public String getLIFE_YN() {
		return LIFE_YN;
	}
	public void setLIFE_YN(String lIFE_YN) {
		LIFE_YN = lIFE_YN;
	}
	public MultipartFile getFile1root() {
		return file1root;
	}
	public void setFile1root(MultipartFile file1root) {
		this.file1root = file1root;
	}
	public MultipartFile getFile2root() {
		return file2root;
	}
	public void setFile2root(MultipartFile file2root) {
		this.file2root = file2root;
	}
	public String getFile1() {
		return file1;
	}
	public void setFile1(String file1) {
		this.file1 = file1;
	}
	public String getFile2() {
		return file2;
	}
	public void setFile2(String file2) {
		this.file2 = file2;
	}
	
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	
	
	
	
}
