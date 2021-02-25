<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<title>Selper</title>

<!-- 
          정적자원들은 resources 폴더에 저장
	 현재 프로젝트명에서 user 경로를 더한 상태이기에 상위경로를 올라갔다가 resources를 찾음.
 -->

<link rel="stylesheet" href="../resources/style/join.css"
	type="text/css">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<script src="../resources/js/js_userinput.js"></script>
</head>
<body>
	<div class="fullpage">
		<div class="Selper-header">
			<h1>
				Selper<span class="subComment">성공창업을 취한 첫걸음</span>
			</h1>
		</div>
		<div class="joinForm">
			<h1 class="joinText"">회원가입</h1>
			<form method="post" action="userInsert.do" name="userinput"
				id="userinput2">
				<table class='table2'>
					<tr>
						<td class="normalbold tb_ttl">
							<div class="contentText" align="left">사용자 ID</div>
						</td>
						<td colspan="3" class="normal"><input type="text"
							name="userId" id="userId" size="20"> <span
							id="idCheckResult"
							style="font-size: 1rem; width: 150px; color: red; vertical-align: bottom;"></span></td>
					</tr>
					<tr>
						<td class="normalbold tb_ttl">
							<div class="contentText" align="left">비밀번호</div>
						</td>
						<td width="154" class="normal"><input type="password"
							name="userPass" id="userPass"></td>
					</tr>
					<tr>
						<td class="normalbold tb_ttl">
							<div class="contentText" align="left">비밀번호 확인</div>
						</td>
						<td width="160"><input type="password" name="userPass2"
							id="userPass2"></td>
					</tr>
					<tr>
						<td class="normalbold tb_ttl">
							<div class="contentText" align="left">사용자 이름</div>
						</td>
						<td colspan="3" height="23" class="normal"><input type="text"
							name="userName" id="userName"></td>
					</tr>
					<tr>
						<td class="normalbold tb_ttl">
							<div class="contentText" align="left">전화번호</div>
						</td>
						<td colspan="3" height="23" class="normal"><input type="text"
							name="userTel" id="userTel"></td>
					</tr>
					<tr>
						<td class="normalbold tb_ttl">
							<div class="contentText" align="left">닉네임</div>
						</td>
						<td colspan="3" height="23" class="normal"><input type="text"
							name="userNick" id="userNick"></td>
					</tr>
					<tr>
						<td colspan="4" class="normal">
							<div class="buttonDiv2">
								<input class=btnRegist type="button" name="confirm" id="confirm"
									value="등   록">&nbsp;&nbsp; <input class="btnCancel"
									type="reset" name="reset" value="취   소">&nbsp;&nbsp;
								<button class="btnLogin">
									<a class="aLogin" href='../index.jsp'
										style="text-decoration: none; color: #fff">초기화면</a>
								</button>
							</div>
						</td>
					</tr>
				</table>
			</form>
		</div>
	</div>
</body>
</html>
