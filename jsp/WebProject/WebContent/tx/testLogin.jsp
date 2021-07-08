<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<% 
	String id = "kjm2399";
	String pwd = "1234";
	String name = "김정명";
	request.setCharacterEncoding("UTF-8");
	if (id.equals(request.getParameter("id")) && pwd.equals(request.getParameter("pwd"))){
		response.sendRedirect("main.jsp?name=" + URLEncoder.encode(name, "UTF-8"));
	}	else{
		response.sendRedirect("Login.jsp");
	}
	
	%>
</body>
</html>