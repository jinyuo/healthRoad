<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <script>
    //errCode 종류
    //1 로그인 에러
    //2 사업가 포인트충전
    //3 회원 정보 수정 비밀번호 불일치
	if( "${errCode}" == 1){
		alert("아이디 혹은 패스워드가 틀립니다.");
		location.href="register.jsp";
	} else if( "${errCode}" == 3){
		alert("패스워드 불일치");
		location.href="memberInfoUpdate.html";
	}
    </script>	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>메세지 : ${requestScope.errorMsg}</h1>
	
</body>
</html>