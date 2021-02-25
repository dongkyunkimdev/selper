function check_ok() {
	
  if(document.form.b_name.value.length==0) {
    alert("이름을 입력하세요.");
    form.b_name.focus();
    return false;
  }
  if(document.form.b_title.value.length==0) {
    alert("제목을 입력하세요.");
    form.b_title.focus();
    return false;
  }
  if(document.form.b_content.value.length==0) {
    alert("내용을 입력하세요.");
    form.b_content.focus();
    return false;
  }
  if(document.form.b_pwd.value.length==0) {
    alert("비밀번호를 입력세요.");
    form.b_pwd.focus();
    return false;
  }  
 
  
  document.form.submit();
}

//삭제를 클릭했을때 호출되는 함수
function delete_ok(){
  if(document.form.b_pwd.value.length==0) {
    alert("비밀번호를 입력세요.");
    form.b_pwd.focus();
    return false;
  }  
  document.form.submit();
}


// 검색 부분에 해당하는 함수

function check(){
     if (document.search.keyWord.value == ""){
		 alert("검색어를 입력하세요.");
		 document.search.keyWord.focus();
		 return;
	    }
	 document.search.submit();
 }


//글읽기로 이동할때 호출되는 함수
function read_Action(no){
	document.read.b_id.value=no;
	document.read.submit();//전송
	
}

//글목록/수정/삭제/답변 이동할때 호출되는 함수
function move_Action( url ){
	document.move.action = url;//이동할 페이지지정
	document.move.submit();//전송
	
}

//수정완료 클릭했을때
function update_Action(){
	 if(document.update.b_pwd.value ==""){
		 alert("비밀번호를 입력해주세요.");
		 document.update.b_pwd.focus();
		 return;
	 }
	 
	 document.update.action="update.do";
	 document.update.submit();
	
}



