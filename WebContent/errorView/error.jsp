<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <script>
    //errCode 종류
    //1 로그인 에러
    //2 사업가 포인트충전
	if( "${errCode}" == 1){
		alert("아이디 혹은 패스워드가 틀립니다.");
		location.href="register.jsp";
	}else if( "${errCode}" == 5){
		alert("이미 등록된 사업자이거나 접근 권한이 없습니다.");
		location.href="mypage.html";
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