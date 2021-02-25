<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page session="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="imagetoolbar" content="no">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta charset="UTF-8">
<title>게시글 목록</title>

<link rel="stylesheet" href="http://j2web.dothome.co.kr/theme/bs3_basic/css/default.css?ver=191202">
<link rel="stylesheet" href="http://j2web.dothome.co.kr/js/font-awesome/css/font-awesome.min.css?ver=191202">
<link rel="stylesheet" href="http://j2web.dothome.co.kr/theme/bs3_basic/skin/connect/basic/style.css?ver=191202">
<link rel="stylesheet" href="http://j2web.dothome.co.kr/theme/bs3_basic/skin/popular/basic/style.css?ver=191202">
<link rel="stylesheet" href="http://j2web.dothome.co.kr/theme/bs3_basic/skin/board/basic/style.css?ver=191202">
<link rel="stylesheet" href="http://j2web.dothome.co.kr/theme/bs3_basic/skin/outlogin/basic/style.css?ver=191202">
<link rel="stylesheet" href="http://j2web.dothome.co.kr/theme/bs3_basic/skin/latest/notice/style.css?ver=191202">
<link rel="stylesheet" href="http://j2web.dothome.co.kr/theme/bs3_basic/skin/visit/basic/style.css?ver=191202">
<link rel="stylesheet" href="http://j2web.dothome.co.kr/js/owlcarousel/owl.carousel.min.css?ver=191202">
<link rel="stylesheet" type="text/css"
	href="../resources/style/default.css">
<!--[if lte IE 8]>
<script src="http://j2web.dothome.co.kr/js/html5.js"></script>
<![endif]-->
<script src="http://j2web.dothome.co.kr/js/jquery-1.12.4.min.js?ver=191202"></script>
<script src="http://j2web.dothome.co.kr/js/jquery-migrate-1.4.1.min.js?ver=191202"></script>
<script src="http://j2web.dothome.co.kr/js/jquery.menu.js?ver=191202"></script>
<script src="http://j2web.dothome.co.kr/js/common.js?ver=191202"></script>
<script src="http://j2web.dothome.co.kr/js/wrest.js?ver=191202"></script>
<script src="http://j2web.dothome.co.kr/js/placeholders.min.js?ver=191202"></script>
<script src="http://j2web.dothome.co.kr/js/owlcarousel/owl.carousel.min.js?ver=191202"></script>
<script src="http://j2web.dothome.co.kr/js/jquery.bxslider.js?ver=191202"></script>


<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
</head>


<body style="margin-left: 17px;">
<div id="header" class="container"
		style="position: relative; padding: 3em 0em; overflow: hidden; margin: 0em auto; width: 1200px; font-family: 'Source Sans Pro', sans-serif; font-size: 12pt; font-weight: 300; color: #000000;">
		<div id="logo" style="padding: 0; margin: 0 0 0 0; margin-top: 8px;">
			<h1 style="font-size: 2.5em; font-weight: bold; margin: .0">
				<a href="../user/landing.do"
					style="text-decoration: none; color: #0173B2;">Selper</a>
			</h1>
		</div>
		<div id="menu">
			<ul style="margin-top: 10px;">
				<li><a href="../user/searchapi.do" accesskey="1" title="">상권
						분석</a></li>
				<li><a href="../../board/listSearch.do" accesskey="2" title="">게시판</a></li>
				<li><a href="../message/receiveList.do" accesskey="3" title="">쪽지함</a></li>
				<li><a href="../user/memberUpdateView.do" accesskey="4"
					title="">내 정보</a></li>
				<li><a href="logOut.do" accesskey="5" title="">로그아웃</a></li>
			</ul>
		</div>
	</div>
<div id="wrapper">
    <div id="container_wr" style="margin-left: 500px; margin-top: 50px;">
   
    <div id="container">
    <div id="bo_list" style="width:100%">
    
    
     <div class="tbl_head01 tbl_wrap">
     
     <h2>게시글 목록</h2>

     
    
     
	<table style="text-align:center">
	<caption>게시판리스트</caption>
		<thead >
			<tr>
				<th scope="col">번호</th>
				<th scope="col">제목</th>
				<th  scope="col">작성일</th>
				<th scope="col">작성자</th>
				<th scope="col">조회수</th>
			</tr>
		</thead>

		<tbody>
			<c:forEach items="${list}" var="list">
				<tr class="even">
					<td style="height: 10px; padding: 10px 0px" class="td_num2">${list.BOARD_NO}</td>
					<td style="height: 10px; padding: 10px 0px"><a href="/board/view?BOARD_NO=${list.BOARD_NO}">${list.BOARD_TITLE}</a>
					</td>
					<td style="height: 10px; padding: 10px 0px">${list.BOARD_DATE}</td>

					<td style="height: 10px; padding: 10px 0px">${list.USER_NO}</td>
					<td style="height: 10px; padding: 10px 0px">${list.BOARD_VIEWS}</td>
				</tr>
			</c:forEach>
		</tbody>

	</table>
	<br/>

	<div class="search row">
		<div class="col-md-offset-2 col-md-2">
			<select name="searchType" class="form-control">
				<option value="n"
					<c:out value="${scri.searchType == null ? 'selected' : ''}"/>>-----</option>
				<option value="t"
					<c:out value="${scri.searchType eq 't' ? 'selected' : ''}"/>>제목</option>
				<option value="c"
					<c:out value="${scri.searchType eq 'c' ? 'selected' : ''}"/>>내용</option>
				<option value="w"
					<c:out value="${scri.searchType eq 'w' ? 'selected' : ''}"/>>작성자
					No</option>
				<option value="tc"
					<c:out value="${scri.searchType eq 'tc' ? 'selected' : ''}"/>>제목+내용</option>
			</select>
		</div>
			<div class="col-md-5">
			<div class="input-group">
				<input type="text" name="keyword" id="keywordInput"
					value="${scri.keyword}" class="form-control"/> 
					<span class="input-group-btn">
					<button id="searchBtn" class="btn btn-default">검색</button>
				</span>
				</div>
			</div>
			<div class="col-md-offset-1 col-md-2">
			<button id="write" onclick = "location.href ='/board/write'"  class="btn btn-default">글 작성</button> 
	</div>

		<script>
			$(function() {
				$('#searchBtn').click(
						function() {
							self.location = "listSearch"
									+ '${pageMaker.makeQuery(1)}'
									+ "&searchType="
									+ $("select option:selected").val()
									+ "&keyword="
									+ encodeURIComponent($('#keywordInput')
											.val());
						});
			});
		</script>
	</div>


<br/>
	<div class="col-md-offset-3" >
		<ul class="pagination">
			<c:if test="${pageMaker.prev}">
				<a  href="listSearch${pageMaker.makeSearch(pageMaker.startPage - 1)}">≪</a>
			</c:if>

			<c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="idx">
				<li <c:out value="${pageMaker.cri.page == idx ? 'class=active' : ''}"/>>
				<a href="listSearch${pageMaker.makeSearch(idx)}">${idx}</a>
			</c:forEach>

			<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
				<a href="listSearch${pageMaker.makeSearch(pageMaker.endPage + 1)}">≫</a>
			</c:if>
		</ul>
	</div>


	<div>
		<c:forEach begin="1" end="${pageNum}" var="num">
			<span> <a
				href="/board/listSearch?page=${page}&perpagenum=${perPageNum}"></a>
			</span>
		</c:forEach>
	</div>
</div></div></div></div></div>
</body>
</html>