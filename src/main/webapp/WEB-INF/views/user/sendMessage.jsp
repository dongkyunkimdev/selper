<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link rel="stylesheet" type="text/css" href="../resources/style/messageForm.css">
<title>쪽지</title>
</head>
<body>

    <header> send a message :) ! </header>

<form id="form" class="sendMessage.do" action="sendMessage.do" method="post">
    
      <input name="user1" id="user1" type="text" placeholder="보내는사람">
      <input name="user2" id="user2"type="text" placeholder="받는사람 "><br/>
      <input name="title" id="title" type="text" placeholder="제목을 입력하세요.">
      <textarea name="message" id="message" type="text" placeholder="내용을 입력하세요."></textarea>
  <input id="submit" type="submit" value="send">
  
</form>
</body>
</html>