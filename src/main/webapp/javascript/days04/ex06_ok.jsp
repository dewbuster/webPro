<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 
http://localhost/webPro/javascript/days04/ex06_ok.jsp
?subject=eng    
-->
<%
    String subject = request.getParameter("subject");
%>

전송된 과목: <%= subject %> <br>
<br>
<input type="radio" name="subject" value="kor">
    <lable>국어</lable>
</input><input type="radio" name="subject" value="eng">
    <lable>영어</lable>
</input><input type="radio" name="subject" value="mat">
    <lable>수학</lable>
</input><input type="radio" name="subject" value="pe">
    <lable>체육</lable>
</input>
<br>
<a href="javascript:history.back()">뒤로 가기</a>
<br>
<!-- BOM -->
<a href="javascript:location.href='ex06_02.html'">뒤로 가기</a>
<script>
    //<%-- jsp 에서는 ${변수} 충돌 발생 => ${EL 표현언어} 로 사용됨 => \${변수명}으로 사용 --%>
    let s = "<%= subject %>";
    document.querySelector(`input[name=subject][value=\${s}]`).checked = true;
    
    /*
    let subject = "<%= subject %>";
    document.querySelector("input[name=subject][value=<%= subject %>]").checked = true;
    */
   /*
    const rdbs = document.querySelectorAll("[name=subject]");
    for (var i = 0; i < rdbs.length; i++) {
		if (rdbs[i].value == subject){
            rdbs[i].checked = true;
        }
	}
    */
</script>
</body>
</html>