<%@page import="com.qgm.entity.company"%>
<%@page import="com.qgm.dao.companySelectDao"%>

<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
</head>

<body>
	<% List<company>list =(List)request.getAttribute("list");
%>

	<form action="companyselectServlet">
		手机号：<input type="text" name="rtel"><br />
		<input type="button" value="提交">
	</form>
	<%
if(list!=null){
for(company temp:list){
%>
	<table>
		<tr>
			<td><%=temp.getRtel()%></td></br>
			<td><%=temp.getRname()%></td>
			<td><%=temp.getAddress()%></td>
			<td><%=temp.getPrice()%></td>

		</tr>
	</table>
	<%
}
}
%>

</body>

</html>