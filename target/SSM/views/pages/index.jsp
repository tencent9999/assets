<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="jdk.nashorn.internal.ir.BaseNode" %>
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
    <title> ${USER_SESSION.user}身份管理</title>
    <link rel="stylesheet" type="text/css" href="<%=basePath%>/views/css/reset.css">
    <link rel="stylesheet" type="text/css" href="<%=basePath%>/views/plugs/Bootstrap/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="<%=basePath%>/views/plugs/Layer/skin/default/layer.css">
    <link rel="stylesheet" type="text/css" href="<%=basePath%>/views/css/index.css">
    <script type="text/javascript" src="<%=basePath%>/views/plugs/Jquery/jquery-1.11.1.min.js"></script>
    <script type="text/javascript" src="<%=basePath%>/views/plugs/Bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="<%=basePath%>/views/plugs/NiceScroll/jquery.nicescroll.min.js"></script>
    <script type="text/javascript" src="<%=basePath%>/views/plugs/Layer/layer.js"></script>
    <script type="text/javascript" src="<%=basePath%>/views/js/index.js"></script>
</head>
<body>
<div class="wrapper">
    <div class="header">
        <div class="fl logo-box">
            <!--<img class="fl logo" src="images/logo.png">-->
            <h1 class="fl logo">资产管理系统</h1>
        </div>
        <div class="fr user-box dropdown">
            <a class="dropdown-toggle unit" data-toggle="dropdown" id="dropdownMenu2" aria-haspopup="true"
               aria-expanded="true">
                ${USER_SESSION.user}<span class="caret"></span>
            </a>
            <ul class="dropdown-menu dropdown-menu-left" aria-labelledby="dropdownMenu2">
                <li class="tabCloseAll">
                    <a>修改密码</a>
                </li>
                <li class="tabCloseOther">
                    <a>个人中心</a>
                </li>
            </ul>
            <span class="xian"></span>
            <a class="unit" href="<%=basePath%>/views/pages/500.jsp">帮助</a>
            <span class="xian"></span>
            <a class="unit" href="<%=basePath%>/user/logout">退出</a>
        </div>
    </div>
    <div class="mainbody">
        <div class="navbar guodu">
            <div class="navbar-scroll">
                <ul class="navbar-scroll-inner">
                    <li class="lis yiji">
                        <a>
                            <i class="fl glyphicon glyphicon-home"></i>
                            <span class="fl">日常管理</span>
                            <i class="fr guodu glyphicon glyphicon-triangle-bottom"></i>
                        </a>
                        <ul class="lis-out">
                            <li class="lis">
                                <a>
                                    <span class="fl">类别管理 </span>
                                    <i class="fr guodu glyphicon glyphicon-triangle-bottom"></i>
                                </a>
                                <ul class="lis-out">
                                    <li class="lis">
                                        <a class="lis"
                                           href="<%=basePath%>/assetsClass/show"
                                           target="assete">
                                            <span class="fl">资产类别</span>
                                        </a>
                                    </li>
                                </ul>
                            </li>
                            <li class="lis">
                                <a>
                                    <span class="fl">资产管理</span>
                                    <i class="fr guodu glyphicon glyphicon-triangle-bottom"></i>
                                </a>
                                <ul class="lis-out">
                                    <li class="lis">
                                        <a class="lis"
                                           href="<%=basePath%>/assets/ClassShow"
                                           target="assete">
                                            <span class="fl">资产添加</span>
                                        </a>
                                    </li>
                                    <li class="lis">
                                        <a class="lis"
                                           href="<%=basePath%>/assets/AddList"
                                           target="assete">
                                            <span class="fl">资产列表</span>
                                        </a>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </li>
                    <li class="lis">
                        <a>
                            <i class="fl glyphicon glyphicon glyphicon-refresh"></i>
                            <span class="fl">资产借还</span>
                            <i class="fr guodu glyphicon glyphicon-triangle-bottom"></i>
                        </a>
                        <ul class="lis-out">
                            <li class="lis">
                                <a class="lis"
                                   href="<%=basePath%>/assets/borrowshow"
                                   target="assete">
                                    <span class="fl">资产列表</span>
                                </a>
                            </li>
                            <li class="lis">
                                <a class="lis"
                                   href="<%=basePath%>/borrow/list"
                                   target="assete">
                                    <span class="fl">借出列表</span>
                                </a>
                            </li>
                        </ul>
                    </li>
                    <li class="lis">
                        <a>
                            <i class="fl glyphicon glyphicon glyphicon-user"></i>
                            <span class="fl">关于我们</span>
                            <i class="fr guodu glyphicon glyphicon-triangle-bottom"></i>
                        </a>
                        <ul class="lis-out">
                            <li class="lis">
                                <a class="lis"
                                   href="<%=basePath%>/views/pages/about/about.jsp"
                                   target="assete">
                                    <span class="fl">联系我们</span>
                                </a>
                            </li>
                            <li class="lis">
                                <a class="lis"
                                   href="<%=basePath%>/views/pages/about/echarts_maps.html"
                                   target="assete">
                                    <span class="fl">关于我们</span>
                                </a>
                            </li>
                        </ul>
                    </li>
                </ul>

            </div>
        </div>
        <div class="jiantou"><span class="glyphicon glyphicon-triangle-left"></span></div>
        <div class="page-wrapper guodu">
            <!--<div class="mianbaox">
                <i class="fl fa fa-home"></i>
                <span class="fl word">首页</span>
                <span class="fl jt"> > </span>
                <span class="fl word">一级</span>
                <span class="fl jt"> > </span>
                <span class="fl word">二级</span>
            </div>-->
            <div class="row head-tabs">
                <div class="to-left tool">
                    <i class="glyphicon glyphicon-backward"></i>
                </div>
                <nav class="page-tabs">
                    <div class="page-tabs-content-out fl">
                        <div class="page-tabs-content fl active" data-id="a-name-000">
                            <a class="" href="<%=basePath%>/views/pages/index.jsp">首页</a>
                        </div>
                    </div>
                </nav>
                <div class="to-right tool">
                    <i class="glyphicon glyphicon-forward"></i>
                </div>
                <div class="btn-group caozuo tool">
                    <a class="dropdown" data-toggle="dropdown" id="dropdownMenu1">
                        关闭操作<span class="caret"></span>
                    </a>
                    <ul class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdownMenu1">
                        <li class="tabCloseAll">
                            <a>关闭全部选项卡</a>
                        </li>
                        <li class="tabCloseOther">
                            <a>关闭其他选项卡</a>
                        </li>
                    </ul>
                    <!--<a href="###" class="log-out tool">
                        <i class="glyphicon glyphicon-log-out"></i> 退出
                    </a>-->
                </div>

            </div>
            <div class="mainmain" id="main">
                <iframe id="" name="assete" src="<%=basePath%>/views/pages/first_page.jsp" frameborder="0"
                        width="100%"
                        height="100%"></iframe>

                <div class="footer">Copyright &copy;2020 by GY</div>
            </div>
        </div>
    </div>

</body>
</html>