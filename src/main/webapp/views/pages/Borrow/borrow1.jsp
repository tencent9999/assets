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
<div class="card">
    <div class="card-header"><h4>普通表单</h4></div>
    <div class="card-body">

        <form action="<%=basePath%>/borrow/updataTime" method="post">
            <div class="form-group">
                <label for="example-nf-email">借出时间</label>
                <input class="form-control" type="date" id="example-nf-email" name="borrow_time1"
                       placeholder="请输入借出时间." value="${borrow.borrow_time1}" readonly="readonly">
            </div>
            <div class="form-group">
                <label for="example-nf-email1">归出时间</label>
                <input class="form-control" type="date" id="example-nf-email1" name="borrow_time2"
                       placeholder="请输入借出时间." value="${borrow.borrow_time1}">
            </div>
            <div class="form-group">
                <label for="example-nf-borrow_user">借出人</label>
                <input class="form-control" type="text" id="example-nf-borrow_user" name="borrow_user"
                       placeholder="请输入借出人." value="${borrow.borrow_user}" readonly="readonly">
            </div>
            <div class="form-group">
                <label for="example-nf-borrow_money">押金</label>
                <input class="form-control" type="text" id="example-nf-borrow_money" name="borrow_money"
                       placeholder="请输入押金." value="${borrow.borrow_money}" readonly="readonly">
            </div>
            <div class="form-group">
                <label for="example-nf-Aid">资产ID</label>
                <input class="form-control" type="text" id="example-nf-Aid" name="Aid" value="${id}"
                       readonly="readonly">
            </div>

            <div class="form-group">
                <label for="example-nf-borrow_msg">备注</label>
                <input class="form-control" type="text" id="example-nf-borrow_msg" name="borrow_msg"
                       placeholder="请输入押金." value="${borrow.borrow_msg}" readonly="readonly">
            </div>
            <div class="form-group">
                <button class="btn btn-primary" type="submit">提交</button>
            </div>
            <input type="hidden" name="id" value="${borrow.id}">
            <input type="hidden" name="borrow_on" value="0">
            <input type="hidden" name="id1" value="${id}">
            ${id}
        </form>

    </div>
</div>
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