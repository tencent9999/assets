<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.ArrayList" %>
<%@page language="java" pageEncoding="UTF-8" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>表单</title>
    <link rel="stylesheet" type="text/css" href="<%=basePath%>/views/css/reset.css">
    <link rel="stylesheet" type="text/css" href="<%=basePath%>/views/plugs/Bootstrap/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="<%=basePath%>/views/plugs/ElementUi/lib/theme-default/index.css">
    <link rel="stylesheet" type="text/css"
          href="<%=basePath%>/views/plugs/BootstrapValidator/css/bootstrapValidator.css">
    <link rel="stylesheet" type="text/css" href="<%=basePath%>/views/plugs/Layer/skin/default/layer.css">
    <link rel="stylesheet" type="text/css" href="<%=basePath%>/views/css/pages.css">
</head>

<body>
<div align="center" style="color: #0a6aa1"><H2>资产列表</H2></div>
<div>
    <table class="table table-hover">
        <th>列别名称</th>
        <th>资产编码</th>
        <tr>
            <td>${assetsClass.assetsClass_name}</td>
            <td>${assetsClass.assetsClass_num}</td>
        </tr>


    </table>
</div>
<script type="text/javascript" src="<%=basePath%>/views/plugs/Jquery/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="<%=basePath%>/views/plugs/Bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="<%=basePath%>/views/plugs/BootstrapValidator/js/bootstrapValidator.min.js"></script>
<script type="text/javascript" src="<%=basePath%>/views/plugs/BootstrapValidator/js/language/zh_CN.js"></script>
<script type="text/javascript" src="<%=basePath%>/views/plugs/Layer/layer.js"></script>
<script type="text/javascript" src="<%=basePath%>/views/plugs/NiceScroll/jquery.nicescroll.min.js"></script>
<!--elementui-->
<script type="text/javascript" src="<%=basePath%>/views/plugs/ElementUi/vue.min.js"></script>
<script type="text/javascript" src="<%=basePath%>/views/plugs/ElementUi/lib/index.js"></script>
<script type="text/javascript" src="<%=basePath%>/views/js/pages_title.js"></script>
<script type="text/javascript" src="<%=basePath%>/views/js/elementui_init.js"></script>
<script type="text/javascript" src="<%=basePath%>/views/js/bootstrapV_init.js"></script>
</body>

</html>