<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <style>
        .wrapper {
            background-color: #ffffff;
            width: 358px;
            height: 588px;
            border-radius: 15px;
            padding: 0 50px;
            position: relative;
            left: 50%;
            top: 50%;
            transform: translate(-50%, -50%);
        }

        .btn {
            text-align: center;
            padding: 10px;
            width: 100%;
            background-image: linear-gradient(to right, #a6c1ee, #fbc2eb);
            color: #fff;
            display: block; /* 将按钮显示为块级元素 */
            margin: 0 auto; /* 使用auto值来水平居中 */
            text-decoration: none;
        }

        .container {
            height: 100%;
            background-image: linear-gradient(to right, #fbc2eb, #a6c1ee);
        }

        .header {
            font-size: 35px;
            font-weight: bold;
            text-align: center;
            line-height: 50px;
        }
    </style>
    <title>欢迎</title>
</head>
<body>
<div class="container">

    <div class="wrapper" style="align-content: center">
        <div class="header">欢迎使用图书管理系统!</div>
        <hr>
        <a href="login.jsp" class="btn">登录</a><br><br>
        <a href="register.jsp" class="btn">注册</a><br>
    </div>
</div>
</body>
</html>
