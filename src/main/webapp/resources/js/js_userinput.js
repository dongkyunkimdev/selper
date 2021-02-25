$(function() {
	// 사용자의 자료 입력여부를 검사하는 함수
	$('#confirm').click(function() {
		if ($.trim($("#userId").val()) == '') {
			alert("아이디를 입력해 주세요.");
			$("#userId").focus();
			return;
		}
		
		if($.trim($("#idCheckResult").html()) == "중복된 아이디 입니다."){
			alert("중복된 아이디 입니다.");
			$("#userId").focus();
			return;
		}
		
		if ($.trim($('#userPass').val()) == '') {
			alert("비밀번호를 입력해주세요.");
			$('#userPass').focus();
			return;
		}

		if ($.trim($('#userPass').val()) != $.trim($('#userPass2').val())) {
			alert("비밀번호가 일치하지 않습니다..");
			$('#userPass2').focus();
			return;
		}

		if ($.trim($('#userName').val()) == '') {
			alert("이름을 입력해주세요.");
			$('#userName').foucs();
			return;
		}
		
		if ($.trim($('#userTel').val()) == '') {
			alert("전화번호를 입력해주세요.");
			$('#userTel').foucs();
			return;
		}
		
		if ($.trim($('#userNick').val()) == '') {
			alert("닉네임을 입력해주세요.");
			$('#userNick').foucs();
			return;
		}

		// 자료를 전송합니다.
		document.userinput.submit();
	});

	// 아이디 중복체크
	$('#userId').keyup(function() {		
		// 로그인 프로세스 호출
		$.ajax({
			type : 'post', // 전송방식
			async : true, // 비동신통신
			url : 'idCheck.do', // **** 요청
			contentType : 'application/x-www-form-urlencoded;charset=UTF-8', // 한글
			data : "userId=" + $("#userId").val(), // 클라이언트에서 보내는 데이타
			success : function(resultData) { // 성공하면 함수연결
				// alert("resultData = "+resultData)
				$('#idCheckResult').html(resultData);
			}
		});
	})
})