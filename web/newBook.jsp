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

        .btn {
            text-align: center;
            padding: 10px;
            width: 100%;
            margin-top: 40px;
            background-image: linear-gradient(to right, #a6c1ee, #fbc2eb);
            color: #fff;
        }
    </style>
    <title>新增书籍</title>
</head>
<body>
<div class="container">
    <div class="login-wrapper">
        <div class="header">新增书籍</div>
        <form method="post" action="newBook">
            <div class="form-wrapper">
                <table>
                    <tr>
                        <td>书籍数量:</td>
                        <td><input name="book_num" type="number" size="20" id="name"><span id="checkname"
                                                                                           aria-required="true"
                                                                                           placeholder="必填"></span>
                        </td>
                    </tr>
                    <tr>
                        <td>书籍名称：</td>
                        <td><input name="book_name" type="text" size="20"
                                   aria-required="true" placeholder="必填"></td>
                    </tr>
                    <tr>
                        <td>作者:</td>
                        <td><input name="book_writer" type="text" size="20" aria-required="true" placeholder="必填">
                        </td>
                    </tr>
                    <tr>
                        <td>价格:</td>
                        <td><input name="book_price" type="number" size="10" aria-required="true" placeholder="必填">
                        </td>
                    </tr>
                    <tr>
                        <td>出版日期:</td>
                        <td><input name="publish_time" type="text" size="10"
                                   aria-required="true" placeholder="必填"></td>
                    </tr>
                    <tr>
                        <td>出版社:</td>
                        <td><input name="publish_house" type="text" size="10" aria-required="true"
                                   placeholder="必填"></td>
                    </tr>
                </table>
                <br>
                <input type="submit" class="form-wrapper" value="增加"/>
                <input type="reset" class="form-wrapper" value="重置"/>
            </div>
        </form>
        <a class="form-wrapper" href="${pageContext.request.contextPath}/redirectServlet">返回主页面</a>
    </div>
</div>
</body>
</html>
