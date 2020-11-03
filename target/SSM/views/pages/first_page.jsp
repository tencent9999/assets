<%@ page import="java.util.ArrayList" %>
<%@page language="java" pageEncoding="UTF-8" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>首页</title>
    <link rel="stylesheet" type="text/css" href="../css/reset.css">
    <link rel="stylesheet" type="text/css" href="../plugs/Bootstrap/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="../plugs/Layer/skin/default/layer.css">
    <link rel="stylesheet" type="text/css" href="../css/pages.css">
</head>

<body scroll="yes">
<div class="container-fluid">
    <div class="page-header">
        <h1>Hi ${USER_SESSION.user}
            <small></small>
        </h1>
    </div>
    <div class="jumbotron">
        <h1>欢迎</h1>
        <p>T信__资产管理系统.</p>
        <p>
            <a class="btn btn-primary btn-lg" href="<%=basePath%>/index/about">关于我</a>
        </p>
    </div>

</div>
<script type="text/javascript" src="../plugs/Jquery/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="../plugs/Bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="../plugs/Layer/layer.js"></script>
<script type="text/javascript" src="../plugs/NiceScroll/jquery.nicescroll.min.js"></script>
</body>

</html>