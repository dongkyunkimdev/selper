<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page import="com.javassem.domain.MemberVO"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Selper</title>
<link rel="stylesheet" type="text/css"
	href="../resources/style/default.css">

</head>
<script type="text/javascript">
$(document).ready(function() {
		// 취소
		$(".cencle").on("click", function() {

			location.href = "searchapi.do";

		});
​
		$("#submit").on("click", function() {
			if ($("#userPass").val() == "") {
				alert("비밀번호를 입력해주세요.");
				$("#userPass").focus();
				return false;
			}
			if ($("#userName").val() == "") {
				alert("성명을 입력해주세요.");
				$("#userName").focus();
				return false;
			}
			alert("회원정보가 수정되었습니다.")
			document.form.submit();//전송
		});
		
	})
</script>
<body>
	<div id="header" class="container">
		<div id="logo">
			<h1 style="margin-top: 5px; font-size: 2.5rem;">
				<a href="landing.do">Selper</a>
			</h1>
		</div>
		<div id="menu">
			<ul style="margin-top: 10px;">
				<li><a href="searchapi.do" accesskey="1" title="">상권 분석</a></li>
				<li><a href="../../board/listSearch.do" accesskey="2" title="">게시판</a></li>
				<li><a href="../message/receiveList.do" accesskey="3" title="">쪽지함</a></li>
				<li><a href="memberUpdateView.do" accesskey="4" title="">내
						정보</a></li>
				<li><a href="logOut.do" accesskey="5" title="">로그아웃</a></li>
			</ul>
		</div>
	</div>

	<!------------------------------------- 여기부터 메인내용  --------------------------------------->
	<section id="container"
		style="text-align: center; width: 33%; margin-left: 33%; line-height: 2.5rem; margin-top: 10%;">
		<form action="memberUpdate_ok.do" method="post" style="border: 1px solid #000; height: 500px; font-size: 20px;">
			<input class="form-control" type="hidden" id="userNo" name="userNo"
				value="${sessionScope.userVo.userNo}" />
			<div class="form-group has-feedback" style="margin-top: 50px;">
				<label class="control-label" for="userId">아이디&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
				<input class="form-control" type="text" id="userId" name="userId"
					value="${sessionScope.userVo.userId}" readonly="readonly" />
			</div>
			<div class="form-group has-feedback"
				style="margin-top: 5px;">
				<label class="control-label" for="userPass">패스워드</label> <input
					class="form-control" type="password" id="userPass" name="userPass" />

			</div>

			<div class="form-group has-feedback"
				style="margin-top: 5px;">
				<label class="control-label" for="userName">성명&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
				<input class="form-control" type="text" id="userName"
					name="userName" value="${sessionScope.userVo.userName}" />
			</div>

			<div class="form-group has-feedback"
				style="margin-top: 5px;">
				<label class="control-label" for="userTel">전화번호</label> <input
					class="form-control" type="text" id="userTel" name="userTel"
					value="${sessionScope.userVo.userTel}" />
			</div>
			<div class="form-group has-feedback"
				style="margin-top: 5px;">
				<label class="control-label" for="userNick">닉네임&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
				<input class="form-control" type="text" id="userNick"
					name="userNick" value="${sessionScope.userVo.userNick}" />
			</div>

			<div class="form-group has-feedback"
				style="margin-top: 15px;">
				<button class="btn btn-success" type="submit" id="submit"
					style="padding: 0.5em 1em 0.5em 1em;; background: #0173B2; font-weight: 600; font-size: 0.90em; color: #FFF;">회원정보수정</button>
				<button class="cencle btn btn-danger" type="reset"
					style="padding: 0.5em 1em 0.5em 1em;; background: #0173B2; font-weight: 600; font-size: 0.90em; color: #FFF;">취소</button>
			</div>
		</form>
	</section>
</body>
</html>