<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%
int age = Integer.parseInt(request.getParameter("age"));
if(age<19){
%>
<script type ="text/javascript">
	alert("19�� �̸��̹Ƿ� ���� �Ұ�");
	history.go(-1)
	// = history.back()
	//history.forward()
</script>
<%
}else{
	request.setAttribute("name", "������");
	RequestDispatcher dispatcher = request.getRequestDispatcher("05_forwardResult.jsp");
	dispatcher.forward(request, response);
}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

</body>
</html>