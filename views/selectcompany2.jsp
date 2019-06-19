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
    <title>Document</title>
    <link rel="stylesheet" href="../src/css/index.css">
    <link rel="stylesheet" href="../src/css/all_index.css">
    <link rel="stylesheet" href="../src/css/manage.css">
    <link rel="stylesheet" href="../src/css/selectcompany2.css">
</head>

<body>
    <% List<company>list =(List)request.getAttribute("list");%>
    <div class="wrap">
        <div class="slidebar">
            <p>功能</p>
            <ul>
                <li><a href="companydisplay.jsp">展</a></li>
                <!-- <li><a href="selectcompany.jsp">查</a></li> -->
                <li><a href="selectcompany2.jsp">查</a></li>
                <li><a href="insertcompany.html">增</a></li>
                <li><a href="updatecompany.html">改</a></li>
                <li><a href="deletecompany.html">删</a></li>
            </ul>
        </div>
        <div class="inner">
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
    </div>
    <%
        }
        }
    %>
</body>

</html>