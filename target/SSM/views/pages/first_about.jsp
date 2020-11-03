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
<div class="title fl100 padding_015">
    <h4 class="fl100">
        关于您
        <small>${USER_SESSION.user}</small>
    </h4>
</div>
</form>
<div align="center"><img src="<%=basePath%>/views/image/user.jpg" height="150" width="150"></div>

<!--<div class="progress">
  <div class="progress-bar progress-bar-striped active" role="progressbar" aria-valuenow="45" aria-valuemin="0" aria-valuemax="100" style="width: 45%">
    <span class="">45% 进度</span>
  </div>
</div>-->
<form class="form-horizontal margb15" id="form_demo" method="post">
    <div class="form-group">
        <label for="" class="col-sm-2 control-label">用户名</label>
        <div class="col-sm-10">
            <input type="text" class="form-control" id="" placeholder="${USER_SESSION.user_name}" width="100px"
                   name="username"
                   readonly="readonly">
        </div>
    </div>
    <div class="form-group">
        <label for="" class="col-sm-2 control-label">密码</label>
        <div class="col-sm-10">
            <input type="password" class="form-control" id="" placeholder="${USER_SESSION.user_password}"
                   readonly="readonly"
                   name="password">

        </div>
    </div>
    <div class="form-group">
        <label for="" class="col-sm-2 control-label">email</label>
        <div class="col-sm-10">
            <input type="email" class="form-control" id="" placeholder="${USER_SESSION.email}" name="email"
                   readonly="readonly">
        </div>
    </div>
    <div class="form-group">
        <label for="" class="col-sm-2 control-label">phone</label>
        <div class="col-sm-10">
            <input type="tel" class="form-control" id="" placeholder="${USER_SESSION.tel}" name="phone"
                   readonly="readonly">
        </div>
    </div>
    </div>
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