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
<div align="center" style="color: #0a6aa1"><H2>已借出的资产</H2></div>
<div>
    <table class="table table-hover">
        <th>序号</th>
        <th>资产名称</th>
        <th>资产类别</th>
        <th>借出时间</th>
        <th>借出人</th>
        <th>押金</th>
        <th>&nbsp;&nbsp;&nbsp;&nbsp;操作</th>
        <c:forEach items="${borrowList}" var="ass" varStatus="vc">
            <tr>
                <td>${vc.count}</td>

                <td>
                    <c:forEach items="${ass.assetsAdd}" var="asss">
                        ${asss.assetsAdd_name}
                    </c:forEach></td>
                <td>
                    <c:forEach items="${ass.assetsAdd}" var="asss1">
                        ${asss1.assetsAdd_class}
                    </c:forEach></td>

                <td>${ass.borrow_time1}</td>
                <td>${ass.borrow_user}</td>
                <td>${ass.borrow_money}</td>
                <td>
                    <c:forEach items="${ass.assetsAdd}" var="asss2">
                        <%--<c:if test="${asss2.assetsAdd_borrow == 1}">--%>
                            <c:if test="${ass.borrow_on==1}">

                                <a href="<%=basePath%>/borrow/borrow?id=${ass.id}&id1=${ass.aid}"
                                   style="color: #dea726">归还</a>
                            </c:if>
                            <c:if test="${ass.borrow_on!=1}">
                                <a>该资产已归还</a>
                            </c:if>

                        <%--</c:if>--%>
                        <%--<c:if test="${asss2.assetsAdd_borrow == 0}">--%>
                            <%--<a>该资产已归还</a>--%>
                        <%--</c:if>--%>
                    </c:forEach></td>
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