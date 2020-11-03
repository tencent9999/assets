<%@ page import="java.util.ArrayList" %>
<%@ page import="jdk.nashorn.internal.ir.BaseNode" %>
<%@page language="java" pageEncoding="UTF-8" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html class="sanjihei">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>志广</title>
    <style type="text/css">
        body {
            color: #666;
            text-align: center;
            font-family: Helvetica, 'microsoft yahei', Arial, sans-serif;
            margin: 0;
            width: 800px;
            margin: auto;
            font-size: 14px;
        }

        h1 {
            font-size: 56px;
            line-height: 100px;
            font-weight: normal;
            color: #456;
        }

        h2 {
            font-size: 24px;
            color: #666;
            line-height: 1.5em;
        }

        h3 {
            color: #456;
            font-size: 20px;
            font-weight: normal;
            line-height: 28px;
        }

        hr {
            margin: 18px 0;
            border: 0;
            border-top: 1px solid #EEE;
            border-bottom: 1px solid white;
        }

        a {
            color: #17bc9b;
            text-decoration: none;
        }
    </style>
</head>
<body>
<h1>成功</h1>
<h3></h3>
<hr>
<%--<p> 点击返回<a href="<%=basePath%>/assetsClass/show">主页</a></p>--%>
<p> 点击查看<a href="<%=basePath%>/assets/AddList">列表</a></p>
</body>
</html>