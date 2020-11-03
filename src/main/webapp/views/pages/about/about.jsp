<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.ArrayList" %>
<%@page language="java" pageEncoding="UTF-8" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="cn">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
          integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <link rel="stylesheet" href="<%=basePath%>/views/bootstrap/css/bootstrap-theme.min.css"/>
    <link rel="stylesheet" href="<%=basePath%>/views/bootstrap/css/bootstrap.min.css"/>
    <script type="text/javascript" src="<%=basePath%>/views/js/jquery.min.js"></script>
    <script type="text/javascript" src="<%=basePath%>/views/bootstrap/js/bootstrap.min.js"></script>
    <title>关于我们</title>
</head>
<body>
<div class="container" id="contact">

    <h2 class="text-center">联系我们</h2>
    <p class="text-center"><em>T信资产管理系统</em></p>
    <div class="row"></div>
    <div class="col-md-4">
        <p>留言给我们</p>
        <p><span class="glyphicon glyphicon-map-marker" style="size:100px"></span>rizhao.中国</p>
        <p><span class="glyphicon glyphicon-phone" style="size: 100px"></span>Tel:157642218**</p>
        <p><span class="glyphicon glyphicon-envelope"></span>Email:LiiEcho@126.com</p>
    </div>
    <form method="post" action="<%=basePath%>/about/add">
        <div class="col-md-8">
            <div class="row">
                <div class="col-md-6 form-group">
                    <input class="form-control" id="name" name="about_name" placeholder="name" type="text" required>
                </div>
                <div class="col-md-6 form-group">
                    <input class="form-control" id="email" name="about_time" placeholder="email" type="email" required>
                </div>
                <div class="col-md-12 form-group">
                    <textarea class="form-control" id="abnpout" name="about_msg" placeholder="备注" rows="5"></textarea>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12 form-group">
                    <button class="btn pull-right" type="submit">发送</button>
                </div>
            </div>
        </div>
    </form>
    <div class="col-md-12">
        <img style="display:block;width:100%;" src="<%=basePath%>/views/image/about.jpg"/>
    </div>
</div>

</body>
</html>
