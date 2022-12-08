<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Insert title here</title>
    <link rel="stylesheet" href="/app/resources/css/study/list.css?ver=5" />

    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap"
      rel="stylesheet"
    />
  </head>
  <body>
    <%@ include file="/WEB-INF/views/common/header.jsp" %>
    <section class="study-banner middle">
      <div>
        <div class="bold700">스터디와 사이드 프로젝트를 찾는</div>
        <div class="bold700">가장 쉬운 방법</div>
        <div class="flex">
          <img src="/app/resources/img/study/study-banner-logo.png" alt="" />
          <span>에서 함께할 개발자를 찾으세요</span>
        </div>
      </div>
    </section>
    <div class="middle">
      <main class="study-main">
        <aside class="my-study-aside">
          <div class="my-study">
            <h1>
              <i class="fa-solid fa-users gray1"></i>
              <span class="bold700 gray1">내가 가입한 모임</span>
            </h1>
            <ul class="my-study-list">
              <li class="my-study-list-detail flex">
                <img
                  src="${pageContext.request.contextPath}/resources/img/study/study-profile.JPG"
                  alt=""
                />
                <a
                  href="${pageContext.request.contextPath}/mystudy/main"
                  class="my-study-title gray1"
                  >비전공자 스프링 스터디</a
                >
              </li>
              <li class="my-study-list-detail flex">
                <img
                  src="${pageContext.request.contextPath}/resources/img/study/study-profile.JPG"
                  alt=""
                /><span class="my-study-title gray1"
                  >비전공자 스프링 스터디</span
                >
              </li>
              <li class="my-study-list-detail flex">
                <img
                  src="/app/resources/img/study/study-profile.JPG"
                  alt=""
                /><span class="my-study-title gray1"
                  >비전공자 스프링 스터디</span
                >
              </li>
              <li class="my-study-list-detail flex">
                <img
                  src="/app/resources/img/study/study-profile.JPG"
                  alt=""
                /><span class="my-study-title gray1"
                  >비전공자 스프링 스터디</span
                >
              </li>
              <li class="my-study-list-detail flex">
                <img
                  src="/app/resources/img/study/study-profile.JPG"
                  alt=""
                /><span class="my-study-title gray1"
                  >비전공자 스프링 스터디</span
                >
              </li>
              <li class="my-study-list-detail flex">
                <img
                  src="/app/resources/img/study/study-profile.JPG"
                  alt=""
                /><span class="my-study-title gray1"
                  >비전공자 스프링 스터디</span
                >
              </li>
              <li class="my-study-list-detail flex">
                <img
                  src="/app/resources/img/study/study-profile.JPG"
                  alt=""
                /><span class="my-study-title gray1"
                  >비전공자 스프링 스터디</span
                >
              </li>
            </ul>
          </div>
        </aside>
        <article class="study-article">
          <section class="study-search-area">
            <div class="relative">
              <i class="fa-solid fa-magnifying-glass gray1"></i>
              <input
                class="study-search-name"
                type="text"
                placeholder="관심 스터디/프로젝트를 검색해보세요!"
              />
              <input type="submit" value="검색" />
            </div>
            <div class="relative">
              <i class="fa-solid fa-hashtag gray1"></i>
              <input
                class="study-search-tag"
                type="text"
                placeholder="태그로 검색해보세요!"
              />
              <input type="reset" value="초기화" /><i
                class="fa-solid fa-rotate-left"
              ></i>
            </div>
          </section>
          <section class="study-tech-area">
            <ul class="tech-category-list flex bold700">
              <li class="tech-category tech-clicked relative">
                인기
                <div class="bar1"></div>
              </li>

              <li class="tech-category tech-unClicked relative">
                프론트엔드
                <div class="bar2 hidden"></div>
              </li>
              <li class="tech-category tech-unClicked relative">
                백엔드
                <div class="bar3 hidden"></div>
              </li>
              <li class="tech-category tech-unClicked relative">
                모바일
                <div class="bar4 hidden"></div>
              </li>
              <li class="tech-category tech-unClicked relative">
                기타
                <div class="bar5 hidden"></div>
              </li>
              <li class="tech-category tech-unClicked relative">
                모두보기
                <div class="bar6 hidden"></div>
              </li>
            </ul>
            <ul class="tech-list">
              <li>
                <div class="flex">
                  <img src="/app/resources/img/study/java.svg" alt="" />
                  <span>Java</span>
                </div>
              </li>
              <li>
                <div class="flex">
                  <img src="/app/resources/img/study/java.svg" alt="" />
                  <span>Java</span>
                </div>
              </li>
              <li>
                <div class="flex">
                  <img src="/app/resources/img/study/java.svg" alt="" />
                  <span>Java</span>
                </div>
              </li>
              <li>
                <div class="flex">
                  <img src="/app/resources/img/study/java.svg" alt="" />
                  <span>Java</span>
                </div>
              </li>
              <li>
                <div class="flex">
                  <img src="/app/resources/img/study/java.svg" alt="" />
                  <span>Java</span>
                </div>
              </li>
              <li>
                <div class="flex">
                  <img src="/app/resources/img/study/java.svg" alt="" />
                  <span>Java</span>
                </div>
              </li>
              <li>
                <div class="flex">
                  <img src="/app/resources/img/study/java.svg" alt="" />
                  <span>Java</span>
                </div>
              </li>
              <li>
                <div class="flex">
                  <img src="/app/resources/img/study/java.svg" alt="" />
                  <span>Java</span>
                </div>
              </li>
              <li>
                <div class="flex">
                  <img src="/app/resources/img/study/java.svg" alt="" />
                  <span>Java</span>
                </div>
              </li>
              <li>
                <div class="flex">
                  <img src="/app/resources/img/study/java.svg" alt="" />
                  <span>Java</span>
                </div>
              </li>
              <li>
                <div class="flex">
                  <img src="/app/resources/img/study/java.svg" alt="" />
                  <span>Java</span>
                </div>
              </li>
            </ul>
          </section>
          <section class="study-area">
            <div class="space-between">
              <ul class="study-type-list bold700 flex">
                <li class="study-type type-clicked relative">
                  전체
                  <div class="study-type-bar1"></div>
                </li>
                <li class="study-type relative">
                  스터디
                  <div class="study-type-bar2 hidden"></div>
                </li>
                <li class="study-type relative">
                  프로젝트
                  <div class="study-type-bar3 hidden"></div>
                </li>
              </ul>
              <div class="flex on-off-btn-area">
                <span class="bold700 on-off-btn-text">모집 중만 보기</span>
                <input type="checkbox" id="toggle-slider" />
                <label id="toggle-slider-label" for="toggle-slider"
                  >On/Off</label
                >
              </div>
            </div>
            <div class="study-order-area">
              <ul class="study-order-list">
                <a href="">관심언어</a>
                <a href="">최신순</a>
                <a href="">좋아요순</a>
                <a href="">댓글순</a>
                <a href="">스크랩순</a>
                <a href="">조회순</a>
                <a href="">정확도순</a>
              </ul>
              <div class="write-btn">
                <input
                  type="button"
                  value="글쓰기"
                  onClick="location.href='/app/study/recruit'"
                />
              </div>
            </div>
            <ul class="main-study-detail-list">
              <a href="/app/study/detail" class="main-study-detail">
                <div class="main-study-detail__date-like space-between">
                  <div class="soft-gray">시작 예정일 | 2022.12.03</div>
                  <div>
                    <i class="fa-solid fa-heart like-icon main-color"></i
                    ><span class="soft-gray">50</span>
                  </div>
                </div>
                <h1 class="bold700">
                  클라우드 프로젝트에 함께하실 멤버 한 분 구합니다.
                </h1>
                <ul class="study-tag-list flex soft-gray">
                  <li class="study-tag">#프로젝트</li>
                  <li class="study-tag">#온라인</li>
                  <li class="study-tag">#4명</li>
                  <li class="study-tag">#6개월</li>
                </ul>
                <ul class="study-tech-list flex">
                  <li class="study-tech">
                    <img src="/app/resources/img/study/aws.svg" alt="" />
                  </li>
                  <li class="study-tech">
                    <img src="/app/resources/img/study/docker.svg" alt="" />
                  </li>
                  <li class="study-tech">
                    <img src="/app/resources/img/study/java.svg" alt="" />
                  </li>
                  <li class="study-tech">
                    <img src="/app/resources/img/study/spring.svg" alt="" />
                  </li>
                </ul>
                <section class="flex">
                  <div class="user-profile">
                    <img src="/app/resources/img/study/profile.png" alt="" />
                  </div>
                  <div class="main-study-detail__profile-hit-cmt-scrap">
                    <div class="user-nick bold700">한혜원</div>
                    <ul class="view-cmt-scrap-list flex soft-gray">
                      <li><i class="fa-regular fa-eye"></i><span>60</span></li>
                      <li>
                        <i class="fa-regular fa-comment-dots"></i><span>5</span>
                      </li>
                      <li>
                        <i class="fa-regular fa-bookmark"></i><span>10</span>
                      </li>
                    </ul>
                  </div>
                </section>
              </a>
              <a href="" class="main-study-detail">
                <div class="main-study-detail__date-like space-between">
                  <div class="soft-gray">시작 예정일 | 2022.12.03</div>
                  <div>
                    <i class="fa-solid fa-heart like-icon main-color"></i
                    ><span class="soft-gray">50</span>
                  </div>
                </div>
                <h1 class="bold700">
                  클라우드 프로젝트에 함께하실 멤버 한 분 구합니다.
                </h1>
                <ul class="study-tag-list flex soft-gray">
                  <li class="study-tag">#프로젝트</li>
                  <li class="study-tag">#온라인</li>
                  <li class="study-tag">#4명</li>
                  <li class="study-tag">#6개월</li>
                </ul>
                <ul class="study-tech-list flex">
                  <li class="study-tech">
                    <img src="/app/resources/img/study/aws.svg" alt="" />
                  </li>
                  <li class="study-tech">
                    <img src="/app/resources/img/study/docker.svg" alt="" />
                  </li>
                  <li class="study-tech">
                    <img src="/app/resources/img/study/java.svg" alt="" />
                  </li>
                  <li class="study-tech">
                    <img src="/app/resources/img/study/spring.svg" alt="" />
                  </li>
                </ul>
                <section class="flex">
                  <div class="user-profile">
                    <img src="/app/resources/img/study/profile.png" alt="" />
                  </div>
                  <div class="main-study-detail__profile-hit-cmt-scrap">
                    <div class="user-nick bold700">한혜원</div>
                    <ul class="view-cmt-scrap-list flex soft-gray">
                      <li><i class="fa-regular fa-eye"></i><span>60</span></li>
                      <li>
                        <i class="fa-regular fa-comment-dots"></i><span>5</span>
                      </li>
                      <li>
                        <i class="fa-regular fa-bookmark"></i><span>10</span>
                      </li>
                    </ul>
                  </div>
                </section>
              </a>
              <a href="" class="main-study-detail">
                <div class="main-study-detail__date-like space-between">
                  <div class="soft-gray">시작 예정일 | 2022.12.03</div>
                  <div>
                    <i class="fa-solid fa-heart like-icon main-color"></i
                    ><span class="soft-gray">50</span>
                  </div>
                </div>
                <h1 class="bold700">
                  클라우드 프로젝트에 함께하실 멤버 한 분 구합니다.
                </h1>
                <ul class="study-tag-list flex soft-gray">
                  <li class="study-tag">#프로젝트</li>
                  <li class="study-tag">#온라인</li>
                  <li class="study-tag">#4명</li>
                  <li class="study-tag">#6개월</li>
                </ul>
                <ul class="study-tech-list flex">
                  <li class="study-tech">
                    <img src="/app/resources/img/study/aws.svg" alt="" />
                  </li>
                  <li class="study-tech">
                    <img src="/app/resources/img/study/docker.svg" alt="" />
                  </li>
                  <li class="study-tech">
                    <img src="/app/resources/img/study/java.svg" alt="" />
                  </li>
                  <li class="study-tech">
                    <img src="/app/resources/img/study/spring.svg" alt="" />
                  </li>
                </ul>
                <section class="flex">
                  <div class="user-profile">
                    <img src="/app/resources/img/study/profile.png" alt="" />
                  </div>
                  <div class="main-study-detail__profile-hit-cmt-scrap">
                    <div class="user-nick bold700">한혜원</div>
                    <ul class="view-cmt-scrap-list flex soft-gray">
                      <li><i class="fa-regular fa-eye"></i><span>60</span></li>
                      <li>
                        <i class="fa-regular fa-comment-dots"></i><span>5</span>
                      </li>
                      <li>
                        <i class="fa-regular fa-bookmark"></i><span>10</span>
                      </li>
                    </ul>
                  </div>
                </section>
              </a>
              <a href="" class="main-study-detail">
                <div class="main-study-detail__date-like space-between">
                  <div class="soft-gray">시작 예정일 | 2022.12.03</div>
                  <div>
                    <i class="fa-solid fa-heart like-icon main-color"></i
                    ><span class="soft-gray">50</span>
                  </div>
                </div>
                <h1 class="bold700">
                  클라우드 프로젝트에 함께하실 멤버 한 분 구합니다.
                </h1>
                <ul class="study-tag-list flex soft-gray">
                  <li class="study-tag">#프로젝트</li>
                  <li class="study-tag">#온라인</li>
                  <li class="study-tag">#4명</li>
                  <li class="study-tag">#6개월</li>
                </ul>
                <ul class="study-tech-list flex">
                  <li class="study-tech">
                    <img src="/app/resources/img/study/aws.svg" alt="" />
                  </li>
                  <li class="study-tech">
                    <img src="/app/resources/img/study/docker.svg" alt="" />
                  </li>
                  <li class="study-tech">
                    <img src="/app/resources/img/study/java.svg" alt="" />
                  </li>
                  <li class="study-tech">
                    <img src="/app/resources/img/study/spring.svg" alt="" />
                  </li>
                </ul>
                <section class="flex">
                  <div class="user-profile">
                    <img src="/app/resources/img/study/profile.png" alt="" />
                  </div>
                  <div class="main-study-detail__profile-hit-cmt-scrap">
                    <div class="user-nick bold700">한혜원</div>
                    <ul class="view-cmt-scrap-list flex soft-gray">
                      <li><i class="fa-regular fa-eye"></i><span>60</span></li>
                      <li>
                        <i class="fa-regular fa-comment-dots"></i><span>5</span>
                      </li>
                      <li>
                        <i class="fa-regular fa-bookmark"></i><span>10</span>
                      </li>
                    </ul>
                  </div>
                </section>
              </a>
              <a href="" class="main-study-detail">
                <div class="main-study-detail__date-like space-between">
                  <div class="soft-gray">시작 예정일 | 2022.12.03</div>
                  <div>
                    <i class="fa-solid fa-heart like-icon main-color"></i
                    ><span class="soft-gray">50</span>
                  </div>
                </div>
                <h1 class="bold700">
                  클라우드 프로젝트에 함께하실 멤버 한 분 구합니다.
                </h1>
                <ul class="study-tag-list flex soft-gray">
                  <li class="study-tag">#프로젝트</li>
                  <li class="study-tag">#온라인</li>
                  <li class="study-tag">#4명</li>
                  <li class="study-tag">#6개월</li>
                </ul>
                <ul class="study-tech-list flex">
                  <li class="study-tech">
                    <img src="/app/resources/img/study/aws.svg" alt="" />
                  </li>
                  <li class="study-tech">
                    <img src="/app/resources/img/study/docker.svg" alt="" />
                  </li>
                  <li class="study-tech">
                    <img src="/app/resources/img/study/java.svg" alt="" />
                  </li>
                  <li class="study-tech">
                    <img src="/app/resources/img/study/spring.svg" alt="" />
                  </li>
                </ul>
                <section class="flex">
                  <div class="user-profile">
                    <img src="/app/resources/img/study/profile.png" alt="" />
                  </div>
                  <div class="main-study-detail__profile-hit-cmt-scrap">
                    <div class="user-nick bold700">한혜원</div>
                    <ul class="view-cmt-scrap-list flex soft-gray">
                      <li><i class="fa-regular fa-eye"></i><span>60</span></li>
                      <li>
                        <i class="fa-regular fa-comment-dots"></i><span>5</span>
                      </li>
                      <li>
                        <i class="fa-regular fa-bookmark"></i><span>10</span>
                      </li>
                    </ul>
                  </div>
                </section>
              </a>
              <a href="" class="main-study-detail">
                <div class="main-study-detail__date-like space-between">
                  <div class="soft-gray">시작 예정일 | 2022.12.03</div>
                  <div>
                    <i class="fa-solid fa-heart like-icon main-color"></i
                    ><span class="soft-gray">50</span>
                  </div>
                </div>
                <h1 class="bold700">
                  클라우드 프로젝트에 함께하실 멤버 한 분 구합니다.
                </h1>
                <ul class="study-tag-list flex soft-gray">
                  <li class="study-tag">#프로젝트</li>
                  <li class="study-tag">#온라인</li>
                  <li class="study-tag">#4명</li>
                  <li class="study-tag">#6개월</li>
                </ul>
                <ul class="study-tech-list flex">
                  <li class="study-tech">
                    <img src="/app/resources/img/study/aws.svg" alt="" />
                  </li>
                  <li class="study-tech">
                    <img src="/app/resources/img/study/docker.svg" alt="" />
                  </li>
                  <li class="study-tech">
                    <img src="/app/resources/img/study/java.svg" alt="" />
                  </li>
                  <li class="study-tech">
                    <img src="/app/resources/img/study/spring.svg" alt="" />
                  </li>
                </ul>
                <section class="flex">
                  <div class="user-profile">
                    <img src="/app/resources/img/study/profile.png" alt="" />
                  </div>
                  <div class="main-study-detail__profile-hit-cmt-scrap">
                    <div class="user-nick bold700">한혜원</div>
                    <ul class="view-cmt-scrap-list flex soft-gray">
                      <li><i class="fa-regular fa-eye"></i><span>60</span></li>
                      <li>
                        <i class="fa-regular fa-comment-dots"></i><span>5</span>
                      </li>
                      <li>
                        <i class="fa-regular fa-bookmark"></i><span>10</span>
                      </li>
                    </ul>
                  </div>
                </section>
              </a>
              <a href="" class="main-study-detail">
                <div class="main-study-detail__date-like space-between">
                  <div class="soft-gray">시작 예정일 | 2022.12.03</div>
                  <div>
                    <i class="fa-solid fa-heart like-icon main-color"></i
                    ><span class="soft-gray">50</span>
                  </div>
                </div>
                <h1 class="bold700">
                  클라우드 프로젝트에 함께하실 멤버 한 분 구합니다.
                </h1>
                <ul class="study-tag-list flex soft-gray">
                  <li class="study-tag">#프로젝트</li>
                  <li class="study-tag">#온라인</li>
                  <li class="study-tag">#4명</li>
                  <li class="study-tag">#6개월</li>
                </ul>
                <ul class="study-tech-list flex">
                  <li class="study-tech">
                    <img src="/app/resources/img/study/aws.svg" alt="" />
                  </li>
                  <li class="study-tech">
                    <img src="/app/resources/img/study/docker.svg" alt="" />
                  </li>
                  <li class="study-tech">
                    <img src="/app/resources/img/study/java.svg" alt="" />
                  </li>
                  <li class="study-tech">
                    <img src="/app/resources/img/study/spring.svg" alt="" />
                  </li>
                </ul>
                <section class="flex">
                  <div class="user-profile">
                    <img src="/app/resources/img/study/profile.png" alt="" />
                  </div>
                  <div class="main-study-detail__profile-hit-cmt-scrap">
                    <div class="user-nick bold700">한혜원</div>
                    <ul class="view-cmt-scrap-list flex soft-gray">
                      <li><i class="fa-regular fa-eye"></i><span>60</span></li>
                      <li>
                        <i class="fa-regular fa-comment-dots"></i><span>5</span>
                      </li>
                      <li>
                        <i class="fa-regular fa-bookmark"></i><span>10</span>
                      </li>
                    </ul>
                  </div>
                </section>
              </a>
              <a href="" class="main-study-detail">
                <div class="main-study-detail__date-like space-between">
                  <div class="soft-gray">시작 예정일 | 2022.12.03</div>
                  <div>
                    <i class="fa-solid fa-heart like-icon main-color"></i
                    ><span class="soft-gray">50</span>
                  </div>
                </div>
                <h1 class="bold700">
                  클라우드 프로젝트에 함께하실 멤버 한 분 구합니다.
                </h1>
                <ul class="study-tag-list flex soft-gray">
                  <li class="study-tag">#프로젝트</li>
                  <li class="study-tag">#온라인</li>
                  <li class="study-tag">#4명</li>
                  <li class="study-tag">#6개월</li>
                </ul>
                <ul class="study-tech-list flex">
                  <li class="study-tech">
                    <img src="/app/resources/img/study/aws.svg" alt="" />
                  </li>
                  <li class="study-tech">
                    <img src="/app/resources/img/study/docker.svg" alt="" />
                  </li>
                  <li class="study-tech">
                    <img src="/app/resources/img/study/java.svg" alt="" />
                  </li>
                  <li class="study-tech">
                    <img src="/app/resources/img/study/spring.svg" alt="" />
                  </li>
                </ul>
                <section class="flex">
                  <div class="user-profile">
                    <img src="/app/resources/img/study/profile.png" alt="" />
                  </div>
                  <div class="main-study-detail__profile-hit-cmt-scrap">
                    <div class="user-nick bold700">한혜원</div>
                    <ul class="view-cmt-scrap-list flex soft-gray">
                      <li><i class="fa-regular fa-eye"></i><span>60</span></li>
                      <li>
                        <i class="fa-regular fa-comment-dots"></i><span>5</span>
                      </li>
                      <li>
                        <i class="fa-regular fa-bookmark"></i><span>10</span>
                      </li>
                    </ul>
                  </div>
                </section>
              </a>
              <a href="" class="main-study-detail">
                <div class="main-study-detail__date-like space-between">
                  <div class="soft-gray">시작 예정일 | 2022.12.03</div>
                  <div>
                    <i class="fa-solid fa-heart like-icon main-color"></i
                    ><span class="soft-gray">50</span>
                  </div>
                </div>
                <h1 class="bold700">
                  클라우드 프로젝트에 함께하실 멤버 한 분 구합니다.
                </h1>
                <ul class="study-tag-list flex soft-gray">
                  <li class="study-tag">#프로젝트</li>
                  <li class="study-tag">#온라인</li>
                  <li class="study-tag">#4명</li>
                  <li class="study-tag">#6개월</li>
                </ul>
                <ul class="study-tech-list flex">
                  <li class="study-tech">
                    <img src="/app/resources/img/study/aws.svg" alt="" />
                  </li>
                  <li class="study-tech">
                    <img src="/app/resources/img/study/docker.svg" alt="" />
                  </li>
                  <li class="study-tech">
                    <img src="/app/resources/img/study/java.svg" alt="" />
                  </li>
                  <li class="study-tech">
                    <img src="/app/resources/img/study/spring.svg" alt="" />
                  </li>
                </ul>
                <section class="flex">
                  <div class="user-profile">
                    <img src="/app/resources/img/study/profile.png" alt="" />
                  </div>
                  <div class="main-study-detail__profile-hit-cmt-scrap">
                    <div class="user-nick bold700">한혜원</div>
                    <ul class="view-cmt-scrap-list flex soft-gray">
                      <li><i class="fa-regular fa-eye"></i><span>60</span></li>
                      <li>
                        <i class="fa-regular fa-comment-dots"></i><span>5</span>
                      </li>
                      <li>
                        <i class="fa-regular fa-bookmark"></i><span>10</span>
                      </li>
                    </ul>
                  </div>
                </section>
              </a>
            </ul>
          </section>
        </article>
        <aside class="popular-tag-aside">
          <div class="popular-tag">
            <h1 class="popular-tag-title">
              <i class="fa-solid fa-hashtag gray1"></i>
              <span class="bold700 gray1">인기 태그</span>
            </h1>
            <ul class="popular-tag-list">
              <li class="popular-tag-list-detail">
                <i class="fa-solid fa-hashtag gray1"></i>
                <span>스터디</span>
              </li>
              <li class="popular-tag-list-detail">
                <i class="fa-solid fa-hashtag gray1"></i>
                <span>프론트엔드</span>
              </li>
              <li class="popular-tag-list-detail">
                <i class="fa-solid fa-hashtag gray1"></i>
                <span>백엔드</span>
              </li>
              <li class="popular-tag-list-detail">
                <i class="fa-solid fa-hashtag gray1"></i>
                <span>모각코</span>
              </li>
              <li class="popular-tag-list-detail">
                <i class="fa-solid fa-hashtag gray1"></i>
                <span>알고리즘</span>
              </li>
              <li class="popular-tag-list-detail">
                <i class="fa-solid fa-hashtag gray1"></i>
                <span>코딩테스트</span>
              </li>
              <li class="popular-tag-list-detail">
                <i class="fa-solid fa-hashtag gray1"></i>
                <span>자바</span>
              </li>
              <li class="popular-tag-list-detail">
                <i class="fa-solid fa-hashtag gray1"></i>
                <span>자바스크립트</span>
              </li>
              <li class="popular-tag-list-detail">
                <i class="fa-solid fa-hashtag gray1"></i>
                <span>포트폴리오</span>
              </li>
              <li class="popular-tag-list-detail">
                <i class="fa-solid fa-hashtag gray1"></i>
                <span>프로젝트</span>
              </li>
            </ul>
          </div>
        </aside>
      </main>
    </div>
    <script>
      const techCate1 = document.querySelector(".tech-category:nth-child(1)");
      const techCate2 = document.querySelector(".tech-category:nth-child(2)");
      const techCate3 = document.querySelector(".tech-category:nth-child(3)");
      const techCate4 = document.querySelector(".tech-category:nth-child(4)");
      const techCate5 = document.querySelector(".tech-category:nth-child(5)");
      const techCate6 = document.querySelector(".tech-category:nth-child(6)");

      const studyType1 = document.querySelector(".study-type:nth-child(1)");
      const studyType2 = document.querySelector(".study-type:nth-child(2)");
      const studyType3 = document.querySelector(".study-type:nth-child(3)");

      const bar1 = techCate1.querySelector("div");
      const bar2 = techCate2.querySelector("div");
      const bar3 = techCate3.querySelector("div");
      const bar4 = techCate4.querySelector("div");
      const bar5 = techCate5.querySelector("div");
      const bar6 = techCate6.querySelector("div");

      const studyTypeBar1 = studyType1.querySelector("div");
      const studyTypeBar2 = studyType2.querySelector("div");
      const studyTypeBar3 = studyType3.querySelector("div");

      techCate1.addEventListener("click", function () {
        this.classList.add("tech-clicked");

        bar1.classList.remove("hidden");

        techCate2.classList.remove("tech-clicked");
        techCate3.classList.remove("tech-clicked");
        techCate4.classList.remove("tech-clicked");
        techCate5.classList.remove("tech-clicked");
        techCate6.classList.remove("tech-clicked");

        bar2.classList.add("hidden");
        bar3.classList.add("hidden");
        bar4.classList.add("hidden");
        bar5.classList.add("hidden");
        bar6.classList.add("hidden");
      });

      techCate2.addEventListener("click", function () {
        this.classList.add("tech-clicked");

        bar2.classList.remove("hidden");

        techCate1.classList.remove("tech-clicked");
        techCate3.classList.remove("tech-clicked");
        techCate4.classList.remove("tech-clicked");
        techCate5.classList.remove("tech-clicked");
        techCate6.classList.remove("tech-clicked");

        bar1.classList.add("hidden");
        bar3.classList.add("hidden");
        bar4.classList.add("hidden");
        bar5.classList.add("hidden");
        bar6.classList.add("hidden");
      });

      techCate3.addEventListener("click", function () {
        this.classList.add("tech-clicked");

        bar3.classList.remove("hidden");

        techCate1.classList.remove("tech-clicked");
        techCate2.classList.remove("tech-clicked");
        techCate4.classList.remove("tech-clicked");
        techCate5.classList.remove("tech-clicked");
        techCate6.classList.remove("tech-clicked");

        bar1.classList.add("hidden");
        bar2.classList.add("hidden");
        bar4.classList.add("hidden");
        bar5.classList.add("hidden");
        bar6.classList.add("hidden");
      });

      techCate4.addEventListener("click", function () {
        this.classList.add("tech-clicked");

        bar4.classList.remove("hidden");

        techCate1.classList.remove("tech-clicked");
        techCate2.classList.remove("tech-clicked");
        techCate3.classList.remove("tech-clicked");
        techCate5.classList.remove("tech-clicked");
        techCate6.classList.remove("tech-clicked");

        bar1.classList.add("hidden");
        bar2.classList.add("hidden");
        bar3.classList.add("hidden");
        bar5.classList.add("hidden");
        bar6.classList.add("hidden");
      });

      techCate5.addEventListener("click", function () {
        this.classList.add("tech-clicked");

        bar5.classList.remove("hidden");

        techCate1.classList.remove("tech-clicked");
        techCate2.classList.remove("tech-clicked");
        techCate3.classList.remove("tech-clicked");
        techCate4.classList.remove("tech-clicked");
        techCate6.classList.remove("tech-clicked");

        bar1.classList.add("hidden");
        bar2.classList.add("hidden");
        bar3.classList.add("hidden");
        bar4.classList.add("hidden");
        bar6.classList.add("hidden");
      });

      techCate6.addEventListener("click", function () {
        this.classList.add("tech-clicked");

        bar6.classList.remove("hidden");

        techCate1.classList.remove("tech-clicked");
        techCate2.classList.remove("tech-clicked");
        techCate3.classList.remove("tech-clicked");
        techCate4.classList.remove("tech-clicked");
        techCate5.classList.remove("tech-clicked");

        bar1.classList.add("hidden");
        bar2.classList.add("hidden");
        bar3.classList.add("hidden");
        bar4.classList.add("hidden");
        bar5.classList.add("hidden");
      });

      studyType1.addEventListener("click", function () {
        this.classList.add("type-clicked");

        studyTypeBar1.classList.remove("hidden");

        studyType2.classList.remove("type-clicked");
        studyType3.classList.remove("type-clicked");

        studyTypeBar2.classList.add("hidden");
        studyTypeBar3.classList.add("hidden");
      });

      studyType2.addEventListener("click", function () {
        this.classList.add("type-clicked");

        studyTypeBar2.classList.remove("hidden");

        studyType1.classList.remove("type-clicked");
        studyType3.classList.remove("type-clicked");

        studyTypeBar1.classList.add("hidden");
        studyTypeBar3.classList.add("hidden");
      });

      studyType3.addEventListener("click", function () {
        this.classList.add("type-clicked");

        studyTypeBar3.classList.remove("hidden");

        studyType1.classList.remove("type-clicked");
        studyType2.classList.remove("type-clicked");

        studyTypeBar1.classList.add("hidden");
        studyTypeBar2.classList.add("hidden");
      });
    </script>
    <script
      src="https://kit.fontawesome.com/939838bb27.js"
      crossorigin="anonymous"
    ></script>
    <%@ include file="/WEB-INF/views/common/footer.jsp" %>
  </body>
</html>