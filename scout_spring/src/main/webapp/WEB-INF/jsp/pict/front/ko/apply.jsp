<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fn"	   uri="http://java.sun.com/jsp/jstl/functions"%>



<!DOCTYPE html>
<html lang="ko">
	<%@ include file="../include/head.jsp" %>
	
    <div class="wrapper">
        <div class="sections right">
            <form action="">
                <div class="memberList">
                    <h2>기본정보</h2>
                    <div class="basicInputs">
                        <div class="basicInput">
                            <p>연맹/지구</p>
                            <select name="feder1" id="feder1">
                                <option value="feder1_1">전체</option>
                            </select>
                            <select name="feder2" id="feder2">
                                <option value="feder2_1">전체</option>
                            </select>
                        </div>
                        <div class="basicInput">
                            <p>등급</p>
                            <select name="rating" id="rating">
                                <option value="rating_1">개인</option>
                            </select>
                        </div>
                    </div>
                    <div class="basicInputs">
                        <div class="basicInput">
                            <p>단위대구분</p>
                            <select name="dae1" id="dae1">
                                <option value="dae1_1">전체</option>
                            </select>
                            <select name="dae2" id="dae2">
                                <option value="dae2_1">전체</option>
                            </select>
                        </div>
                        <div class="basicInput">
                            <p>스카우트구분</p>
                            <select name="scout_gubun" id="scout_gubun">
                                <option value="scout_gubun_1">컵</option>
                            </select>
                        </div>
                    </div>
                    <div class="basicInputs">
                        <div class="basicInput">
                            <p>대번호</p>
                            <input type="text" name="dae_num">
                        </div>
                        <div class="basicInput">
                            <p>결성일</p>
                            <input type="date" name="organ_date" style="width: 140px;">
                        </div>
                    </div>
                    <div class="basicInputs">
                        <div class="basicInput">
                            <p>영문명</p>
                            <input type="text" name="e_name">
                        </div>
                    </div>
                    <div class="basicInputs" style="align-items: center;">
                        <div class="basicInput">
                            <p>단위대명</p>
                            <input type="text" name="phone">
                        </div>
                        <span style="white-space: nowrap;">관할 교육청 : 없음</span>
                    </div>
                    <div class="basicInputs flex">
                        <p style="display: flex; justify-content: center; align-items: center;">주소</p>
                        <div class="zip">
                            <div class="zipBox">
                                <input type="text" name="zip" id="zip" readonly>
                                <a href="#lnk">우편번호</a>
                                <input type="text" name="address" id="address" style="width: 300px;">
                            </div>
                        </div>
                    </div>
                    <div class="basicInputs">
                        <div class="basicInput">
                            <p>전화</p>
                            <input type="text" name="tel">
                        </div>
                        <div class="basicInput">
                            <p>팩스</p>
                            <input type="text" name="fax">
                        </div>
                    </div>
                    <div class="basicInputs">
                        <p>비고</p>
                        <textarea name="etc" id="etc" cols="30" rows="10"></textarea>
                    </div>
                </div>
                <div class="memberList basicBottom pd">
                    <div class="basicInput">
                        <p>등록</p>
                        <span>마이그레이션 | 2024-04-17 09:26</span>
                    </div>
                    <div class="basicInput">
                        <p>수정</p>
                        <span>한지현 | 2024-04-17 09:26</span>
                    </div>
                </div>
                <div class="memberList basicBottom grid4">
                    <div class="basicInput">
                        <p>최초등록년도</p>
                        <span>2019</span>
                    </div>
                    <div class="basicInput">
                        <p>대원수</p>
                        <span>20</span>
                    </div>
                    <div class="basicInput">
                        <p>남자</p>
                        <span>9</span>
                    </div>
                    <div class="basicInput">
                        <p>여자</p>
                        <span>11</span>
                    </div>
                </div>
                <div class="memberList basicBottom grid4">
                    <div class="basicInput">
                        <p>최종등록일</p>
                        <span>2019</span>
                    </div>
                    <div class="basicInput">
                        <p>지도자수</p>
                        <span>20</span>
                    </div>
                    <div class="basicInput">
                        <p>남자</p>
                        <span>9</span>
                    </div>
                    <div class="basicInput">
                        <p>여자</p>
                        <span>11</span>
                    </div>
                </div>
            </form>
            <p class="listTit">관리지도자</p>
            <div class="memberViews right join">
                <div class="viewHead">
                    <p>No</p>
                    <p>회원번호</p>
                    <p>지도자직책</p>
                    <p>성명</p>
                    <p>단위대직책</p>
                    <p>집전화</p>
                    <p>사무실전화</p>
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
            <p class="listTit">연소지도자</p>
            <div class="memberViews right join">
                <div class="viewHead">
                    <p>No</p>
                    <p>회원번호</p>
                    <p>지도자직책</p>
                    <p>성명</p>
                    <p>단위대직책</p>
                    <p>집전화</p>
                    <p>사무실전화</p>
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
</html>