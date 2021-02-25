<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<link rel="stylesheet" type = "text/css" 
href="../resources/style/messageForm.css">
<link rel="stylesheet" type="text/css"
	href="../resources/style/Message.css" />
<link rel="stylesheet" type="text/css"
	href="../resources/style/default.css">
<title>Selper</title>
<script type="text/javascript">
var menu = document.getElementsByClassName("menu");

function handleClick(event) {
  console.log(event.target);
  // console.log(this);
  // 콘솔창을 보면 둘다 동일한 값이 나온다

  console.log(event.target.classList);

  if (event.target.classList[1] === "clicked") {
    event.target.classList.remove("clicked");
  } else {
    for (var i = 0; i < menu.length; i++) {
    	menu[i].classList.remove("clicked");
    }

    event.target.classList.add("clicked");
  }
}

function init() {
  for (var i = 0; i < menu.length; i++) {
	  menu[i].addEventListener("click", handleClick);
  }
}

init();
</script>
</head>
<body>
	<div id="header" class="container">
		<div id="logo">
			<h1 style="margin-top: 5px; font-size: 2.5rem;">
				<a href="../user/landing.do">Selper</a>
			</h1>
		</div>
		<div id="menu">
			<ul style="margin-top: 10px;">
				<li><a href="../user/searchapi.do" accesskey="1" title="">상권 분석</a></li>
				<li><a href="../../board/listSearch.do" accesskey="2" title="">게시판</a></li>
				<li><a href="../message/receiveList.do" accesskey="3" title="">쪽지함</a></li>
				<li><a href="../user/memberUpdateView.do" accesskey="4" title="">내 정보</a></li>
				<li><a href="../user/logOut.do" accesskey="5" title="">로그아웃</a></li>
			</ul>
		</div>
	</div>

	<button class="app-cancel-bonuses">Please cancel this !</button>

	<div class="app">
		<div class="top"></div>
		<div class="app__content">
			<div class="accounts" style="background: #0173B2;">
				<div class="accounts__item accounts__item--active" style="background: #3B91BF;">
					<img
						class="accounts__avatar"
						src="../resources/images/user.jpg"
						alt="">
				</div>
			</div>
			<div class="menu">
				<div class="menu-user">
					<div class="profile-head">
						<div class="profile-head__id">
							<img class="profile-head__avatar"
								src="../resources/images/user.jpg"
								alt="">
							<div>
								<div class="profile-head__name">${sessionScope.userVo.userName}</div>
							</div>
						</div>
						<div class="profile-head__options">
							<i class="fas fa-ellipsis-h"></i>
						</div>
					</div>
				</div>
				<div>
					<div class="menu-main">
						<div class="menu__item" OnClick="location.href='receiveList.do'">
							<div>
								<i class="menu__icon fas fa-inbox"></i> <span
									class="menu__label">받은 쪽지</span>
							</div>
						</div>
						<div class="menu__item" OnClick="location.href='sendList.do'">
							<div>
								<i class="menu__icon fas fa-paper-plane"></i> <span
									class="menu__label">보낸 쪽지</span>
							</div>
						</div>
						<div class="menu__item" OnClick="location.href='sendMessage.do'">
							<div>
								<i class="menu__icon fas fa-pencil-alt"></i> <span
									class="menu__label">쪽지 보내기</span>
							</div>
						</div>
					</div>
				</div>
				<div class="new">
					<div class="new-mail">
						<div class="new-mail__top">
							<div class="new-mail__title">
								<span>Write a new mail from</span>
								<div class="select">
									<select class="select__item" name="" id="">
										<option value="">jeanclaude@gmail.com</option>
										<option value="">him@gmail.com</option>
									</select> <i class="select__arrow fas fa-sort-down"></i>
								</div>
							</div>
							<i class="new-mail__close new-mail__toggle fas fa-times"></i>
						</div>
						<div class="new-mail-exp">
							<div class="new-mail-exp__item">
								<div class="new-mail-exp__label">To</div>
								<input placeholder="Enter email" type="text"
									class="new-mail-exp__input">
							</div>
							<div class="new-mail-exp__item">
								<div class="new-mail-exp__label">Object</div>
								<input placeholder="Enter mail object" type="text"
									class="new-mail-exp__input">
							</div>
						</div>
						<div class="new-mail__content">
							<textarea class="new-mail__message">Lorem ipsum dolor sit amet consectetur, adipisicing elit. Pariatur eveniet corrupti deserunt ad cum inventore error architecto voluptatum temporibus eligendi asperiores placeat explicabo, consequatur molestias. Corrupti voluptatem commodi dicta dolorum.</textarea>
						</div>
						<div class="new-mail-foot">
							<div class="new-mail-foot__insert">
								<i class="new-mail-foot__icon far fa-file-archive"></i> <i
									class="new-mail-foot__icon far fa-image"></i> <i
									class="new-mail-foot__icon fas fa-paperclip"></i>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="mails">
				<div class="message-list scrollable" style = "width : 1300px">
					<div class="scrollable__target">
						
						<form id="form" action="send.do" method="post">
							<input name="message_user1" id="user1" type="text" placeholder="보내는사람">
							<input name="message_user2" id="user2"type="text" placeholder="받는사람 "><br/>
							<input name="message_title" id="title" type="text" placeholder="제목을 입력하세요.">
							<textarea name="message_content" id="message" type="text" placeholder="내용을 입력하세요."></textarea>
						<input id="submit" type="submit" value="send">
  
</form>
						
					</div>
				</div>
			</div>
		</div>
		</div>
	</div>

</body>
</html>