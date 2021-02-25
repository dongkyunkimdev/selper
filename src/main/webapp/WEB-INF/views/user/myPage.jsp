<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Selper</title>
<link rel="stylesheet" type="text/css" href="../resources/style/default.css">
</head>

<body>
	<div id="header" class="container">
		<div id="logo">
			<h1 style="margin-top: 5px; font-size: 2.5rem;">
				<a href="landing.do">Selper</a>
			</h1>
		</div>
		<div id="menu">
			<ul>
				<li><a href="searchapi.do" accesskey="1" title="">상권 분석</a></li>
				<li><a href="../../board/listSearch.do" accesskey="2" title="">게시판</a></li>
				<li><a href="../message/receiveList.do" accesskey="3" title="">쪽지함</a></li>
				<li><a href="memberUpdateView.do" accesskey="4" title="">내 정보</a></li>
				<li><a href="logOut.do" accesskey="5" title="">로그아웃</a></li>
			</ul>
		</div>
	</div>
	<!------------------------------------- 여기부터 메인내용  --------------------------------------->
	<table id="buttons">
		<tr>
			<td>
				<button class="btn5 btn"
					onclick="location.href='memberUpdateView.do'">
					<span class="btn5_txt btn_txt"> MY INFO</br> 회원 정보
					</span>
				</button>
			</td>
			<td>
				<button class="btn5 btn"
					onclick="location.href='../message/messageBox.do'">
					<span class="btn5_txt btn_txt"> MESSAGE</br>쪽지함
					</span>
				</button>
			</td>

			<td>
				<button class="btn5 btn">
					<span class="btn5_txt btn_txt"> BOARD INFO</br> 게시글 관리
					</span>
				</button>
			</td>
		</tr>
		<tr>
			<td>
				<button class="btn5 btn">
					<span class="btn5_txt btn_txt"> COMMENT INFO</br>댓글 관리
					</span>
				</button>
			</td>
			<td>
				<button class="btn5 btn">
					<span class="btn5_txt btn_txt"> LIKE LIST</br>찜 목록
					</span>
				</button>
			</td>
			<td>
				<button class="btn5 btn">
					<span class="btn5_txt btn_txt"> HELP </br>고객센터
					</span>
				</button>
			</td>
		</tr>
	</table>
</body>
</html>