<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>借书</title>

    <script type="text/javascript">
        setInterval("loadImage()", 3000);	//启动定时器
        var images = ['9.jpg','10.jpg','11.jpg','12.jpg'];
        var i =0 ;	//从第一个图像文件开始显示
        //装载图像文件(定时器调用)
        function loadImage() {
            i++;
            //当显示到第i个图像文件时，再从第一个图像开始循环
            if(i==4)
                i=0;
            var oImage = document.getElementById("image");	//得到Img标签
            var oLabel = document.getElementById("info");	//得到Label标签
            oImage.src = 'img/'+images[i];	//为img标签的src属性赋值
            oLabel.innerText = images[i];	//显示当前的图像文件名
        }
    </script>
    <script type="text/javascript">
        var oLabel = document.getElementById("info");
        //在初始化时显示第一个图像文件
        oLabel.innerText = images[i];
    </script>

    <style>
        body {
            width: 100vw;
            height: 90%; /* 将高度设置为视窗的高度 */
            margin: 0;
            position: relative;
            z-index: -1;
            background: url("${pageContext.request.contextPath}/img/3.jpg") center center; /* 设置背景图片 */
            background-size: cover; /* 让背景图片充满整个窗口 */
        }
        h1 {
            margin-top: 10px;
            margin-left: 180px;
            color: white;
            text-align: left;
        }
        form {
            position: absolute;
        }
        .login {
            left: 180px;
            z-index: 1;
            display: inline-block;
            vertical-align: middle;
            margin-top: 0;
        }
        .img1 {
            width: 560px;
            height: 680px;
            top: 1px;
            left: 220px;
            z-index: 2;
            border: 10px solid #6ac6ea; /* 添加边框 */
            position: absolute;
        }
        .in{
            width: 200px;
            height: 120px;
            left: 830px;
            top: 60px;
            display: inline-block;
            vertical-align: middle;
            z-index: 1;
            position: relative;
        }
        #a1 {
            height: 120px;
            width: 200px;
            top: 155px;
            left: 275px;
            font-size: 20px; /* 修改按钮文字的大小 */
            text-decoration: none; <!-- 去除超链接下划线 -->
            z-index: 1;
            border: 5px solid #6ac6ea;
            position: absolute;
            display: flex; /* 使用Flex布局 */
            justify-content: center; /* 水平居中 */
            align-items: center; /* 垂直居中 */
            text-align: center; /* 对齐文本 */
            color: white;
            background: url("${pageContext.request.contextPath}/img/7.jpg");
            transform: translateX(-50%); /* 使用transform属性将元素水平居中 */
        }
        .img22 {
            width: 200px;
            height: 200px;
            top: 1px;
            left: 840px;
            position: absolute;
        }
        .img2 {
            left: 160px;
            width: 200px;
            height: 200px;
            border: 5px solid #6ac6ea;
            position: absolute;
        }
        div {
            width: 100%;
            height: 40%;
            position: absolute;
        }
        input[type="text"], input[type="submit"] {
            /*top: 00px;*/
            padding: 10px;<!-- 设置输入框和提交按钮的内边距 -->
            margin: 5px; <!-- 设置输入框和提交按钮的外边距 -->
            border-radius: 5px; <!-- 设置输入框和提交按钮的边框圆角 -->
            border: 1px solid #ccc; <!-- 设置输入框和提交按钮的边框样式 -->
            position: absolute;
        }
        .shu {
            width: 50px;
            top: 365px;
            left: 1005px;
            position: absolute;
        }
        .shoebox {
            width: 165px;
            top: 360px;
            left: 1050px;
            position: absolute;
        }
        .jie {
            width: 165px;
            top: 410px;
            left: 1050px;
            position: absolute;
        }
        .zx {
            width: 200px;
            height: 120px;
            top: 300px;
            left: 840px;
            text-align: center;
        }
        #a2 {
            height: 120px;
            width: 200px;
            top: 160px;
            left: 270px;
            font-size: 20px; /* 修改按钮文字的大小 */
            text-decoration: none; <!-- 去除超链接下划线 -->
            z-index: 1;
            border: 5px solid #6ac6ea;
            position: absolute;
            display: flex; /* 使用Flex布局 */
            justify-content: center; /* 水平居中 */
            align-items: center; /* 垂直居中 */
            text-align: center; /* 对齐文本 */
            color: white;
            background: url("${pageContext.request.contextPath}/img/8.jpg");
            transform: translateX(-50%); /* 使用transform属性将元素水平居中 */
        }
        a {
            color: white;
        }
        a:hover {
            background-color: #007bff; /* 鼠标悬停时改变背景颜色 */
        }
    </style>
</head>
<body>
<h1>借书页面</h1>
<form action="BorrowBookServlet" method="post">
    <div class="login">
        <img class="img1" src='${pageContext.request.contextPath}/img/9.jpg' id="image" alt="">
    </div>
    <div class="in">
        <a href="showBooks.jsp" id="a1">查看书籍的情况</a>
    </div>
    <div class="img22">
        <img class="img2" src="${pageContext.request.contextPath}/img/6.jpg" alt="">
    </div>
    <br>
    <table>
        <tr>
            <td class="shu">书名：</td>
            <td>
                <label>
                    <input class="shoebox" type="text" name="book_name">
                </label>
            </td>
        </tr>
        <tr>
            <td style="background: #4260a2">
                <input class="jie" type="submit" value="借阅">
            </td>
        </tr>
    </table>
    <div class="zx">
        <a href="${pageContext.request.contextPath}/loginout.jsp" id="a2">注销</a>
    </div>
</form>
</body>
</html>