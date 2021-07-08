<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.Connection" %>
<%@page import="java.sql.Statement" %>
<%@page import="java.sql.ResultSet" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	Class.forName("oracle.jdbc.driver.OracleDriver");
	// Connection conn = DriverManager.getConnection(url, uid, pwd)
	
	Connection conn = DriverManager.getConnection(
			"jdbc:oracle:thin:@localhost:1521:orcl", "kjmyeong", "1234");
	
	Statement stmt = conn.createStatement();
	
	ResultSet rs = stmt.executeQuery("select * from member");
	while(rs.next()){
		out.print("<h6>" + rs.getString("name") + "&nbsp&nbsp&nbsp" + rs.getString("pwd") + "&nbsp&nbsp&nbsp" + rs.getString("userid") + "</h6>");
	}
	
	stmt.close();
	conn.close();
%>
</body>
</html>