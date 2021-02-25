<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시물 수정</title>
<script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>

    <script type="text/javascript" src="http://netdna.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>

    <link href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.min.css"

    rel="stylesheet" type="text/css">

    <link href="http://pingendo.github.io/pingendo-bootstrap/themes/default/bootstrap.css"

    rel="stylesheet" type="text/css">
    
    
    
  <link rel="stylesheet" href="http://j2web.dothome.co.kr/theme/bs3_basic/css/default.css?ver=191202">
      <link rel="stylesheet" href="http://j2web.dothome.co.kr/theme/bs3_basic/skin/board/basic/style.css?ver=191202">



    <link rel="stylesheet" href="http://j2web.dothome.co.kr/js/owlcarousel/owl.carousel.min.css?ver=191202">
    <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/highlight.js/10.5.0/styles/railscasts.min.css?ver=191202">


</head>
<body>
<div id="wrapper" style="font-size:2em">
<div id="container_wr">
<div id="container">
<form method="post">
<div id="nav">
 <%@ include file="../include/nav.jsp" %>
</div>


<div id="bo_v_top">
	        
	 
	        <script>

            jQuery(function($){
                // 게시판 보기 버튼 옵션
				$(".btn_more_opt.is_view_btn").on("click", function(e) {
                    e.stopPropagation();
				    $(".more_opt.is_view_btn").toggle();
				})
;
                $(document).on("click", function (e) {
                    if(!$(e.target).closest('.is_view_btn').length) {
                        $(".more_opt.is_view_btn").hide();
                    }
                });
            });
            </script>
	        	    </div>

<h2>게시글 수정</h2>

<section id="bo_v_info">
<label>작성자넘버</label>
<input type="hidden" name="USER_NO" value="${view.USER_NO}"/><br />
<label>게시판번호</label>
<input type="text" name="BOARD_CAT_NO" value="${view.BOARD_CAT_NO}"/>
</section>



<h2 id="bo_v_title" style="font-size:50%;">
<span class="bo_v_tit">
<label>제목</label>
<input type="text" name="BOARD_TITLE" value="${view.BOARD_TITLE}"/></span>
</h2>

<section id="bo_v_atc">
<h2 id="bo_v_atc_title">본문</h2>
<label>내용</label>
<textarea  wrap="hard" style=" resize: none; background-color:transparent;" cols="129" rows="8" name="BOARD_CONTENT">${view.BOARD_CONTENT}</textarea><br />
<!--
<label>날짜</label>
<input type="text" name="BOARD_DATE" value="sysdate"/><br />

<label>조회수</label>
<input type="text" name="BOARD_VIEWS" value="0"/><br />
 -->

<label>사진첨부</label>
<input type="file" name="BOARD_PICTURE" value="${view.BOARD_PICTURE}"/><br />
 </section>

<input type="submit" value = "수정"/>

</form>
</div></div></div>
</body>
</html>