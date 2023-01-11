<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   

<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Insert title here</title>
    <link rel="stylesheet" href="/app/resources/css/main/main.css?ver=1" />

    <link
      rel="stylesheet"
      type="text/css"
      href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"
    />

    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap"
      rel="stylesheet"
    />
    <style>
      .main-banner {
        display: flex !important;
        justify-content: center !important;
      }

      .main-banner img{
        width: 1200px;
      }

        
      .arrow-btn {
        font-size: 45px !important;
        color: white;
      }

      .notice-more-btn {
        font-size: 33px !important;
        cursor: pointer;
      }

      .main-popup {
        position: fixed;
        z-index: 10000;
        box-shadow: 0px 1px 4px rgba(0, 0, 0, 0.151);
      }

      .main-popup-img{
        width: 340px;
        height: 240px;
        cursor: pointer;
      }

      .main-popup-img img {
        width: 100%;
        height: 100%;
      }

      .main-popup-btn {
        display: flex;
      }

      .main-popup-btn div {
        display: flex;
        justify-content: center;
        align-items: center;
        width: 50%;
        height: 50px;
        background-color: white;
        border: 1px solid rgb(237, 237, 237);
        font-size: 14px;
        cursor: pointer;
      }

      .main-popup-btn label {
        width: 100%;
        height: 100%;
        display: flex;
        justify-content: center;
        align-items: center;
      }

      .main-popup-btn div:hover {
        background-color: rgb(248, 248, 248);
      }

      .none {
        display: none;
      }

    </style>
  </head>
  <body>
    <%@ include file="/WEB-INF/views/common/header.jsp" %>
    <main id="learntime-main">
      <div>
      	<c:forEach items="${popupList}" var="map">
      		<c:if test="${map.LOCATION == 'center' && map.APPLY == 'loginMember' && loginMember != null}">
		        <div class="main-popup none" name="popup${map.NO}" style="top: calc(50% - 170px); left: calc(50% - 170px);" >   
              <div class="main-popup-img" onclick="window.open('${map.LINK}')">
                <img src="${path}/resources/upload/popup/${map.IMG_PATH}" alt="">
              </div>
              <div class="main-popup-btn">
                <div><label class="today_close"><input class="none" type="checkbox" name="today_close${map.NO}">오늘 하루 보지 않기</label> </div>
                <div onclick="closePopup(event);">닫기</div>
              </div>   		
      		</c:if>
          <c:if test="${map.LOCATION == 'center' && map.APPLY == 'all'}">
		        <div class="main-popup none" name="popup${map.NO}" style="top: calc(50% - 170px); left: calc(50% - 170px);" >   
              <div class="main-popup-img" onclick="window.open('${map.LINK}')">
                <img src="${path}/resources/upload/popup/${map.IMG_PATH}" alt="">
              </div>
              <div class="main-popup-btn">
                <div><label class="today_close"><input class="none" type="checkbox" name="today_close${map.NO}">오늘 하루 보지 않기</label> </div>
                <div onclick="closePopup(event);">닫기</div>
              </div>   		
      		</c:if>
      		<c:if test="${map.LOCATION == 'leftTop' && map.APPLY == 'loginMember' && loginMember != null}">
		        <div class="main-popup none" name="popup${map.NO}" style="top:111px; left:111px;">      	
              <div class="main-popup-img" onclick="window.open('${map.LINK}')">
                <img src="${path}/resources/upload/popup/${map.IMG_PATH}" alt="">
              </div>
              <div class="main-popup-btn">
                <div><label class="today_close"><input class="none" type="checkbox" name="today_close${map.NO}">오늘 하루 보지 않기</label> </div>
                <div onclick="closePopup(event);">닫기</div>
              </div>	
      		</c:if>
          <c:if test="${map.LOCATION == 'leftTop' && map.APPLY == 'all'}">
		        <div class="main-popup none" name="popup${map.NO}" style="top:111px; left:111px;">   
              <div class="main-popup-img" onclick="window.open('${map.LINK}')">
                <img src="${path}/resources/upload/popup/${map.IMG_PATH}" alt="">
              </div>
              <div class="main-popup-btn">
                <div><label class="today_close"><input class="none" type="checkbox" name="today_close${map.NO}">오늘 하루 보지 않기</label> </div>
                <div onclick="closePopup(event);">닫기</div>
              </div>   		
      		</c:if>
      		<c:if test="${map.LOCATION == 'rightTop' && map.APPLY == 'loginMember' && loginMember != null}">
		        <div class="main-popup none" name="popup${map.NO}" style="top:111px; right:111px;">      		
              <div class="main-popup-img" onclick="window.open('${map.LINK}')">
                <img src="${path}/resources/upload/popup/${map.IMG_PATH}" alt="">
              </div>
              <div class="main-popup-btn">
                <div><label class="today_close"><input class="none" type="checkbox" name="today_close${map.NO}">오늘 하루 보지 않기</label> </div>
                <div onclick="closePopup(event);">닫기</div>
              </div>
      		</c:if>
          <c:if test="${map.LOCATION == 'rightTop' && map.APPLY == 'all'}">
		        <div class="main-popup none" name="popup${map.NO}" style="top:111px; right:111px;">    
              <div class="main-popup-img" onclick="window.open('${map.LINK}')">
                <img src="${path}/resources/upload/popup/${map.IMG_PATH}" alt="">
              </div>
              <div class="main-popup-btn">
                <div><label class="today_close"><input class="none" type="checkbox" name="today_close${map.NO}">오늘 하루 보지 않기</label> </div>
                <div onclick="closePopup(event);">닫기</div>
              </div>  		
      		</c:if>
	          
	        </div>
      	</c:forEach>
      </div>
      <div id="banner-slider">
      	<c:forEach items="${bannerList}" var="map">
            <section class="main-banner cursor" style="background-color:${map.COLOR};" onclick="window.open('${map.LINK}')">
                <img src="/app/resources/upload/banner/${map.IMG_PATH}" alt="메인배너" />
            </section>
      	</c:forEach>
      </div>
      <section class="main-study-section middle">
        <div class="main-study">
          <div class="main-study-title-area">
            <div></div>
            <div class="main-study-title center">
              <span class="bold700">함께 성장할&nbsp</span>
              <span class="main-color bold700">스터디</span
              ><span class="bold700">에 가입해보세요🌱</span>
            </div>
            <div class="main-more">
              <a href="${path}/study/list"
                ><span>더보기</span><i class="fa-solid fa-chevron-right"></i
              ></a>
            </div>
          </div>
          <article class="main-study-detail-area">
            <ul class="main-study-detail-list post-wrapper1">
            <c:forEach items="${groupList}" var="map">

               <div class="main-study-detail">
                <div class="main-study-detail__date-like space-between">
                  <div class="soft-gray">시작 예정일 | ${map.START_DATE}</div>
                  <div>
                    <i class="fa-solid fa-heart like-icon main-color"></i
                    ><span class="soft-gray">${map.LIKE_CNT}</span>
                  </div>
                </div>
                <h1 class="study-title" onclick="location.href='${path}/study/detail?gno=${map.NO}&keyword=${keyword}&tag=${fn:join(tagList,',')}&techType=인기&techStack=${fn:join(techStack,',')}&type=전체&order=recent&status=${status}'">
                  ${map.TITLE}
                </h1>
                <ul class="study-tag-list flex soft-gray">
                  <li class="study-tag">#${map.TYPE}</li>
                  <li class="study-tag">#${map.WAY}</li>
                  <li class="study-tag">#${map.NUMBER_PEOPLE}명</li>
                  <li class="study-tag">#${map.PERIOD}</li>
                </ul>
                <ul class="study-tech-list flex">
                      <c:forEach items="${map.techStackList}" var="ts">
                        <li class="study-tech">
                          <img
                            src="${path}/resources/upload/techStack/${ts.IMG_PATH}"
                            alt=""
                          />
                        </li>
                      </c:forEach>
                    </ul>
                <section class="flex">
                  <div class="user-profile">
                    <img class="cursor" src="${path}${map.IMG_PATH}" alt="" onclick="location.href='${path}/member/mypage/home?no=${map.MEMBER_NO}'"/>
                  </div>
                  <div class="main-study-detail__profile-hit-cmt-scrap">
                    <div class="user-nick bold700 cursor" onclick="location.href='${path}/member/mypage/home?no=${map.MEMBER_NO}'">${map.NICK }</div>
                    <ul class="view-cmt-scrap-list flex soft-gray">
                      <li><i class="fa-regular fa-eye"></i><span>${map.HIT }</span></li>
                      <li>
                        <i class="fa-regular fa-comment-dots"></i><span>${map.CMT_CNT}</span>
                      </li>
                      <li>
                        <i class="fa-regular fa-bookmark"></i><span>${map.SCRAP_CNT}</span>
                      </li>
                    </ul>
                  </div>
                </section>
              </div>
            
            </c:forEach>
             
            </ul>
          </article>
        </div>
      </section>
      <section class="main-qna-section middle">
        <div class="main-qna">
          <div class="main-qna-title-area">
            <div></div>
            <div class="main-qna-title center">
              <span class="bold700">궁금한건&nbsp</span>
              <span class="main-color bold700">질문</span
              ><span class="bold700">해보세요 💡</span>
            </div>
            <div class="main-more">
              <!-- <a href=""
                ><span>더보기</span><i class="fa-solid fa-chevron-right"></i
              ></a> -->
            </div>
          </div>
          <ul class="qna-btn-list space-between">
            <a class="qna-btn flex-column" href=""
              ><div>궁금한 질문을<br />남겨보세요</div>
              <img src="/app/resources/img/study/Inquiry.png" alt=""
            /></a>
            <a class="qna-btn flex-column" href=""
              ><div>오늘의 질문</div>
              <img src="/app/resources/img/study/Today.png" alt=""
            /></a>
            <a class="qna-btn flex-column" href=""
              ><div>많이 본 질문</div>
              <img src="/app/resources/img/study/Popular.png" alt=""
            /></a>
            <a class="qna-btn flex-column" href="${path}/qna/list"
              ><div>전체보기</div>
              <img src="/app/resources/img/study/total.png" alt=""
            /></a>
          </ul>
          <section class="main-qna-detail-section flex">
            <div class="main-qna-detail__left">
              <div class="main-qna-detail__header space-between">
                <h1 class="main-qna-detail__title bold700">
                  답변을 기다리는 질문
                </h1>
                <div>
                  <!-- <a href=""><i class="fa-solid fa-chevron-left"></i></a>
                  <a href=""><i class="fa-solid fa-chevron-right"></i></a> -->
                </div>
              </div>
              <div class="flex-start">
                <div class="qna-category">
                  <ul>
                    <li><i class="fa-solid fa-bars"></i>전체</li>
                    <li>
                      <img
                        src="/app/resources/img/study/DevelopmentSkill.png"
                        alt=""
                      />기술
                    </li>
                    <li>
                      <img
                        src="/app/resources/img/study/Resume.png"
                        alt=""
                      />커리어
                    </li>
                  </ul>
                </div>
                
                <div class="qna-content-left flex post-wrapper2">
                  <c:forEach items="${learningList}" var="map" varStatus="status" step="2">
                    <ul>
                      <li class="cursor" onclick="location.href='${path}/qna/detail?qno=${map.NO}'">
                        <div>
                          <div class="qna-content-title bold700 black">
                            ${map.TITLE}
                          </div>
                          <div class="qna-content-detail">
                            ${map.CONTENT}
                          </div>
                        </div>
                        <div class="flex cmt-date soft-gray">
                          <div>답변 ${map.REPLY_CNT}</div>
                          <div>${map.ENROLL_DATE}</div>
                        
                        </div>
                      </li>
                      <li class="border-top cursor" onclick="location.href='${path}/qna/detail?qno=${learningList[status.index+1].NO}'">
                        <div>
                          <div class="qna-content-title bold700 black">
                            ${learningList[status.index+1].TITLE}
                          </div>
                          <div class="qna-content-detail">
                            ${learningList[status.index+1].CONTENT}
                          </div>
                        </div>
                        <div class="flex cmt-date soft-gray">
                          <div>답변 ${learningList[status.index+1].REPLY_CNT}</div>
                          <div>${learningList[status.index+1].ENROLL_DATE}</div>
                      
                        </div>
                      </li>
                    </ul>

                  </c:forEach>
                  
                </div>
              </div>
            </div>
            <div class="main-qna-detail__right">
              <div class="main-qna-detail__header space-between">
                <h1 class="main-qna-detail__title bold700">인기 Q&A</h1>
                <div>
                  <!-- <a href=""><i class="fa-solid fa-chevron-left"></i></a>
                  <a href=""><i class="fa-solid fa-chevron-right"></i></a> -->
                </div>
              </div>
              <div>
                <div class="qna-content-right flex post-wrapper3">
                  <c:forEach items="${popularLearningList}" var="map" varStatus="status" step="4">
                    <ul>
                      <div class="flex">
                        <li class="cursor" onclick="location.href='${path}/qna/detail?qno=${map.NO}'">
                          <div>
                            <div class="qna-content-title-right bold700">
                              <span class="main-color">${status.index + 1}</span>
                              <span class="black">${map.TITLE}</span>
                            </div>
                            <div class="qna-content-detail-right flex">
                                <img
                                  src="/app/resources/img/study/Down-Right.png"
                                  alt=""
                                />
                                <div class="qna-content-detail-right-test">
                                  ${map.CONTENT}
                                </div>
                            </div>
                          </div>
                          <div class="flex hit-cmt soft-gray">
                            <div class="blue">조회수  ${map.HIT}</div>
                            <div>| 답변  ${map.REPLY_CNT}</div>
                            <div></div>
                          </div>
                        </li>
                        <li class="cursor" onclick="location.href='${path}/qna/detail?qno=${learningList[status.index+1].NO}'">
                          <div>
                            <div class="qna-content-title-right bold700 black">
                              <span class="main-color">${status.index + 2}</span>
                              <span class="black">${learningList[status.index+1].TITLE}</span>
                            </div>
                            <div class="qna-content-detail-right flex">
                              <img
                                src="/app/resources/img/study/Down-Right.png"
                                alt=""
                              />
                              <div>
                                ${learningList[status.index+1].CONTENT}
                              </div>
                            </div>
                          </div>
                          <div class="flex hit-cmt soft-gray">
                            <div class="blue">조회수 ${learningList[status.index+1].HIT}</div>
                            <div>| 답변 ${learningList[status.index+1].REPLY_CNT}</div>
                            <div></div>
                          </div>
                        </li>
                      </div>
                      <div class="flex border-top">
                        <li class="cursor" onclick="location.href='${path}/qna/detail?qno=${learningList[status.index+2].NO}'">
                          <div>
                            <div class="qna-content-title-right bold700 black">
                              <span class="main-color">${status.index + 3}</span>
                              <span class="black">${learningList[status.index+2].TITLE}</span>
                            </div>
                            <div class="qna-content-detail-right flex">
                              <img
                                src="/app/resources/img/study/Down-Right.png"
                                alt=""
                              />
                              <div>
                                ${learningList[status.index+2].CONTENT}
                              </div>
                            </div>
                          </div>
                          <div class="flex hit-cmt soft-gray">
                            <div class="blue">조회수 ${learningList[status.index+2].HIT}</div>
                            <div>| 답변 ${learningList[status.index+2].REPLY_CNT}</div>
                            <div></div>
                          </div>
                        </li>
                        <li class="cursor" onclick="location.href='${path}/qna/detail?qno=${learningList[status.index+3].NO}'">
                          <div>
                            <div class="qna-content-title-right bold700 black">
                              <span class="main-color">${status.index + 4}</span>
                              <span class="black">${learningList[status.index+3].TITLE}</span>
                            </div>
                            <div class="qna-content-detail-right flex">
                              <img
                                src="/app/resources/img/study/Down-Right.png"
                                alt=""
                              />
                              <div>
                                ${learningList[status.index+3].CONTENT}
                              </div>
                            </div>
                          </div>
                          <div class="flex hit-cmt soft-gray">
                            <div class="blue">조회수 ${learningList[status.index+3].HIT}</div>
                            <div>| 답변 ${learningList[status.index+3].REPLY_CNT}</div>
                            <div></div>
                          </div>
                        </li>
                      </div>
                    </ul>

                  </c:forEach>
                  
                </div>
              </div>
            </div>
          </section>
        </div>
      </section>
      <section class="main-mentor-banner">
        <div>MENTORING</div>
        <div>
          <span>가장 쉽게</span>
          <span class="bold700">지식</span>을
          <span class="bold700">공유</span>하는 방법
        </div>
        <div>나누고 싶은 지식이 있는 누구나 멘토가 될 수 있어요!</div>
        <div>
          업계 후배들 혹은 동료들이더 빨리, 더 멀리 갈 수 있도록 도와주세요!
        </div>
        <div class="flex main-mentor-banner-list">
          <a href="" id="apply-mentor">멘토 지원하기</a>
          <a href="${path}/mentor/list">멘토링 신청하기</a>
        </div>
      </section>
      <div class="the-lower-part-of-main">
        <div class="the-upper">
            <div class="mentoring-title">
                <div class="empty"></div>
                <div class="mentoring-title-icon">선배와 동료들에게<span id="color-change">&nbsp;조언</span>을 구해보세요&nbsp;<img width="30px" height="30px" src="https://cdn-icons-png.flaticon.com/128/7991/7991313.png"></div>
                <div class="mentoring-content-more"><a href="${path}/mentor/list">더보기</a><img width="12px" height="13px" src="https://cdn-icons-png.flaticon.com/128/271/271228.png"></div>
            </div>
            <div class="mentoring-content">
                <div class="slice-as-three relative">
                  <button type="button" class="prevBtn"><i class="fa-solid fa-chevron-left"></i></button>
                        <div class="container">
                            <ul class="container-slide">
                                <c:forEach items="${mentorList}" var="vo" begin="1" end="12" >
                                    <li class="slide">
                                        <div class="slide-box">
                                          <div class="mentoring-title2 cursor"  onclick="location.href='${path}/mentor/list'">
                                            <div id="mentoring-ad1">${vo.title}</div>
                                            <div id="mentoring-ad2">${vo.intro}</div>

                                          </div>
                                            <div id="mentoring-ad3">
                                                <div id="border-box1">
                                                    <div id="inner-box1"><img src="${path}${vo.writerImg}" alt="" class="cursor" onclick="location.href='${path}/member/mypage/home?no=${vo.no}'"></div>
                                                </div>
                                                <div id="border-box2">
                                                    <div class="cursor" id="inner-box2" onclick="location.href='${path}/member/mypage/home?no=${vo.no}'">${vo.nick}</div>
                                                </div>
                                                <div id="border-box3">
                                                    <div id="inner-box3">${vo.currentJob}</div>
                                                </div>
                                                <div id="border-box4">
                                                    <div id="inner-box4"><i class="fa-solid fa-heart like-icon main-color"></i><span>50</span></div>
                                                </div>
                                            </div>
                                            <div id="mentoring-ad4">
                                              <div>직무&nbsp;&nbsp;${vo.jobName}</div>
                                              <div>경력&nbsp;&nbsp;${vo.career}</div>
                                            </div>
                                        </div>
                                    </li>
                                </c:forEach>
                            </ul>
                        </div>
                    <button type="button" class="nextBtn"><i class="fa-solid fa-chevron-right"></i></button>
                       
                </div>
            </div>
        </div>
        <div class="the-middle">
          <div class="mentoring-title">
            <div class="empty"></div>
            <div class="mentoring-title-icon"><span class="bold500">🔥&nbsp;이 순간에도</span><span>&nbsp;공부하는</span><span class="main-color">&nbsp;LEARNER&nbsp;🔥</span></div>
            <div class="mentoring-content-more learning-more"><a href="${path}/makegrass/list">더보기</a><img width="12px" height="13px" src="https://cdn-icons-png.flaticon.com/128/271/271228.png"></div>
        </div>
            <div class="studying-content">
                <div class="slice-as-three-sec relative">
                  <button type="button" class="prevBtn prevBtn2 prevBtn-sec"><i class="fa-solid fa-chevron-left"></i></button>
                        <div class="container-sec">
                            <ul class="container-slide-sec">
                                <c:forEach items="${makegrassList}" var="map" >
                                  <li class="slide-sec">
                                    <div class="slide-box">
                                        <div class="learning-img"><img src="${path}/resources/upload/common/coding_cat.gif" class="cursor" alt="" onclick="location.href='${path}/makegrass/detail?no=${map.NO}'"></div>
                                        <div class="learning-info">
                                          <div class="learning-title cursor" onclick="location.href='${path}/makegrass/detail?no=${map.NO}'">${map.TITLE}</div>
                                          
                                          <div class="learning-detail">
                                            <div class="space-between">
                                              <div class="learner-profile"><img src="${path}${map.IMG_PATH}" alt=""></div>
                                              <div>
                                                <div class="learning-user-nick">${map.WRITER}</div>
                                                <div class="learning-summary">
                                                  <div class="learning-time">${map.LEARN_TIME}</div>
                                                  <ul class="view-cmt-scrap-list2 space-between soft-gray">
                                                    <div class="flex">
                                                      <li><i class="fa-regular fa-eye"></i><span>${map.HIT}</span></li>
                                                      <li>
                                                        <i class="fa-regular fa-comment-dots"></i><span>0</span>
                                                      </li>
    
                                                    </div>
                                                    <div>
                                                      <li>
                                                        <i class="fa-solid fa-heart like-icon main-color"></i
                                                          ><span>0</span>
                                                      </li>
    
                                                    </div>
                                                  </ul>

                                                </div>

                                              </div>
                                            </div>
                                            <div>
                                              
                                            </div>
                                          </div>
                                        </div>
                                        
                                    </div>
                                </li>
                                </c:forEach>
                            </ul>
                        </div>
                        <button type="button" class="nextBtn nextBtn2 nextBtn-sec"><i class="fa-solid fa-chevron-right"></i></button>
                </div>
            </div>
        </div>
        <div class="the-lower">
            <div class="notice">
                <div class="notice-list">
                    <div class="lists">
                        <div class="list" id="boldline">
                            <div class="notice-title">공지사항</div>
                            
                            <!-- <div class="arrow"><i class="fa-solid fa-chevron-right" onclick="location.href='${path}/notice/noticeList?p=1&cateNo=0'"></i></div> -->
                            <div class="arrow"><span class='material-symbols-outlined notice-more-btn' onclick="location.href='${path}/notice/noticeList?p=1&cateNo=0'">arrow_forward_ios</span></div>
                        </div>
                        <c:forEach items="${noticeList}" var="map" begin="0" end="6">
                          <div class="list list-one" id="list-one" onclick="location.href='${path}/notice/noticeDetail?no=${map.NO}'">º ${map.NAME}&nbsp;${map.TITLE}</div>
                        </c:forEach>
                       
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
    </main>
    <script
      type="text/javascript"
      src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"
    ></script>
    <script>
      $("#banner-slider").slick({
        slide: "section",
        slidesToShow: 1,
        slidesToScroll: 1,
        arrows: true,
        dots: true,
        dotsClass : "slick-dots", 
        autoplay : true,			
				autoplaySpeed : 100, 	
        autoplay: false,
        prevArrow:
          "<button type='button' class='banner-prev'><span class='material-symbols-outlined arrow-btn'>arrow_back_ios</span></button>",
        nextArrow:
          "<button type='button' class='banner-next'><span class='material-symbols-outlined arrow-btn'>arrow_forward_ios</span></button>",
      });

      $(".post-wrapper1").slick({
        slide: "div",
        slidesToShow: 4,
        slidesToScroll: 1,
        arrows: true,
        autoplay: false,
        prevArrow:
          "<button type='button' class='slick-prev'><i class='fa-solid fa-chevron-left'></i></button>",
        nextArrow:
          "<button type='button' class='slick-next'><i class='fa-solid fa-chevron-right'></i></button>",
      });

      
      $(".post-wrapper2").slick({
        slide: "ul",
        slidesToShow: 1,
        slidesToScroll: 1,
        arrows: true,
        autoplay: false,
        prevArrow:
          "<button type='button' class='slick-prev2'><i class='fa-solid fa-chevron-left'></i></button>",
        nextArrow:
          "<button type='button' class='slick-next2'><i class='fa-solid fa-chevron-right'></i></button>",
      });

    
      $(".post-wrapper3").slick({
        slide: "ul",
        slidesToShow: 1,
        slidesToScroll: 1,
        arrows: true,
        autoplay: false,
        prevArrow:
          "<button type='button' class='slick-prev3'><i class='fa-solid fa-chevron-left'></i></button>",
        nextArrow:
          "<button type='button' class='slick-next3'><i class='fa-solid fa-chevron-right'></i></button>",
      });
    </script>
    <script>
      //변수 지정
      var slides = document.querySelector('.container-slide'),
        slide = document.querySelectorAll('.slide'),
        currentIdx = 1,
        slideCount = slide.length,
        slideWidth = 282,
        slideMargin = 20,
        prevBtn = document.querySelector('.prevBtn'),
        nextBtn = document.querySelector('.nextBtn');
            
        slides.style.left = '-300px';

  
      slides.style.width = (slideWidth + slideMargin)* slideCount - slideMargin +'px';
      //slides.style.width = '1200px';
      
      function moveSlide2(num){
      
        slides.style.left= -num*300+'px';

        currentIdx = num;
      }
      
      nextBtn.addEventListener('click',function(){
        if(currentIdx < slideCount -4){

          moveSlide2(currentIdx + 1);
              
        }else{
    
          moveSlide2(0);
                
        }
        
      });
      
      prevBtn.addEventListener('click',function(){
        if(currentIdx > 0){
          moveSlide2(currentIdx - 1);
        }else{
          moveSlide2(slideCount - 4);
        }
        
      });
      //두번째 슬라이드
      //변수 지정
      var slidesSec = document.querySelector('.container-slide-sec'),
        slideSec = document.querySelectorAll('.slide-sec'),
        currentIdxSec = 1,
        slideCountSec = slideSec.length,
        slideWidthSec = 280,
        slideMarginSec = 20,
        prevBtnSec = document.querySelector('.prevBtn-sec'),
        nextBtnSec = document.querySelector('.nextBtn-sec');
            
        slidesSec.style.left = '-300px';
    
      slidesSec.style.width = (slideWidthSec + slideMarginSec)* slideCountSec - slideMarginSec +'px';
      
      
      function moveSlide(num){
        slidesSec.style.left= -num*300+'px';
        currentIdxSec = num;
      }
      
      nextBtnSec.addEventListener('click',function(){
        if(currentIdxSec < slideCountSec -4){
          moveSlide(currentIdxSec + 1);
              
        }else{
          moveSlide(0);
                
        }
        
      });
      
      prevBtnSec.addEventListener('click',function(){
        if(currentIdxSec > 0){
          moveSlide(currentIdxSec - 1);
        }else{
          moveSlide(slideCountSec - 4);
        }
        
      });

      function  closePopup(e) {
        e.target.parentNode.parentNode.classList.add('none');
      }
 
