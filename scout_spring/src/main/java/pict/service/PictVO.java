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
	private String file3;
	private String file4;
	private String file5;
	
	private MultipartFile file1root;
	private MultipartFile file2root;
	private MultipartFile file3root;
	private MultipartFile file4root;
	private MultipartFile file5root;
	
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
	private String search_status;
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

	
	
	private String BRDCTSNO;
	private String BRDNO;
	private String SUBJECT;
	private String CONTENTS;
	private String VIEWCNT;
	private String USEAT;
	private String NOTI;
	private int pageNumber;
	private int startNumber;
	private int limit;
	private int totalPage;
	private int offset;
	private int lastPage;
	private int startPage;
	private int endPage;
	private String register;
	private String saveType;
	private String fileidx;
	private String company;
	private String name;
	private String applydate;
	private String time;
	private String person;
	private String etc1;
	private String etc2;
	private String purpose;
	private String status;
	private String age;
	private String relation;
	private String main;
	
	
	private String associationcode_search;
	private String unitycode_search;
	private String trooplevelcode_search;
	private String troopclscode1_search;
	private String troopclscode2_search;
	private String parentorgno_search;
	private String scoutclscode_search;
	private String LIFERANK;
	
	private String local;
	private String dataid;
	private String title;
	private String introduce;
	private String leadername;
	private String leaderimg;
	private String mainimg;
	private String organization;
	private String positionx;
	private String positiony;
	private String address;
	private String tel;
	private String boardcategory;
	private String LEVEL;
	private String linkurl;
	private int orderby;
	private String LIFEMEMBERNO;
	private String LIFEENTERDATE;
	private String LIFESTATUS;
	private String DISPTROOPNO2;
	private String TROOPNAME2;
	
	
	private String scoutclscode1;
	private String scoutclscode2;
	private String scoutclscode3;
	private String scoutclscode4;
	private String scoutclscode5;
	private String scoutclscode6;
	private String scoutclscodeetc;
	private String scoutclscodenull;
	private String scoutclscodenonconfirm;
	private String scoutclscodesum;
	
	private String gubun;
	private String registernonconfirm;
	private String registersum;
	private String registercontinue;
	private String registernew;
	
	private String scoutcurrent;
	private String scoutpre;
	
	private String leadercurrent;
	private String leaderpre;
	private String levels;
	private String troopcount;
	private String dongwoo;
	private String special;
	private String registerconfirm;
	
	private String currentbeaber;
	private String currentcup;
	private String currentscout;
	private String currentventure;
	private String currentrover;
	private String currentcomposite;
	private String currentother;
	private String currentnotapplicable;
	private String currentnotapproved;
	private String currenttotal;
	private String prebeaberrate;
	private String precuprate;
	private String preventurerate;
	private String preroverrate;
	private String precompositerate;
	private String preotherrate;
	private String premissingrate;
	private String premissingapprovalrate;
	private String prescoutrate;
	private String newscoutclscode1;
	private String newscoutclscode2;
	private String newscoutclscode3;
	private String newscoutclscode4;
	private String newscoutclscode5;
	private String newscoutclscode6;
	private String currentscoutclscode1;
	private String currentscoutclscode2;
	private String currentscoutclscode3;
	private String currentscoutclscode4;
	private String currentscoutclscode5;
	private String currentscoutclscode6;
	private String lifec;
	private String lifes;
	private String lifeg;
	private String lifetotal;
	private String search_liferank;
	private String search_lifestatus;
	private String leaderposition1m;
	private String leaderposition1w;
	private String leaderposition2m;
	private String leaderposition2w;
	private String leaderposition3m;
	private String leaderposition3w;
	private String leaderposition4m;
	private String leaderposition4w;
	private String isexist;
	private String nationcode;
	
	
	private String LEADERPRICE;
	private String SCOUTPRICE;
	private String CONFIRMDATE;
	private String condition;
	private String EVENTNO;
	private String EVENTNAME;
	private String EVENTSTARTDAY;
	private String EVENTENDDAY;
	private String EVENTCLSNAME;
	private String PASSNUM;
	private String CERTNUM;
	private String COMPLETIONY;
	private String category;
	
	
	
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getPASSNUM() {
		return PASSNUM;
	}
	public void setPASSNUM(String pASSNUM) {
		PASSNUM = pASSNUM;
	}
	public String getCERTNUM() {
		return CERTNUM;
	}
	public void setCERTNUM(String cERTNUM) {
		CERTNUM = cERTNUM;
	}
	public String getCOMPLETIONY() {
		return COMPLETIONY;
	}
	public void setCOMPLETIONY(String cOMPLETIONY) {
		COMPLETIONY = cOMPLETIONY;
	}
	public String getEVENTNO() {
		return EVENTNO;
	}
	public void setEVENTNO(String eVENTNO) {
		EVENTNO = eVENTNO;
	}
	public String getEVENTNAME() {
		return EVENTNAME;
	}
	public void setEVENTNAME(String eVENTNAME) {
		EVENTNAME = eVENTNAME;
	}
	public String getEVENTSTARTDAY() {
		return EVENTSTARTDAY;
	}
	public void setEVENTSTARTDAY(String eVENTSTARTDAY) {
		EVENTSTARTDAY = eVENTSTARTDAY;
	}
	public String getEVENTENDDAY() {
		return EVENTENDDAY;
	}
	public void setEVENTENDDAY(String eVENTENDDAY) {
		EVENTENDDAY = eVENTENDDAY;
	}
	public String getEVENTCLSNAME() {
		return EVENTCLSNAME;
	}
	public void setEVENTCLSNAME(String eVENTCLSNAME) {
		EVENTCLSNAME = eVENTCLSNAME;
	}
	public String getCondition() {
		return condition;
	}
	public void setCondition(String condition) {
		this.condition = condition;
	}
	public String getCONFIRMDATE() {
		return CONFIRMDATE;
	}
	public void setCONFIRMDATE(String cONFIRMDATE) {
		CONFIRMDATE = cONFIRMDATE;
	}
	public String getLEADERPRICE() {
		return LEADERPRICE;
	}
	public void setLEADERPRICE(String lEADERPRICE) {
		LEADERPRICE = lEADERPRICE;
	}
	public String getSCOUTPRICE() {
		return SCOUTPRICE;
	}
	public void setSCOUTPRICE(String sCOUTPRICE) {
		SCOUTPRICE = sCOUTPRICE;
	}
	public String getNationcode() {
		return nationcode;
	}
	public void setNationcode(String nationcode) {
		this.nationcode = nationcode;
	}
	public String getIsexist() {
		return isexist;
	}
	public void setIsexist(String isexist) {
		this.isexist = isexist;
	}
	public String getLeaderposition1m() {
		return leaderposition1m;
	}
	public void setLeaderposition1m(String leaderposition1m) {
		this.leaderposition1m = leaderposition1m;
	}
	public String getLeaderposition1w() {
		return leaderposition1w;
	}
	public void setLeaderposition1w(String leaderposition1w) {
		this.leaderposition1w = leaderposition1w;
	}
	public String getLeaderposition2m() {
		return leaderposition2m;
	}
	public void setLeaderposition2m(String leaderposition2m) {
		this.leaderposition2m = leaderposition2m;
	}
	public String getLeaderposition2w() {
		return leaderposition2w;
	}
	public void setLeaderposition2w(String leaderposition2w) {
		this.leaderposition2w = leaderposition2w;
	}
	public String getLeaderposition3m() {
		return leaderposition3m;
	}
	public void setLeaderposition3m(String leaderposition3m) {
		this.leaderposition3m = leaderposition3m;
	}
	public String getLeaderposition3w() {
		return leaderposition3w;
	}
	public void setLeaderposition3w(String leaderposition3w) {
		this.leaderposition3w = leaderposition3w;
	}
	public String getLeaderposition4m() {
		return leaderposition4m;
	}
	public void setLeaderposition4m(String leaderposition4m) {
		this.leaderposition4m = leaderposition4m;
	}
	public String getLeaderposition4w() {
		return leaderposition4w;
	}
	public void setLeaderposition4w(String leaderposition4w) {
		this.leaderposition4w = leaderposition4w;
	}
	public String getSearch_lifestatus() {
		return search_lifestatus;
	}
	public void setSearch_lifestatus(String search_lifestatus) {
		this.search_lifestatus = search_lifestatus;
	}
	public String getSearch_liferank() {
		return search_liferank;
	}
	public void setSearch_liferank(String search_liferank) {
		this.search_liferank = search_liferank;
	}
	public String getLifec() {
		return lifec;
	}
	public void setLifec(String lifec) {
		this.lifec = lifec;
	}
	public String getLifes() {
		return lifes;
	}
	public void setLifes(String lifes) {
		this.lifes = lifes;
	}
	public String getLifeg() {
		return lifeg;
	}
	public void setLifeg(String lifeg) {
		this.lifeg = lifeg;
	}
	public String getLifetotal() {
		return lifetotal;
	}
	public void setLifetotal(String lifetotal) {
		this.lifetotal = lifetotal;
	}
	public String getNewscoutclscode1() {
		return newscoutclscode1;
	}
	public void setNewscoutclscode1(String newscoutclscode1) {
		this.newscoutclscode1 = newscoutclscode1;
	}
	public String getNewscoutclscode2() {
		return newscoutclscode2;
	}
	public void setNewscoutclscode2(String newscoutclscode2) {
		this.newscoutclscode2 = newscoutclscode2;
	}
	public String getNewscoutclscode3() {
		return newscoutclscode3;
	}
	public void setNewscoutclscode3(String newscoutclscode3) {
		this.newscoutclscode3 = newscoutclscode3;
	}
	public String getNewscoutclscode4() {
		return newscoutclscode4;
	}
	public void setNewscoutclscode4(String newscoutclscode4) {
		this.newscoutclscode4 = newscoutclscode4;
	}
	public String getNewscoutclscode5() {
		return newscoutclscode5;
	}
	public void setNewscoutclscode5(String newscoutclscode5) {
		this.newscoutclscode5 = newscoutclscode5;
	}
	public String getNewscoutclscode6() {
		return newscoutclscode6;
	}
	public void setNewscoutclscode6(String newscoutclscode6) {
		this.newscoutclscode6 = newscoutclscode6;
	}
	public String getCurrentscoutclscode1() {
		return currentscoutclscode1;
	}
	public void setCurrentscoutclscode1(String currentscoutclscode1) {
		this.currentscoutclscode1 = currentscoutclscode1;
	}
	public String getCurrentscoutclscode2() {
		return currentscoutclscode2;
	}
	public void setCurrentscoutclscode2(String currentscoutclscode2) {
		this.currentscoutclscode2 = currentscoutclscode2;
	}
	public String getCurrentscoutclscode3() {
		return currentscoutclscode3;
	}
	public void setCurrentscoutclscode3(String currentscoutclscode3) {
		this.currentscoutclscode3 = currentscoutclscode3;
	}
	public String getCurrentscoutclscode4() {
		return currentscoutclscode4;
	}
	public void setCurrentscoutclscode4(String currentscoutclscode4) {
		this.currentscoutclscode4 = currentscoutclscode4;
	}
	public String getCurrentscoutclscode5() {
		return currentscoutclscode5;
	}
	public void setCurrentscoutclscode5(String currentscoutclscode5) {
		this.currentscoutclscode5 = currentscoutclscode5;
	}
	public String getCurrentscoutclscode6() {
		return currentscoutclscode6;
	}
	public void setCurrentscoutclscode6(String currentscoutclscode6) {
		this.currentscoutclscode6 = currentscoutclscode6;
	}
	public String getPrescoutrate() {
		return prescoutrate;
	}
	public void setPrescoutrate(String prescoutrate) {
		this.prescoutrate = prescoutrate;
	}
	public String getCurrentbeaber() {
		return currentbeaber;
	}
	public void setCurrentbeaber(String currentbeaber) {
		this.currentbeaber = currentbeaber;
	}
	public String getCurrentcup() {
		return currentcup;
	}
	public void setCurrentcup(String currentcup) {
		this.currentcup = currentcup;
	}
	public String getCurrentscout() {
		return currentscout;
	}
	public void setCurrentscout(String currentscout) {
		this.currentscout = currentscout;
	}
	public String getCurrentventure() {
		return currentventure;
	}
	public void setCurrentventure(String currentventure) {
		this.currentventure = currentventure;
	}
	public String getCurrentrover() {
		return currentrover;
	}
	public void setCurrentrover(String currentrover) {
		this.currentrover = currentrover;
	}
	public String getCurrentcomposite() {
		return currentcomposite;
	}
	public void setCurrentcomposite(String currentcomposite) {
		this.currentcomposite = currentcomposite;
	}
	public String getCurrentother() {
		return currentother;
	}
	public void setCurrentother(String currentother) {
		this.currentother = currentother;
	}
	public String getCurrentnotapplicable() {
		return currentnotapplicable;
	}
	public void setCurrentnotapplicable(String currentnotapplicable) {
		this.currentnotapplicable = currentnotapplicable;
	}
	public String getCurrentnotapproved() {
		return currentnotapproved;
	}
	public void setCurrentnotapproved(String currentnotapproved) {
		this.currentnotapproved = currentnotapproved;
	}
	public String getCurrenttotal() {
		return currenttotal;
	}
	public void setCurrenttotal(String currenttotal) {
		this.currenttotal = currenttotal;
	}
	
	public String getPrebeaberrate() {
		return prebeaberrate;
	}
	public void setPrebeaberrate(String prebeaberrate) {
		this.prebeaberrate = prebeaberrate;
	}
	public String getPrecuprate() {
		return precuprate;
	}
	public void setPrecuprate(String precuprate) {
		this.precuprate = precuprate;
	}
	public String getPreventurerate() {
		return preventurerate;
	}
	public void setPreventurerate(String preventurerate) {
		this.preventurerate = preventurerate;
	}
	public String getPreroverrate() {
		return preroverrate;
	}
	public void setPreroverrate(String preroverrate) {
		this.preroverrate = preroverrate;
	}
	public String getPrecompositerate() {
		return precompositerate;
	}
	public void setPrecompositerate(String precompositerate) {
		this.precompositerate = precompositerate;
	}
	public String getPreotherrate() {
		return preotherrate;
	}
	public void setPreotherrate(String preotherrate) {
		this.preotherrate = preotherrate;
	}
	public String getPremissingrate() {
		return premissingrate;
	}
	public void setPremissingrate(String premissingrate) {
		this.premissingrate = premissingrate;
	}
	public String getPremissingapprovalrate() {
		return premissingapprovalrate;
	}
	public void setPremissingapprovalrate(String premissingapprovalrate) {
		this.premissingapprovalrate = premissingapprovalrate;
	}
	public String getRegisterconfirm() {
		return registerconfirm;
	}
	public void setRegisterconfirm(String registerconfirm) {
		this.registerconfirm = registerconfirm;
	}
	public String getDongwoo() {
		return dongwoo;
	}
	public void setDongwoo(String dongwoo) {
		this.dongwoo = dongwoo;
	}
	public String getSpecial() {
		return special;
	}
	public void setSpecial(String special) {
		this.special = special;
	}
	public String getTroopcount() {
		return troopcount;
	}
	public void setTroopcount(String troopcount) {
		this.troopcount = troopcount;
	}
	
	public String getLevels() {
		return levels;
	}
	public void setLevels(String levels) {
		this.levels = levels;
	}
	public String getLeadercurrent() {
		return leadercurrent;
	}
	public void setLeadercurrent(String leadercurrent) {
		this.leadercurrent = leadercurrent;
	}
	public String getLeaderpre() {
		return leaderpre;
	}
	public void setLeaderpre(String leaderpre) {
		this.leaderpre = leaderpre;
	}
	public String getScoutcurrent() {
		return scoutcurrent;
	}
	public void setScoutcurrent(String scoutcurrent) {
		this.scoutcurrent = scoutcurrent;
	}
	public String getScoutpre() {
		return scoutpre;
	}
	public void setScoutpre(String scoutpre) {
		this.scoutpre = scoutpre;
	}
	public String getScoutclscode1() {
		return scoutclscode1;
	}
	public void setScoutclscode1(String scoutclscode1) {
		this.scoutclscode1 = scoutclscode1;
	}
	public String getScoutclscode2() {
		return scoutclscode2;
	}
	public void setScoutclscode2(String scoutclscode2) {
		this.scoutclscode2 = scoutclscode2;
	}
	public String getScoutclscode3() {
		return scoutclscode3;
	}
	public void setScoutclscode3(String scoutclscode3) {
		this.scoutclscode3 = scoutclscode3;
	}
	public String getScoutclscode4() {
		return scoutclscode4;
	}
	public void setScoutclscode4(String scoutclscode4) {
		this.scoutclscode4 = scoutclscode4;
	}
	public String getScoutclscode5() {
		return scoutclscode5;
	}
	public void setScoutclscode5(String scoutclscode5) {
		this.scoutclscode5 = scoutclscode5;
	}
	public String getScoutclscode6() {
		return scoutclscode6;
	}
	public void setScoutclscode6(String scoutclscode6) {
		this.scoutclscode6 = scoutclscode6;
	}
	public String getScoutclscodeetc() {
		return scoutclscodeetc;
	}
	public void setScoutclscodeetc(String scoutclscodeetc) {
		this.scoutclscodeetc = scoutclscodeetc;
	}
	public String getScoutclscodenull() {
		return scoutclscodenull;
	}
	public void setScoutclscodenull(String scoutclscodenull) {
		this.scoutclscodenull = scoutclscodenull;
	}
	public String getScoutclscodenonconfirm() {
		return scoutclscodenonconfirm;
	}
	public void setScoutclscodenonconfirm(String scoutclscodenonconfirm) {
		this.scoutclscodenonconfirm = scoutclscodenonconfirm;
	}
	public String getScoutclscodesum() {
		return scoutclscodesum;
	}
	public void setScoutclscodesum(String scoutclscodesum) {
		this.scoutclscodesum = scoutclscodesum;
	}
	public String getGubun() {
		return gubun;
	}
	public void setGubun(String gubun) {
		this.gubun = gubun;
	}
	public String getRegisternonconfirm() {
		return registernonconfirm;
	}
	public void setRegisternonconfirm(String registernonconfirm) {
		this.registernonconfirm = registernonconfirm;
	}
	public String getRegistersum() {
		return registersum;
	}
	public void setRegistersum(String registersum) {
		this.registersum = registersum;
	}
	public String getRegistercontinue() {
		return registercontinue;
	}
	public void setRegistercontinue(String registercontinue) {
		this.registercontinue = registercontinue;
	}
	public String getRegisternew() {
		return registernew;
	}
	public void setRegisternew(String registernew) {
		this.registernew = registernew;
	}
	public String getDISPTROOPNO2() {
		return DISPTROOPNO2;
	}
	public void setDISPTROOPNO2(String dISPTROOPNO2) {
		DISPTROOPNO2 = dISPTROOPNO2;
	}
	public String getTROOPNAME2() {
		return TROOPNAME2;
	}
	public void setTROOPNAME2(String tROOPNAME2) {
		TROOPNAME2 = tROOPNAME2;
	}
	public String getLIFEMEMBERNO() {
		return LIFEMEMBERNO;
	}
	public void setLIFEMEMBERNO(String lIFEMEMBERNO) {
		LIFEMEMBERNO = lIFEMEMBERNO;
	}
	public String getLIFEENTERDATE() {
		return LIFEENTERDATE;
	}
	public void setLIFEENTERDATE(String lIFEENTERDATE) {
		LIFEENTERDATE = lIFEENTERDATE;
	}
	public String getLIFESTATUS() {
		return LIFESTATUS;
	}
	public void setLIFESTATUS(String lIFESTATUS) {
		LIFESTATUS = lIFESTATUS;
	}
	public int getOrderby() {
		return orderby;
	}
	public void setOrderby(int orderby) {
		this.orderby = orderby;
	}
	public String getLinkurl() {
		return linkurl;
	}
	public void setLinkurl(String linkurl) {
		this.linkurl = linkurl;
	}
	public String getLEVEL() {
		return LEVEL;
	}
	public void setLEVEL(String lEVEL) {
		LEVEL = lEVEL;
	}
	public String getBoardcategory() {
		return boardcategory;
	}
	public void setBoardcategory(String boardcategory) {
		this.boardcategory = boardcategory;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getDataid() {
		return dataid;
	}
	public void setDataid(String dataid) {
		this.dataid = dataid;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getIntroduce() {
		return introduce;
	}
	public void setIntroduce(String introduce) {
		this.introduce = introduce;
	}
	public String getLeadername() {
		return leadername;
	}
	public void setLeadername(String leadername) {
		this.leadername = leadername;
	}
	public String getLeaderimg() {
		return leaderimg;
	}
	public void setLeaderimg(String leaderimg) {
		this.leaderimg = leaderimg;
	}
	public String getMainimg() {
		return mainimg;
	}
	public void setMainimg(String mainimg) {
		this.mainimg = mainimg;
	}
	public String getOrganization() {
		return organization;
	}
	public void setOrganization(String organization) {
		this.organization = organization;
	}
	public String getPositionx() {
		return positionx;
	}
	public void setPositionx(String positionx) {
		this.positionx = positionx;
	}
	public String getPositiony() {
		return positiony;
	}
	public void setPositiony(String positiony) {
		this.positiony = positiony;
	}
	public String getLocal() {
		return local;
	}
	public void setLocal(String local) {
		this.local = local;
	}
	public String getLIFERANK() {
		return LIFERANK;
	}
	public void setLIFERANK(String lIFERANK) {
		LIFERANK = lIFERANK;
	}
	public String getAssociationcode_search() {
		return associationcode_search;
	}
	public void setAssociationcode_search(String associationcode_search) {
		this.associationcode_search = associationcode_search;
	}
	public String getUnitycode_search() {
		return unitycode_search;
	}
	public void setUnitycode_search(String unitycode_search) {
		this.unitycode_search = unitycode_search;
	}
	public String getTrooplevelcode_search() {
		return trooplevelcode_search;
	}
	public void setTrooplevelcode_search(String trooplevelcode_search) {
		this.trooplevelcode_search = trooplevelcode_search;
	}
	public String getTroopclscode1_search() {
		return troopclscode1_search;
	}
	public void setTroopclscode1_search(String troopclscode1_search) {
		this.troopclscode1_search = troopclscode1_search;
	}
	public String getTroopclscode2_search() {
		return troopclscode2_search;
	}
	public void setTroopclscode2_search(String troopclscode2_search) {
		this.troopclscode2_search = troopclscode2_search;
	}
	public String getParentorgno_search() {
		return parentorgno_search;
	}
	public void setParentorgno_search(String parentorgno_search) {
		this.parentorgno_search = parentorgno_search;
	}
	public String getScoutclscode_search() {
		return scoutclscode_search;
	}
	public void setScoutclscode_search(String scoutclscode_search) {
		this.scoutclscode_search = scoutclscode_search;
	}
	public String getMain() {
		return main;
	}
	public void setMain(String main) {
		this.main = main;
	}
	public String getAge() {
		return age;
	}
	public void setAge(String age) {
		this.age = age;
	}
	public String getRelation() {
		return relation;
	}
	public void setRelation(String relation) {
		this.relation = relation;
	}
	public String getSearch_status() {
		return search_status;
	}
	public void setSearch_status(String search_status) {
		this.search_status = search_status;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getCompany() {
		return company;
	}
	public void setCompany(String company) {
		this.company = company;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getApplydate() {
		return applydate;
	}
	public void setApplydate(String applydate) {
		this.applydate = applydate;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public String getPerson() {
		return person;
	}
	public void setPerson(String person) {
		this.person = person;
	}
	public String getEtc1() {
		return etc1;
	}
	public void setEtc1(String etc1) {
		this.etc1 = etc1;
	}
	public String getEtc2() {
		return etc2;
	}
	public void setEtc2(String etc2) {
		this.etc2 = etc2;
	}
	public String getPurpose() {
		return purpose;
	}
	public void setPurpose(String purpose) {
		this.purpose = purpose;
	}
	public MultipartFile getFile3root() {
		return file3root;
	}
	public void setFile3root(MultipartFile file3root) {
		this.file3root = file3root;
	}
	public MultipartFile getFile4root() {
		return file4root;
	}
	public void setFile4root(MultipartFile file4root) {
		this.file4root = file4root;
	}
	public MultipartFile getFile5root() {
		return file5root;
	}
	public void setFile5root(MultipartFile file5root) {
		this.file5root = file5root;
	}
	public String getFileidx() {
		return fileidx;
	}
	public void setFileidx(String fileidx) {
		this.fileidx = fileidx;
	}
	public String getSaveType() {
		return saveType;
	}
	public void setSaveType(String saveType) {
		this.saveType = saveType;
	}
	public String getRegister() {
		return register;
	}
	public void setRegister(String register) {
		this.register = register;
	}
	public String getFile3() {
		return file3;
	}
	public void setFile3(String file3) {
		this.file3 = file3;
	}
	public String getFile4() {
		return file4;
	}
	public void setFile4(String file4) {
		this.file4 = file4;
	}
	public String getFile5() {
		return file5;
	}
	public void setFile5(String file5) {
		this.file5 = file5;
	}
	public int getPageNumber() {
		return pageNumber;
	}
	public void setPageNumber(int pageNumber) {
		this.pageNumber = pageNumber;
	}
	public int getStartNumber() {
		return startNumber;
	}
	public void setStartNumber(int startNumber) {
		this.startNumber = startNumber;
	}
	public int getLimit() {
		return limit;
	}
	public void setLimit(int limit) {
		this.limit = limit;
	}
	public int getTotalPage() {
		return totalPage;
	}
	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}
	public int getOffset() {
		return offset;
	}
	public void setOffset(int offset) {
		this.offset = offset;
	}
	public int getLastPage() {
		return lastPage;
	}
	public void setLastPage(int lastPage) {
		this.lastPage = lastPage;
	}
	public int getStartPage() {
		return startPage;
	}
	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}
	public int getEndPage() {
		return endPage;
	}
	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}
	public String getNOTI() {
		return NOTI;
	}
	public void setNOTI(String nOTI) {
		NOTI = nOTI;
	}
	public String getUSEAT() {
		return USEAT;
	}
	public void setUSEAT(String uSEAT) {
		USEAT = uSEAT;
	}
	public String getBRDCTSNO() {
		return BRDCTSNO;
	}
	public void setBRDCTSNO(String bRDCTSNO) {
		BRDCTSNO = bRDCTSNO;
	}
	public String getBRDNO() {
		return BRDNO;
	}
	public void setBRDNO(String bRDNO) {
		BRDNO = bRDNO;
	}
	public String getSUBJECT() {
		return SUBJECT;
	}
	public void setSUBJECT(String sUBJECT) {
		SUBJECT = sUBJECT;
	}
	public String getCONTENTS() {
		return CONTENTS;
	}
	public void setCONTENTS(String cONTENTS) {
		CONTENTS = cONTENTS;
	}
	public String getVIEWCNT() {
		return VIEWCNT;
	}
	public void setVIEWCNT(String vIEWCNT) {
		VIEWCNT = vIEWCNT;
	}
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
