<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Selper</title>
<link rel="stylesheet" href="../resources/style/join.css"
	type="text/css">
<style>
a {
	text-decoration: none;
	color: #fff;
}
</style>
</head>
<body>
	<div class="fullpage">
		<h1 style="padding-top: 330px; font-size: 5rem;">
			<span class="welcomeName" style="color: #000000;">${userName}</span>님
			환영합니다
		</h1>

		<table width="500"; style="line-height: 30px; font-size: 1.2rem; color:#fff">
			<tr>
				<th>
					<!-- sessionTime과 userName는 세션 속성에 저장된 값 :  sessionScope 접근 없이도 가능  -->
					로그인 정보 : [ ${sessionScope.sessionTime} ]
				</th>
			</tr>
			<tr>
				<th><a href="logOut.do">[로그아웃]</a> &nbsp;&nbsp; <a
					href="landing.do">[Selper 이동]</a></th>
			</tr>
		</table>


		<c:if test="${list!=null}">
			<h2>[ 회원정보 ]</h2>
			<table>
				<tr>
					<th>UserNo</th>
					<th>UserId</th>
					<th>UserName</th>
					<th>UserPass</th>
					<th>UserTel</th>
					<th>UserNick</th>
				</tr>
				<c:forEach items="${list}" var="vo">
					<tr>
						<td>${vo.userNo}</td>
						<td>${vo.userId}</td>
						<td>${vo.userName}</td>
						<td>${vo.userPass}</td>
						<td>${vo.userTel}</td>
						<td>${vo.userNick}</td>
					</tr>
				</c:forEach>
			</table>
			<p />
			<form action="userSearch.do" method="post">
				<select name="keyField">
					<option value="0">--선택--</option>
					<option value="userName">이름</option>
					<option value="userId">아이디</option>
				</select> <input type="text" name="keyWord" /> <input type="submit"
					value="검색" />
			</form>
		</c:if>

	</div>
</body>
</html>