</script>
<script>
  const tab = document.querySelectorAll('button[role=tab]');
  tab.forEach((o)=>{
    o.innerHTML = "";
  })
</script>
    <script>
        $(document).ready(function () {
            const popupList = document.querySelectorAll('.main-popup');
            popupList.forEach((o)=>{
              let popupName = o.getAttribute('name');
             
              // 팝업창에 주어진 이름을 변수로 던져 저장된 쿠키가 있는지 확인   
              let popup = getCookie(popupName);

              // 변수가 없을경우 팝업 출력       
              if(!popup) {
                popUpAction(popupName);
              }
            })

             // 쿠키 가져오기 
            function getCookie(name) {
                var nameOfCookie = name + "=";
                var x = 0; while (x <= document.cookie.length) {
                    var y = (x + nameOfCookie.length);
                    if (document.cookie.substring(x, y) == nameOfCookie) {
                        if ((endOfCookie = document.cookie.indexOf(";", y)) == -1)
                            endOfCookie = document.cookie.length;
                        return unescape(document.cookie.substring(y, endOfCookie));
                    }
                    x = document.cookie.indexOf(" ", x) + 1; if (x == 0)
                        break;
                }
                return "";
            }

            // 00:00 시 기준 쿠키 설정하기 
            // expiredays 의 새벽 00:00:00 까지 쿠키 설정 
            function setCookie00(name, value, expiredays) {
           
                let todayDate = new Date();
              
                todayDate = new Date(parseInt(todayDate.getTime() / 86400000) * 86400000 + 54000000);
          
                if (todayDate > new Date()) {
                    expiredays = expiredays - 1;
                }
             
                todayDate.setDate(todayDate.getDate() + expiredays);
             
                document.cookie = name + "=" + escape(value) + "; path=/; expires=" + todayDate.toUTCString() + ";"

            }

            // 팝업출력
            function popUpAction(name) {
                // name으로 해당 팝업창 열기 
                console.log(name);
                document.querySelector('div[name='+ name +']').classList.remove('none');

            }

            const todayClose = document.querySelectorAll('.today_close input');
      
            todayClose.forEach((o)=>{
              o.addEventListener('click', function(event) {
                event.stopPropagation();
           
                const inputClose = event.target;
                if (inputClose.checked) {
   
                  let num = inputClose.name.substr(11).trim();
                  
                  setCookie00('popup'+num, "done", 1);
                  inputClose.parentNode.parentNode.parentNode.parentNode.classList.add('none');

                }})

             })
            })
      
    </script>
    <script>
      //멘토 확인
      $(document).on('click', '#apply-mentor', function(){
          if('${loginMember}' == ''){
              alert('로그인 후 이용해주세요.');
              return false;
          }
          //멘토인지 확인
          $.ajax({
              url: '/app/mentor/checkMentor',
              type: 'GET',
              dataType: 'json',
              success: function(data){
                  console.log(data);
                  if(1 == data){
                      if(confirm('이미 멘토로 지원하셨습니다.\n멘토링 관리페이지로 이동하시겠습니까?')){;
                          location.href = '/app/member/mypage/mentoring/manage';
                      }
                      return;
                  }else{
                      //멘토 가 아니면 지원 페이지로 이동
                      location.href = '/app/member/mypage/mentoring/register';
                  }
              },
              error: function(){
                  alert('멘토 확인 중 오류가 발생했습니다.');
              }
          });
      });
  </script>
    <script
      src="https://kit.fontawesome.com/939838bb27.js"
      crossorigin="anonymous"
    ></script>
    <%@ include file="/WEB-INF/views/common/footer.jsp" %>
  </body>
</html>
