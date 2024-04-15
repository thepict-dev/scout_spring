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
	private String TROOPNAME; 
	private String TROOPNO;
	private String UNITY;
	private String LEADERPOSITION;
	private String LEADERPOSITIONNAME;
	private String ORGNAME;
	private String SCOUTSCHOOLYEAR;
	private String ORGCLSNAME;
	
	
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
