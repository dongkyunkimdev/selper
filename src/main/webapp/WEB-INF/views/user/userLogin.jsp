<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Selper</title>
<link rel="stylesheet" href="../resources/style/join.css"
	type="text/css">

</head>
<script>
	window.onload = function() {
		document.getElementById('Submit').onclick = check;
	}

	function check() {
		if (document.form.userId.value == "") {
			alert("ID를 입력하세요.")
			document.form.userId.focus();
			return false;
		}

		if (document.form.userPass.value == "") {
			alert("패스워드를 입력하세요.")
			document.form.userPass.focus();
			return false;
		}

		document.form.submit();//전송

	}
</script>
<body>
	<div class="fullpage">
		<div class="Selper-header">
			<h1>
				Selper<span class="subComment">성공창업을 취한 첫걸음</span>
			</h1>
		</div>

		<div class="loginForm">
			<h1 class="joinText"">로그인</h1>
			<form name="form" action="login.do" method="post" id="userinput">
				<table class="table2">
					<tr>
						<td>
							<div class="contentText" align="left">아이디</div>
						</td>
						<td><input type="text" name="userId"></td>
					</tr>

					<tr>
						<td>
							<div class="contentText" align="left">패스워드</div>
						</td>
						<td><input type="password" name="userPass"></td>
					</tr>
					<tr>
						<td colspan=2>
							<div class="buttonDiv">
								<input class="btnLogin" type="button" name="Submit" id="Submit"
									value="로그인"> <input class="btnRegist" type="button"
									value="회원가입" onclick="location.href='userJoin.do'"> <input
									class="btnCancel" type="reset" value="취소">
							</div>
						</td>
					</tr>
				</table>
			</form>
		</div>
	</div>
</body>
</html>