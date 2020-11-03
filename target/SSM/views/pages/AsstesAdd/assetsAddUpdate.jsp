<%@ page import="java.util.ArrayList" %>
<%@page language="java" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<div class="title fl100 padding_015">
    <h4 class="fl100">
        资产修改
        <small>身份:${USER_SESSION.user}</small>
    </h4>
</div>
<div align="center" style="color: #1d90e6"><h2>请输入您要修改的资产信息</h2></div>
<h2></h2>
<h2>&nbsp</h2>
<form class="form-horizontal margb15" id="date_show" action="<%=basePath%>/assets/upate2" method="post">
    <div class="form-group">
        <label for="" class="col-sm-2 control-label">资产名称</label>
        <div class="col-sm-10">
            <input type="text" class="form-control" id="" placeholder="资产名称" name="assetsAdd_name" value="${assetsAdd.assetsAdd_name}">
        </div>
    </div>
    <div class="form-group">
        <label for="" class="col-sm-2 control-label">资产类别</label>
        <div class="col-sm-10">
            <input type="text" class="form-control" placeholder="资产类别" name="assetsAdd_class"
                   value="${assetsAdd.assetsAdd_class}" readonly="readonly">
        </div>
    </div>
    <div class="form-group">
        <label for="" class="col-sm-2 control-label">添加人</label>
        <div class="col-sm-10">
            <input type="text" class="form-control" placeholder="添加人" name="assetsAdd_user"
                   value="${assetsAdd.assetsAdd_user}" readonly="readonly">
        </div>
    </div>
    <script>
        $(document).ready(function () {
            var time = new Date();
            var day = ("0" + time.getDate()).slice(-2);
            var month = ("0" + (time.getMonth() + 1)).slice(-2);
            var today = time.getFullYear() + "-" + (month) + "-" + (day);
            $('#date_info1').val(today);
        })
    </script>
    <div class="form-group">
        <label for="" class="col-sm-2 control-label">时间</label>
        <div class="col-sm-10">
            <input type="date" class="form-control" id="data_info1" placeholder="时间" name="assetsAdd_time"
                   readonly="readonly" value="${assetsAdd.assetsAdd_time}">
        </div>
    </div>


    <div class="form-group">
        <label for="" class="col-sm-2 control-label">备注</label>
        <div class="col-sm-10">
            <textarea class="form-control" rows="5" name="assetsAdd_msg" ></textarea>
        </div>
    </div>
    <div class="form-group">
        <div class="col-sm-offset-2 col-sm-10">
            <button type="submit" class="btn btn-default">修改</button>
        </div>
    </div>
    <input type="hidden" name="id" value="${assetsAdd.id}">
</form>
</div>
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