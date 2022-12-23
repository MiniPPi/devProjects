<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- jstl 라이브러리 -->

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/app/resources/css/reset.css">
<link rel="stylesheet" href="/app/resources/css/community/boardList.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Rounded:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
<script src="https://kit.fontawesome.com/939838bb27.js"crossorigin="anonymous"></script>
<title>Insert title here</title>
</head>

<body>
    
<%@include file ="/WEB-INF/views/common/header.jsp" %>

    <div id="main-wrap">
        <div id="board-banner">
            <img src="/app/resources/img/freeBoardBanner.png" alt="자유게시판 배너">
        </div>
        <div id="board-category">
            <div id="write-btn">
                <span id="edit-icon" class="material-symbols-rounded">edit</span>
                <span>작성하기</span> 
            </div>
            <div id="category" class="height-40">
                <input type="radio" name="freeboard-cate" id="freeboard-cate1">
                <label for="freeboard-cate1">전체</label>
                <input type="radio" name="freeboard-cate" id="freeboard-cate2">
                <label for="freeboard-cate2">자유</label>
                <input type="radio" name="freeboard-cate" id="freeboard-cate3">
                <label for="freeboard-cate3">개발</label>
                <input type="radio" name="freeboard-cate" id="freeboard-cate4">
                <label for="freeboard-cate4">커리어</label>
                <input type="radio" name="freeboard-cate" id="freeboard-cate5">
                <label for="freeboard-cate5">추가1</label>
                <input type="radio" name="freeboard-cate" id="freeboard-cate6">
                <label for="freeboard-cate6">추가2</label>
                <input type="radio" name="freeboard-cate" id="freeboard-cate7">
                <label for="freeboard-cate7">temp-category3</label>
                <input type="radio" name="freeboard-cate" id="freeboard-cate8">
                <label for="freeboard-cate8">temp-category1</label>
                <input type="radio" name="freeboard-cate" id="freeboard-cate9">
                <label for="freeboard-cate9">temp-category2</label>
                <input type="radio" name="freeboard-cate" id="freeboard-cate10">
                <label for="freeboard-cate10">temp-category3</label>
                <input type="radio" name="freeboard-cate" id="freeboard-cate11">
                <label for="freeboard-cate11">temp-category1</label>
                
                <!-- jstl 반복문 -->
                <!-- <c:forEach items = "" var= "cate">
                    <input type="radio" name="freeboard-cate" id="${cate.no}">
                    <label for="${cate.no}">${cate.name}</label>
                </c:forEach> -->

                
                <script>
                    // 카테고리가 클릭되면 해당 카테고리의 쿼리스트링을 생성 후 이동
                    $('#category').click(function(){
                        var cate = $(this).find('input:checked').attr('id');
                        location.href = '/app/community/board/list?cate=' + cate;
                    });


                    // 쿼리스트링에 따라 해당 카테고리를 체크
                    $(document).ready(function(){
                        var cate = location.search.split('=')[1];
                        $('#category').find('input[id=' + cate + ']').prop('checked', true);
                    });

                    // 
                </script>
              
                
            </div>
            <div id="cateDown">+</div>

            <script defer>
                //#category 의 자식 input 태그의 개수를 구해서 5개 이상이면 + 버튼 생성
                $(document).ready(function(){
                    if($('#category').children('input').length > 5){
                        $('#cateDown').show();
                    }else{
                        $('#cateDown').hide();
                    }
                });

               
                $('#cateDown').click(function(){

                     // + 버튼 카테고리 토글
                    if($('#category').hasClass('height-40')){
                        $('#category').removeClass('height-40');
                        $('#category').addClass('height-auto');
                    }else{
                        $('#category').removeClass('height-auto');
                        $('#category').addClass('height-40');
                    }

                    //cateDown 버튼 클릭시 +, - 토글
                    if($(this).text() == '+'){
                        $(this).text('-');
                    }else{
                        $(this).text('+');
                    }

                });

                
            </script>



            <div>
                <select class="" name="" id="sorting">
                    <option value="cate1" selected>최신순</option>
                    <option value="cate2">댓글수</option>
                    <option value="cate3">조회수</option>
                    <option value="cate4">좋아요수</option>
                </select>
            </div>

        </div>
        <div id="explore">
            <span id="refresh-icon" class="material-symbols-rounded">refresh</span>
            <div id="search-box">
                <span id="search-icon" class="material-symbols-rounded">search</span>
                <form action="">
                    <input type="text" id="search">
                    <input type="submit" id="search-submit">
                </form>
            </div>
            <div id="mini-paging">
                <span class="material-symbols-rounded arrow-icon">arrow_back</span>
                <span id="paging-number">1/342</span>
                <span class="material-symbols-rounded arrow-icon">arrow_forward</span>
            </div>
        </div>
        <div id="board-list">
            <!-- 공지사항 반복 -->
            <div class="board-content notice">
                <div class="title-box">
                    <span>[런타임]공지사항 JAVA 언어로 배우는 디자인 패턴 입문 이벤트</span>
                </div>
                <div class="content-info-box">
                    <div class="writer-info">
                        <div class="writer-profile"></div>
                        <span class="writer-nick">LearnTime</span>
                        <div class="writer-date">1일 전</div>
                    </div>
                    <div class="content-info">
                        <span class="hit-number">조회수 1,150</span>
                        <span class="material-symbols-rounded comment-icon">comment</span>
                        <span class="comment-number">3</span>
                        <span class="material-symbols-rounded thumbup-icon">thumb_up</span>
                        <span class="like-number">40</span>
                    </div>
                </div>
            </div>
            
            <!-- 공지사항 반복 끝 -->

            <!-- 반복시작 -->
            <c:forEach var="list" items="${boardList}">

                <div class="board-content" onclick="location.href='/app/community/board/detail?bno=${list.no}'">
                    <div class="title-box">
                        <span>${list.title}</span>
                    </div>
                    <div class="content-info-box">
                        <div class="writer-info">
                            <div class="writer-profile"></div>
                            <span class="writer-nick">${list.writerNick}</span>
                            <div class="writer-date">1일 전</div>
                        </div>
                        <div class="content-info">
                            <span class="hit-number">조회수 ${list.hit}</span>
                            <span class="material-symbols-rounded comment-icon">comment</span>
                            <span class="comment-number">3</span>
                            <span class="material-symbols-rounded thumbup-icon">thumb_up</span>
                            <span class="like-number">
                      
                            </span>
                        </div>
                    </div>
                </div>

            </c:forEach>
            <!-- 반복 끝 -->


        </div>
        <div id="paging">
            <div class="paging-btn">1</div>
            <div class="paging-btn">2</div>
            <div class="paging-btn">3</div>
            <div class="paging-btn">4</div>
            <div class="paging-btn">5</div>
            <div class="paging-btn">6</div>
            <div class="paging-btn">7</div>
            <div class="paging-btn">8</div>
            <div class="paging-btn">9</div>
            <div class="paging-btn">10</div>
            <div class="paging-btn" id="next-btn">다음</div>
        </div>

    </div>
    
    <%@include file ="/WEB-INF/views/common/footer.jsp" %>
    <script>
        // 1. #write-btn 을 누르면 작동하는 함수
        $('#write-btn').on('click',function(){
           
            if(${loginMember == null}){
                $('.blackBG').addClass('show');
            }else{
                location.href='/app/community/board/write';
            }

        });
    </script>
    
</body>

</html>
</html>