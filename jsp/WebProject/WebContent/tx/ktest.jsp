<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.Connection" %>
<%@page import="java.sql.Statement" %>
<%@page import="java.sql.ResultSet" %>
<%@page import="java.net.URLEncoder"%>


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
			"jdbc:oracle:thin:@localhost:1521:orcl", "ora_user", "kjmyeong");
	
	Statement stmt = conn.createStatement();
	
	ResultSet rs = stmt.executeQuery("select * from employees");
	String[][] arr = new String[108][2];
	
	while(rs.next()){
		for(int i = 0; i<108; i++){
			for(int j = 0; j<2; j++){
				if (j==0){
					arr[i][j] = rs.getString("emp_name");
				}
				if(j==1){
					arr[i][j] = rs.getString("employee_id");
				}							
			}
			rs.next();
		}
		
		//out.print(rs.getString("emp_name") + "&nbsp&nbsp&nbsp" + rs.getString("employee_id"));	

		boolean a = false;
		request.setCharacterEncoding("UTF-8");
		for(int i = 0; i<arr.length; i++){
				if (arr[i][0].equals(request.getParameter("id")) && arr[i][1].equals(request.getParameter("pwd"))){
					a = true;
					break;
			}
		}

		String name = request.getParameter("id");
		if (a==true){
			response.sendRedirect("main.jsp?name=" + URLEncoder.encode(name, "UTF-8"));
		}
		else{
			response.sendRedirect("Login.jsp");	
		}
	}
	/*
	for(int i = 0; i<arr.length; i++){
		for(int j = 0; j<2; j++){
			out.print(arr[i][j]+"&nbsp&nbsp&nbsp");
			out.print("\n");
		}
	}*/
	
	stmt.close();
	conn.close();
%>
</body>
</html>