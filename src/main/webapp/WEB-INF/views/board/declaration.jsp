<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <% String str = request.getParameter("BOARD_TITLE"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
 <style>
  
    .white_content {
        display: none;
        position: absolute;
        top: 15%;
        left: 15%;
        width: 50%;
        height: 50%;
        padding: 16px;
        border: 1px solid black;
        background-color: white;
        z-index:1002;
        overflow: auto;
    }
</style>

</head>
<body>
<form>
<div id="div1">
<h3> 제목 : <%=str %></h3><br/>
<a> 신고 사유를 선택해주세요</a><br/> 
  <select name="language" >
    <option value="none">=== 선택 ===</option>
    <option value="1" selected>불법성게시물</option>
    <option value="2">음란성 게시물</option>
    <option value="3">청소년 유해게시물</option>
    <option value="4">개인정보 노출 게시물</option>
    <option value="5">저작권 침해 게시물</option>
    <option value="6">홍보성 게시물</option>
    <option value="7">비방/비하/욕설 게시물</option>
    <option value="8">서비스품질저해 게시물</option>
    <option value="9">악성코드 유포 게시물</option>
    <option value="10">불법상품판매 게시물</option>
    <option value="11">상거래표시의무 미준수 게시물</option>
    <option value="12">불법촬영물</option>
    <option value="13">기타</option>
  </select>
  <br/>   <br/> 
  <div style="text-align:center;">

<a href = "javascript:void(0)" onclick = "document.getElementById('light').style.display='block';document.getElementById('fade').style.display='block'">확인</a></p>
        <div id="light" class="white_content"><br/><br/>신고 완료<br/>
        <a href = "javascript:void(0)" onclick = "javascript:top.window.close()">닫기</a></div>
        <div id="fade" class="black_overlay"></div>
</div >
  
  
  </div>
</form>
</body>
</html>