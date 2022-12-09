<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/app/resources/css/reset.css">
<link rel="stylesheet" href="/app/resources/css/main/mainSec.css">
</head>
<body>
    <div class="the-lower-part-of-main">
        <div class="the-upper">
            <div class="mentoring-title">
                <div class="empty"></div>
                <div class="mentoring-title-icon">선배와 동료들에게<span id="color-change">&nbsp;조언</span>을 구해보세요<img width="35px" height="35px" src="https://cdn-icons-png.flaticon.com/128/7991/7991313.png"></div>
                <div class="mentoring-content-more">더보기<img width="10px" height="10px" src="https://cdn-icons-png.flaticon.com/128/271/271228.png"></div>
            </div>
            <div class="mentoring-content">
                <div class="slice-as-three">
                    <div class="prevBtn"></div>
                        <div class="container">
                            <ul class="container-slide">
                                <c:forEach var="slide" begin="1" end="12" >
                                    <li class="slide">
                                        <div class="slide-box">
                                            <div id="mentoring-ad1">서버개발자 취준생을 위한<br>멘토링/고민상담/이력서 첨삭</div>
                                            <div id="mentoring-ad2">비바리퍼블리카(토스)에서 근무하고<br>있는 4년차 서버개발자입니다.</div>
                                            <div id="mentoring-ad3">
                                                <div id="border-box1">
                                                    <div id="inner-box1"></div>
                                                </div>
                                                <div id="border-box2">
                                                    <div id="inner-box2">sunny</div>
                                                </div>
                                                <div id="border-box3">
                                                    <div id="inner-box3"></div>
                                                </div>
                                                <div id="border-box4">
                                                    <div id="inner-box4"></div>
                                                </div>
                                            </div>
                                            <div id="mentoring-ad4">직무   백엔드/서버 개발자<br>경력   미들(4~8년)</div>
                                        </div>
                                    </li>
                                </c:forEach>
                            </ul>
                        </div>
                    <div class="nextBtn"></div>
                </div>
            </div>
        </div>
        <div class="the-middle">
            <div class="studying-title">
                <div class="empty"></div>
                <div class="studying-title-icon"><img src="/app/resources/img/main/LEARNER.png"></div>
                <div class="studying-content-more">더보기<img width="10px" height="10px" src="https://cdn-icons-png.flaticon.com/128/271/271228.png"></div>
            </div>
            <div class="studying-content">
                <div class="slice-as-three-sec">
                    <div class="prevBtn-sec"></div>
                        <div class="container-sec">
                            <ul class="container-slide-sec">
                                <c:forEach var="slide-sec" begin="1" end="12" >
                                    <li class="slide-sec"></li>
                                </c:forEach>
                            </ul>
                        </div>
                    <div class="nextBtn-sec"></div>
                </div>
            </div>
        </div>
        <div class="the-lower">
            <div class="notice">
                <div class="notice-list">
                    <div class="lists">
                        <div class="list" id="boldline">
                            <div class="notice-title">공지사항</div>
                            <div class="arrow"><img width="50px" height="50px" src="https://cdn-icons-png.flaticon.com/128/271/271228.png"></div>
                        </div>
                        <div class="list" id="list-one">º 런타임에서 알려드립니다.</div>
                        <div class="list" id="list-two">º 런타임 이용약관 / 개인정보 처리방침 안내</div>
                        <div class="list" id="list-three">º 멘토링 신청 기능 업데이트 안내</div>
                        <div class="list" id="list-four">º 스킨샵내 추가기능 업데이트 안내</div>
                        <div class="list" id="list-five">º 서비스 장애 발생 공지</div>
                    </div>
                </div>
                <div class="faq-per-person">
                    <div class="faq-div">
                        <div class="faq-title">런타임에게 궁금한 점을<br>문의게시판에 남겨주세요!</div>
                        <div class="faq-content"><u>자주 묻는 질문들은 FAQ에서도 확인이 가능합니다.</u><img width="20px" height="20px" src="https://cdn-icons-png.flaticon.com/128/187/187130.png"></div>
                        <div class="faq-box">
                            <div id="personal-faq-box">1:1 문의하기</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
<%@ include file = "/WEB-INF/views/common/footer.jsp" %>
</body>
</html>