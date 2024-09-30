<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
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
<hr>

    <select name="selsubject" id="selsubject">
      <option value="">선택하세요.</option>
      <option value="kor">국어</option>
      <option value="eng">영어</option>
      <option value="mat">수학</option>
      <option value="pe">체육</option>
    </select>

<script>
    let s = "<%= subject %>";
    $("#selsubject").val("<%= subject %>");
    $(`:radio[name=subject][value=\${s}]`).prop("checked", true);
    // $("#selsubject").find(`[value=\${s}]`).prop("selected", true);
</script>

</body>
</html>