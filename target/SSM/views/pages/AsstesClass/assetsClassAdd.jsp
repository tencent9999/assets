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
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" rel="stylesheet">
</head>

<body>
<div class="title fl100 padding_015">
    <h4 class="fl100">
        资产类别
        <small>身份：${USER_SESSION.user}</small>
    </h4>
</div>
<c:if test="${USER_SESSION.user_id == 1}">
    <form action="<%=basePath%>/assetsClass/add" method="post">
        <div class="form-group">
            <label for="assetsClass_name">资产类别</label>
            <input type="text" class="form-control" id="assetsClass_name" name="assetsClass_name" placeholder="资产类别">
        </div>
        <div class="form-group">
            <label for="assetsClass_num">资产类别编码</label>
            <input type="text" class="form-control" id="assetsClass_num" name="assetsClass_num" placeholder="资产编码">
        </div>
        <button type="submit" class="btn btn-default">添加</button>
    </form>
</c:if>
<c:if test="${USER_SESSION.user_id == 3}">
    <div class="alert alert-warning alert-dismissible" role="alert">
        <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <strong>注意!</strong> 如需添加信息请用超级管理员身份登录
    </div>
</c:if>
</div>
<div align="center" style="color: #0a6aa1"><H2>已存在的资产类别</H2></div>
<div>
    <table class="table table-hover">
        <th>序号</th>
        <th>类别名称</th>
        <th>类别编码</th>
        <th>操作</th>
        <c:forEach items="${assetsClasses}" var="ass" varStatus="vc">
            <tr>
                <td>${vc.count}</td>
                <td>${ass.assetsClass_name}</td>
                <td>${ass.assetsClass_num}</td>
                <td>
                    <a href="<%=basePath%>assetsClass/del?id=${ass.id}" style="color: #dea726"> 删除</a></td>
                </td>
            </tr>
        </c:forEach>


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