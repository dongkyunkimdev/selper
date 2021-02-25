<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="imagetoolbar" content="no">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>게시물 조회</title>
<script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>

    <script type="text/javascript" src="http://netdna.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>

    <link href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.min.css"

    rel="stylesheet" type="text/css">

    <link href="http://pingendo.github.io/pingendo-bootstrap/themes/default/bootstrap.css"

    rel="stylesheet" type="text/css">
    
    
    
    <link rel="stylesheet" href="http://j2web.dothome.co.kr/theme/bs3_basic/css/default.css?ver=191202">
    <link rel="stylesheet" href="http://j2web.dothome.co.kr/js/font-awesome/css/font-awesome.min.css?ver=191202">
    <link rel="stylesheet" href="http://j2web.dothome.co.kr/theme/bs3_basic/skin/connect/basic/style.css?ver=191202">
    <link rel="stylesheet" href="http://j2web.dothome.co.kr/theme/bs3_basic/skin/popular/basic/style.css?ver=191202">
    <link rel="stylesheet" href="http://j2web.dothome.co.kr/theme/bs3_basic/skin/board/basic/style.css?ver=191202">
    <link rel="stylesheet" href="http://j2web.dothome.co.kr/theme/bs3_basic/skin/outlogin/basic/style.css?ver=191202">
    <link rel="stylesheet" href="http://j2web.dothome.co.kr/theme/bs3_basic/skin/latest/notice/style.css?ver=191202">
    <link rel="stylesheet" href="http://j2web.dothome.co.kr/theme/bs3_basic/skin/visit/basic/style.css?ver=191202">
    <link rel="stylesheet" href="http://j2web.dothome.co.kr/js/owlcarousel/owl.carousel.min.css?ver=191202">
    <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/highlight.js/10.5.0/styles/railscasts.min.css?ver=191202">
</head>






<body>

<div id="wrapper" style="font-size:2em">
<div id="container_wr">
<div id="container">
<form method="post">
<%-- <div id="nav" >
 <%@ include file="../include/nav.jsp" %>
</div> --%>






<section id="bo_v_info">
<label>게시글번호 : ${view.BOARD_NO} </label><br />
<input type="hidden" name="BOARD_NO" value="${view.BOARD_NO}" />
 
<label>게시판번호 : ${view.BOARD_CAT_NO}</label><br />
</section>






<h2 id="bo_v_title" >
<span class="bo_v_tit">
           ${view.BOARD_TITLE}</span>
</h2>




<section id="bo_v_info">
<div class="profile_info">
	<div class="pf_img"><img src="http://j2web.dothome.co.kr/img/no_profile.gif" alt="profile_image">
	</div>
		<div class="profile_info_ct">
        		<span class="sound_only">작성자</span> <strong><span class="sv_member">${view.USER_NO} 님</span></strong><br/>
        		



        		<span class="sound_only">조회</span><strong><i class="fa fa-eye" aria-hidden="true"></i> ${view.BOARD_VIEWS}회</strong>
        		<strong class="if_date"><span class="sound_only">작성일</span><i class="fa fa-clock-o" aria-hidden="true"></i>${view.BOARD_DATE}</strong> 
        		<a style="font-size:0.75em;" href="/board/modify?BOARD_NO=${view.BOARD_NO}">수정</a> 
        		<a style="font-size:0.75em;" href="/board/delete?BOARD_NO=${view.BOARD_NO}">삭제</a>
        		
        		
        		
        		<!-- 신고 시작 -->
        		<a style="font-size:0.75em; color:red;" onclick="declarationFunction();">신고</a><br/>
        	<!-- 	  <a href="/board/write">글 작성</a> --> 
        		<script type="text/javascript">
        		function declarationFunction(){
                    window.open("declaration?BOARD_TITLE=${view.BOARD_TITLE}",
                    		"게시글 신고", 
                    		"width = 250, height = 250, top = 150, left = 500, location = no");
        		}
        		
        		</script>
        		<!--  신고 끝   -->
    	</div>

	<input type="hidden" name="USER_NO" value="${view.USER_NO}"/>
</div>

<!-- 게시물 상단 버튼 시작 -->
<div id="bo_v_top">
	        
	        <ul class="btn_bo_user bo_v_com">
				<li><a href="/board/listSearch?page=1&perPageNum=10" class="btn_b01 btn" title="목록"><i class="fa fa-list" aria-hidden="true"></i><span class="sound_only">목록</span></a></li>
	            	            	        		        </ul>
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
	        	    
</section>
<!-- 게시물 상단 끝 -->
<!--  본문 내용 시작 -->
<section id="bo_v_atc">
        <h2 id="bo_v_atc_title">본문</h2>
        <div id="bo_v_share">
        		        	    </div>

        <div id="bo_v_img">
</div>

        <!-- 본문 내용 시작 { -->
	<div id="bo_v_con" style="bgcolor:#000">

<textarea wrap="hard" style="border: none;  resize: none; background-color:transparent;" cols="129" rows="8" name="BOARD_CONTENT" readonly  disabled>${view.BOARD_CONTENT}</textarea><br />


	
<label>첨부사진 : ${view.BOARD_PICTURE}</label>
	
	</div>

    </section>
<!-- 본문 내용 끝 -->
	</form>

<button type="button" class="cmt_btn"><span class="total"><b>댓글</b> 0</span><span class="cmt_more"></span></button>


<!-- 댓글시작 -->
<section id="bo_vc" style="display: block;">
      <!--   <p id="bo_vc_empty" style="padding:0px 0px"> -->
      <br/>
<c:forEach items="${reply}" var="reply">
<p><img class="pf_img" style="width:30px; height:30px; border-radius: 70%;"src="http://j2web.dothome.co.kr/img/no_profile.gif" alt="profile_image">
${reply.USER_NO}/ ${reply.COMMENT_DATE} <a style="font-size:0.75em" href="/reply/delete?COMMENT_NO=${reply.COMMENT_NO}&num=${view.BOARD_NO}">삭제</a> </p>
		<p>${reply.COMMENT_CONTENT }</p><br/>
		
</c:forEach>

<form action="/reply/write">
	
		<p>
			<label>댓글 작성자</label> <input style="border: none;   background-color:transparent;" type="text" name="USER_NO" />
		</p>
		<p>
			<textarea rows="5" cols="50" name="COMMENT_CONTENT"></textarea>
		</p>
		<p>
		<input type="hidden" name="BOARD_NO" value="${view.BOARD_NO}">
			<button type="submit">댓글 작성</button>
		</p>
	</form>
	<!-- 	</p> -->
</section>

<script>
jQuery(function($) {            
    //댓글열기
    $(".cmt_btn").click(function(e){
        e.preventDefault();
        $(this).toggleClass("cmt_btn_op");
        $("#bo_vc").toggle();
    });
});
</script><script src="http://j2web.dothome.co.kr/js/md5.js"></script>

</div></div></div>
<!--  댓글 끝 -->

</body>
</html>