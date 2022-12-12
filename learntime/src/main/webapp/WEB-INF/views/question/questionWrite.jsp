<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/summernote/summernote-lite.css">
<title>Insert title here</title>
<link rel="stylesheet" href="/app/resources/css/reset.css">
<link rel="stylesheet" href="/app/resources/css/question/questionWrite.css">
</head>
<body>
<%@ include file = "/WEB-INF/views/common/header.jsp" %>
<div class="list-main">
    <div class="banner-section">
        <div class="banner">
            <div id="banner-title1"><span>1:1 문의게시판</span></div>
            <div id="banner-title2"><span>궁금하신 점을 남겨주시면 접수 순서대로 답변 드리겠습니다.</span></div>
        </div>
    </div>
    <div class="q-detail-list">
        <div class="q-sign">
            <div class="line1">
                <div class="line-a"></div>
            </div>
            <div class="name-q">1:1 문의게시판 </div>
            <div class="line2">
                <div class="line-b"></div>
            </div>
        </div>
        <div class="q-title-date">
            <div class="category-q"><select name="category" id="categories">
                <option value="total">전체</option>
                <option value="study">스터디</option>
                <option value="study-confirmed">공부인증</option>
                <option value="QnA">Q&A</option>
                <option value="mentoring">멘토링</option>
                <option value="community">커뮤니티</option>
                <option value="skin-shop">스킨샵</option>
            </select></div>
            <div class="title-q"></div>
            <div class="date-q"></div>
        </div>
        <div class="empty1"></div>
        <div class="q-content">
            <textarea class="summernote" name="editordata"></textarea>
        </div>
        <div class="backBtn">
            <div class="btn-to">글목록</div>
        </div>
    </div>
</div>






<%@ include file = "/WEB-INF/views/common/footer.jsp" %>

<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

    <!-- 서머노트 로딩-->
    <script src="${pageContext.request.contextPath}/resources/js/summernote/summernote-lite.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/summernote/lang/summernote-ko-KR.js"></script>
    <script>
        $('.summernote').summernote({
            height: 350,
            placeholder: '내용을 작성하세요',
            lang: "ko-KR"
        });
    </script>

</body>
</html>