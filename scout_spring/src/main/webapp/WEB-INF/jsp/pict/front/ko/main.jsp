<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fn"	   uri="http://java.sun.com/jsp/jstl/functions"%>


<%@ include file="./include/head.jsp" %>
<!-- <%@ include file="./include/header.jsp" %> -->


    <div class="wrapper">
        <div class="topSection">
            <form action="">        
                <div class="search">
                    <div class="wholeSelect">
                        <p>조회조건</p>
                        <select name="search" id="search">
                            <option value="1">전체</option>
                        </select>
                    </div>
                    <div class="memNumber">
                        <p>회원번호</p>
                        <input type="text" name="number">
                    </div>  
                </div>
            </form>
        </div>
        <div class="bottomSection">
            <div class="sections">
                <form action="">
                    <div class="memberList">
                        <h2>통합회원 조회/목록</h2>
                        <div class="searchTable">
                            <div class="searchInput">
                                <p>법정생년</p>
                                <input type="text" name="birth">
                            </div>
                            <div class="searchInput">
                                <p>가입이력</p>
                                <select name="history" id="history">
                                    <option value="history_1">-----</option>
                                </select>
                            </div>
                            <div class="searchInput">
                                <p>성명</p>
                                <input type="text" name="name">
                            </div>
                            <div class="searchInput">
                                <p>회원구분</p>
                                <select name="division" id="division">
                                    <option value="division_1">개인</option>
                                </select>
                            </div>
                            <div class="searchInput">
                                <p>회원등급</p>
                                <select name="grade" id="grade">
                                    <option value="grade_1">----</option>
                                </select>
                            </div>
                        </div>
                        <div class="dateSreach">
                            <p>등록일</p>
                            <input type="date" id="start" name="start" value=""/>
                            -
                            <input type="date" id="end" name="end" value=""/>
                        </div>
                        <div class="btnWrap">
                            <button type="button">조회</button>
                        </div>
                    </div>
                </form>
                <div class="memberViews">
                    <div class="viewHead">
                        <p>회원번호</p>
                        <p>회원명</p>
                        <p>법정생년월일</p>
                        <p>회원구분</p>
                        <p>회원등급</p>
                        <p></p>
                        <p></p>
                        <p></p>
                        <p></p>
                        <p></p>
                        <p></p>
                        <p></p>
                        <p></p>
                        <p></p>
                    </div>
                    <ul>
                        <li>
                            <p>1234567</p>
                            <p>한지현</p>
                            <p>한지현</p>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="sections right">
                <form action="">
                    <div class="memberList">
                        <h2>기본정보</h2>
                        <div class="basicInputs">
                            <div class="basicInput">
                                <p>회원번호</p>
                                <span>1234</span>
                            </div>
                            <div class="basicInput">
                                <p>회원구분</p>
                                <select name="division" id="division">
                                    <option value="division_1">개인</option>
                                </select>
                            </div>
                            <div class="basicInput">
                                <p>회원등급</p>
                                <select name="grade" id="grade">
                                    <option value="grade_1">대원</option>
                                </select>
                            </div>
                        </div>
                        <div class="basicInputs">
                            <div class="basicInput">
                                <p>생년월일</p>
                                <input type="text" name="birth">
                            </div>
                            <div class="basicInput">
                                <p>전종여부</p>
                                <select name="reader" id="reader">
                                    <option value="reader_1">----</option>
                                </select>
                            </div>
                        </div>
                        <div class="basicInputs">
                            <div class="basicInput">
                                <p>성명</p>
                                <span>한글</span>
                                <input type="text" name="k_name">
                                <span>영문</span>
                                <input type="text" name="e_name">
                                <input type="radio" name="gender" value="man" id="man">
                                <label for="man">남</label>
                                <input type="radio" name="gender" value="woman" id="woman">
                                <label for="woman">여</label>
                            </div>
                        </div>
                        <div class="basicInputs">
                            <div class="basicInput">
                                <p>집전화</p>
                                <input type="text" name="phone">
                            </div>
                            <div class="basicInput">
                                <p>휴대전화</p>
                                <input type="text" name="mobile">
                            </div>
                            <div class="basicInput">
                                <p>이메일</p>
                                <input type="email" name="email" style="width: 150px;">
                            </div>
                        </div>
                        <div class="basicInputs flex">
                            <p style="display: flex; justify-content: center; align-items: center;">주소</p>
                            <div class="zip">
                                <div class="zipBox">
                                    <input type="text" name="zip" id="zip" readonly>
                                    <a href="#lnk">우편번호</a>
                                    <input type="checkbox" name="get_post" id="get_post">
                                    <label for="get_post">우편물수령지</label>
                                </div>
                                <div class="addBox">
                                    <input type="text" name="address" id="address">
                                </div>
                            </div>
                            <div class="msgJob">
                                <div class="msg">
                                    <p>수신여부</p>
                                    <input type="checkbox" name="get_msg" id="sms">
                                    <label for="sms">SMS</label>
                                    <input type="checkbox" name="get_msg" id="email">
                                    <label for="email">Email</label>
                                </div>
                                <div class="msg job">
                                    <p>직업</p>
                                    <select name="job" id="job">
                                        <option value="job_1">----</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                    </div>
                    <i></i>
                    <div class="memberList basicBottom">
                        <div class="basicInput">
                            <p>지도자학교/단체</p>
                            <span>(일반)</span>
                        </div>
                        <div class="basicInput">
                            <p>승진가산점</p>
                            <input type="text" name="additional" id="additional">
                        </div>
                        <div class="basicInput">
                            <p>훈련과정</p>
                            <span>상급</span>
                        </div>
                        <div class="basicInput">
                            <p>전문과정</p>
                            <span>기타</span>
                        </div>
                        <div class="basicInput">
                            <p>자격증</p>
                            <span>커미셔너</span>
                        </div>
                        <div class="basicInput">
                            <p>평생회원</p>
                            <span>일반(1717)</span>
                        </div>
                    </div>
                    <i></i>
                    <div class="memberList basicBottom2">
                        <div class="basicInput">
                            <p>대원학교/단체</p>
                            <input type="text" name="group" id="group" readonly>
                            <a href="#lnk">학교/단체검색</a>
                            <input type="text" name="group1" id="group1" style="width: 30px;">
                            학년
                            <input type="text" name="group2" id="group2" style="width: 30px;">
                            반
                        </div>
                        <div class="basicInputs" style="margin-top: 10px;">
                            <div class="basicInput">
                                <p>대원진보</p>
                                <span></span>
                            </div>
                            <div class="basicInput">
                                <p>대원기능장</p>
                                <span></span>
                            </div>
                        </div>
                    </div>
                    <i></i>
                    <div class="memberList basicBottom">
                        <div class="basicInput">
                            <p>등록</p>
                            <span>상급</span>
                        </div>
                        <div class="basicInput">
                            <p>수정</p>
                            <span>상급</span>
                        </div>
                    </div>
                </form>
                <div class="memberViews right">
                    <div class="viewHead">
                        <p>No</p>
                        <p>연도</p>
                        <p>연맹</p>
                        <p>연합회</p>
                        <p>단위대</p>
                        <p>학교</p>
                        <p></p>
                        <p></p>
                        <p></p>
                        <p></p>
                        <p></p>
                        <p></p>
                        <p></p>
                        <p></p>
                    </div>
                    <ul>
                        <li>
                            <p>1234567</p>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>


