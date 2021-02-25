<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="../resources/style/Message.css" />
<link rel="stylesheet" type="text/css"
	href="../resources/style/default.css">
<title>Insert title here</title>
<script type="text/javascript">
	
/* $(document).ready(function(){

	var sendData = {
			'message_title' : '${receiveView.message_title}', 
			'message_content' : '${receiveView.message_content}', 
			'message_rdate' : '${message_rdate}'
			};

	$('#ck').click(function(){
	
	//var message_no = ${message_no};

	
	$.ajax({
		type : 'get',
	 	url : 'list.do',
        success:function(data){
        	alert("dkssud");
        },
        error:function(request, status, error){
        	alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
        }
      });
	});
	
  }); */
  
 		var menu = document.getElementsByClassName("menu__item");

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
			<ul>
				<li><a href="../user/searchapi.do" accesskey="1" title="">상권 분석</a></li>
				<li><a href="../board/listSearch.do" accesskey="2" title="">게시판</a></li>
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
			<div class="accounts">
				<div class="accounts__item accounts__item--active">
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
								<div class="profile-head__name">Jean-Claude</div>
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
						<div class="menu__item" OnClick="location.href='receiveList.do'">
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
							<div class="new-mail-foot__actions">
								<button class="button button new-mail__toggle">Cancel</button>
								<button class="button button--primary">
									<i class="fas fa-paper-plane"></i>
								</button>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="mails">
				<div class="message-list scrollable">
					<div class="scrollable__target">
						<c:forEach items="${receiveList}" var="list">
							<div class="message message--new">
								<div class="message__actions">
									<i class="message__icon far fa-square"></i> <i
										class="message__icon fas fa-trash-alt"></i> <i
										class="message__icon fas fa-archive"></i>
								</div>
								<div class="message__content">
									<div class="message__exp">
										<div id="user">
											<a>${list.message_user2}</a>
										</div>
										<div class="date" id="date">
											<a>${list.message_rdate}</a>
										</div>
									</div>
									<div class="message__title" id="title" OnClick="location.href='receiveView.do?message_no=${list.message_no}'">
										<input type="hidden" id="message_no" name="message_no"
											value="${message_no}"> <a id="ck">
											${list.message_title} </a>
									</div>
									<div class="message__expr" id="content">
										<a>${list.message_content}</a>
									</div>
								</div>
							</div>
						</c:forEach>
					
					</div>
				</div>
				<div class="preview">
					<div class="preview-top">

						<div class="preview__title">Am I on the Internet?</div>
						<div>
							<i class="preview-top__icon fas fa-print"></i> <i
								class="preview-top__icon fas fa-archive"></i> <i
								class="preview-top__icon fas fa-ellipsis-h"></i>
						</div>
					</div>
					<div class="scrollable">
						<div class="preview-content scrollable__target">
							<form id="frm" name="frm">
								<div class="preview-respond">
									<div class="preview-respond__head">
										<div class="profile-head">
											<div class="profile-head__id">
												<img class="profile-head__avatar"
													src="../resources/images/user.jpg"
													alt="">
												<div>
													<div class="profile-head__name">
														<a name="view">보낸 사람 : ${receiveView.message_user1}</a>
													</div>
													<div class="message__title">
														<a name="view">${receiveView.message_title}</a>
													</div>
												</div>
											</div>
											<div class="date">
												<a name="view">${receiveView.message_sdate}</a>
											</div>
										</div>
									</div>
									<div class="preview-respond__content" style = "height : 600px">
										<a name="view">${receiveView.message_content}</a>
									</div>
								</div>
								<a href = "deleteMessage.do?message_no=${receiveView.message_no}&del=1">삭제</a>
								
							</form>
							<div class="preview-respond" style ="display:none">
								<div class="preview-respond__head">
									<div class="profile-head">
										<div class="profile-head__id">
											<img class="profile-head__avatar"
												src="https://creer.casecompany.paris/uploads/themes/original/5c9deb858a91e.png"
												alt="">
											<div>
												<div class="profile-head__name">Jean-Claude</div>
												<div class="profile-head__mail">jeanclaude@gmail.com</div>
											</div>
										</div>
										<div class="date">Yesterday, 11:27</div>
									</div>
								</div>
								<div class="preview-respond__content">
									<p class="paragraph">Grandpa! Don't call 911!</p>
									<p class="paragraph">Don't panic! they're e-mails, I only
										see them when they're sent, I don't see your messages live!
										I'm coming to help you.</p>
								</div>
							</div>
							<div class="preview-respond" style ="display:none">
								<div class="preview-respond__head">
									<div class="profile-head">
										<div class="profile-head__id">
											<img class="profile-head__avatar"
												src="https://pickaface.net/gallery/avatar/20130510_100741_226_grandpa.png"
												alt="">
											<div>
												<div class="profile-head__name">Papy Bear</div>
												<div class="profile-head__mail">itsmepapy@gmail.com</div>
											</div>
										</div>
										<div class="date">Yesterday, 12:01</div>
									</div>
								</div>
								<div class="preview-respond__content">
									<p class="paragraph">Oh, my God, I was scared!</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>