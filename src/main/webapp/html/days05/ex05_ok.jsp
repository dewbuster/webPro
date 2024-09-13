<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
    // 스크립트릿, 표현식
    // 자바 코딩...
    // JSP에 내장된 9가지 객체 중
    String id = request.getParameter("id");
    String passwd = request.getParameter("passwd");
%>
입력한 아이디 : <%= id %> <br>
입력한 비밀번호 : <%= passwd %> <br>
</body>
</html>