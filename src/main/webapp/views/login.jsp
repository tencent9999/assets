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
    <link rel="stylesheet" href="<%=basePath%>/views/css/login.css">
    <title>登陆</title>
    <script>
        function check() {
            var user_name = $("#user_name").val();
            var user_password = $("#user_password").val();
            if (user_name == "" || user_password == "") {
                $("#message").text("账号和密码不能为空！！");
                return false;
            }
            return true;

        }
    </script>
</head>
<body background="<%=basePath%>/views/image/m.jpg">
<main class="main" role="main">
    <div class="container">
        <div class="row">
            <div class="offset-md-3 col-md-6">
                <form class="form-container" action="<%=basePath%>/user/login" method="post" id="date_show">
                    <h2>登陆</h2>
                    <div class="form-group">
                        <label for="user_name">用户名</label>
                        <input type="text" class="form-control" id="user_name" name="user_name"
                               placeholder="请输入用户名">
                    </div>
                    <div class="form-group">
                        <label for="user_password">密码</label>
                        <input type="password" class="form-control" id="user_password" name="user_password"
                               placeholder="请输入密码">
                    </div>
                    <div class="form-group form-check">
                        <input type="checkbox" class="form-check-input" id="exampleCheck1">
                        <label class="form-check-label" for="exampleCheck1">记住我</label>
                    </div>
                    <div class="form-group">
                        <span id="message">${msg}</span>
                    </div>
                    <button type="submit" class="btn btn-success btn-block">登陆</button>
                </form>
            </div>
        </div>
    </div>
</main>
<div class="footer">
    <div class="container">
        Copyright &copy;2020 by GY
    </div>
</div>

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
        integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
        crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
        integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
        crossorigin="anonymous"></script>
</body>
</html>