<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <style>
        * {
            margin: 0;
            padding: 0;
        }

        html {
            height: 100%;
        }

        body {
            height: 100%;
        }

        .container {
            height: 100%;
            background-image: linear-gradient(to right, #fbc2eb, #a6c1ee);
        }

        .login-wrapper {
            background-color: #fff;
            width: 358px;
            height: 588px;
            border-radius: 15px;
            padding: 0 50px;
            position: relative;
            left: 50%;
            top: 50%;
            transform: translate(-50%, -50%);
        }

        .form-wrapper {
            align-content: center;
            display: block; /* 将按钮显示为块级元素 */
            margin: 0 auto; /* 使用auto值来水平居中 */
            text-align: center;
            padding: 10px;
            width: 100%;
            background-image: linear-gradient(to right, #a6c1ee, #fbc2eb);
            color: #fff;
        }

        .header {
            font-size: 38px;
            font-weight: bold;
            text-align: center;
            line-height: 200px;
        }

        a {
            text-decoration-line: none;
            color: #abc1ee;
        }
    </style>
    <script type="text/javascript">
        function ajax() {
            var ajax = new XMLHttpRequest();
            var name = document.getElementById("name").value;
            var url = "Ajax_Test_Servlet";
            ajax.open("post", url, true);
            ajax.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
            ajax.onreadystatechange = function () {
                if (ajax.readyState == 4 && ajax.status == 200) {
                    var text = ajax.responseText;
                    var spanText = document.getElementById("checkname");
                    spanText.innerHTML = text;
                }
            }
            ajax.send("name=" + name);
        }
    </script>
</head>
<body>
<div class="container">
    <div class="login-wrapper">
        <div class="header">用户注册</div>
        <form action="${pageContext.request.contextPath}/RegisterServlet" method="post">
            <div class="form-wrapper">
                <table>
                    <tr>
                        <td>用户名:</td>
                        <td><input name="name" type="text" size="20" id="name" onblur="ajax();"><span id="checkname"
                                                                                                      aria-required="true"
                                                                                                      placeholder="必填"></span>
                        </td>
                    </tr>
                    <tr>
                        <td>密码：</td>
                        <td><input name="password" type="password" size="20" maxlength="15" minlength="5"
                                   aria-required="true" placeholder="必填"></td>
                    </tr>
                    <tr>
                        <td>ID:</td>
                        <td><input name="id" type="text" size="20" aria-required="true" placeholder="必填"></td>
                    </tr>
                    <tr>
                        <td>性别:</td>
                        <td><input name="sex" type="text" size="10" aria-required="true" placeholder="必填"></td>
                    </tr>
                    <tr>
                        <td>联系方式:</td>
                        <td><input name="telephone" type="text" size="10" maxlength="50" minlength="5"
                                   aria-required="true" placeholder="必填"></td>
                    </tr>
                    <tr>
                        <td>邮箱:</td>
                        <td><input name="email" type="text" size="10" aria-required="true" maxlength="50" minlength="5"
                                   placeholder="必填"></td>
                    </tr>
                </table>
                <br>
                <input type="submit" class="form-wrapper" value="注册"/>
                <input type="reset" class="form-wrapper" value="重置"/>
            </div>
        </form>
    </div>
</div>
</div>
</body>
</html>
