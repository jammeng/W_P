<%--
<%@ (������) language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
			
			������ ����  
page, 	=	�ش� JSP �������� �������� ȯ�� ����
����:	<%@ page extend="javx.servlet.jsp.HttpJspBase">
	<%@ page import="java.sql.DriverManager" %>
	
include, =	���� �������� �ٸ� ������ ������ ������ �� ���
����:	<%@ page include file="footer.jsp"%>

taglib	=	�±� ���̺귯������ �±׸� ������ ����� �� �ִ� ��� ���� 

--%>


<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%!
	String str="�ȳ��ϼ���!";
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
<title>�信������������ �������������</title>
</head>
<body>
<%-- �ּ��Դϴ�. html���� ǥ�õ��� ����--%>

<%
	out.print(str+"<br>");
	out.print(b +"�� ������"+ abs(b) + "<br>");
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