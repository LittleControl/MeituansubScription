<%@page import="com.qgm.entity.company"%>
<%@page import="com.qgm.dao.companySelectDao"%>

<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>商家查询-丑散网</title>
    <link rel="stylesheet" href="../src/css/selectcompany.css">

</head>

<body>
    <% List<company>list =(List)request.getAttribute("list");%>
    <div class="wrap">
        <form action="">
            <p>请输入您要查询的手机号</p>
            <input type="text" name="rtel">
            <input type="button" value="提交" class="btn">
        </form>
        <%
            if(list!=null){
            for(company temp:list){
        %>
        <table>
            <tr>
                <td>电话</td>
                <td>商家</td>
                <td>地址</td>
                <td>价格</td>
            </tr>
            <tr>
                <td><%=temp.getRtel()%></td>
                <td><%=temp.getRname()%></td>
                <td><%=temp.getAddress()%></td>
                <td><%=temp.getPrice()%></td>
            </tr>
        </table>
    </div>
    <div class="footer">
        <p class="copyright">&copy;2019眯眯眼小控合作社&nbsp;京ICP证070791号 京公网安备11010502025545号 电子公告服务规则</p>
        <p class="copyright"> 版权所有,侵权必究 </p>
    </div>
    <%
        }
        }
    %>
</body>

</html>