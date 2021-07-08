<%--
<%@ (지시자) language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
			
			지시자 종류  
page, 	=	해당 JSP 페이지의 전반적인 환경 설정
예시:	<%@ page extend="javx.servlet.jsp.HttpJspBase">
	<%@ page import="java.sql.DriverManager" %>
	
include, =	현재 페이지에 다른 파일의 내용을 삽입할 때 사용
예시:	<%@ page include file="footer.jsp"%>

taglib	=	태그 라이브러리에서 태그를 꺼내어 사용할 수 있는 기능 제공 

--%>


<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%!
	String str="안녕하세요!";
	int a = 5, b = -5 ;
	
	public int abs(int n){
		if(n<0){
			n = -n;
		}
		return n;
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>페에에이이지이이 제에에모오오옥</title>
</head>
<body>
<%-- 주석입니다. html에는 표시되지 않음--%>

<%
	out.print(str+"<br>");
	out.print(b +"의 절댓값은"+ abs(b) + "<br>");
%>

<%
	int x1 = 20;
	int y1 = 10;
	int add1 = x1 + y1;
	out.print(x1+"+"+y1+"="+add1+"<br>");
%>

<%
	int x = 20;
	int y = 10;
	int add = x + y;
%>
<%=x %>+<%=y %>=<%=add %>
</body>
</html>