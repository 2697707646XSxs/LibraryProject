<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Login Failed</title>
    <style>
        /* 设置整个页面的样式 */
        body {
            font-family: Arial, sans-serif; /* 设置字体 */
            overflow: scroll; /* 溢出内容时显示滚动条 */
            margin: 0; /* 设置外边距为0 */
            padding: 0; /* 设置内边距为0 */
            display: flex; /* 使用flex布局 */
            align-items: center; /* 垂直居中 */
            justify-content: center; /* 水平居中 */
            height: 100vh; /* 设置高度为视口高度 */
        }
        /* 背景图片样式 */
        .img {
            width: 100vw; /* 宽度占满整个视口 */
            height: 100vh; /* 高度占满整个视口 */
            background-image: url('${pageContext.request.contextPath}/img/1.jpg'); /* 设置背景图片路径 */
            background-size: cover; /* 图片按比例缩放并覆盖整个容器 */
            z-index: -1; /* 设置层级为-1，使内容可以在其上面 */
            position: fixed; /* 固定定位，不随滚动条滚动 */
            top: 0; /* 距离顶部位置为0 */
            left: 0; /* 距离左侧位置为0 */
            background-attachment: fixed; /* 背景图片固定 */
        }
        /* 内容区域样式 */
        .content {
            border-radius: 30px; /* 设置边框圆角弧度 */
            transition: 0.2s; /* 设置过渡效果时长 */
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1); /* 设置阴影效果 */
            max-width: 400px; /* 最大宽度为400px */
            background: linear-gradient(45deg, #FF6B6B, #6B6BFF); /* 设置背景为渐变色 */
            text-align: center; /* 文字居中 */
            background: #00000080;
            padding: 20px 50px;
        }
        h1 {
            color: white; /* 设置标题文本颜色 */
            text-align: left; /* 标题居中 */
        }
        p {
            color: white; /* 设置段落文本颜色 */
            text-align: center; /* 段落居中 */
            /*text-decoration: underline;*/
            margin-bottom: 20px; /* 上外边距为20px */
        }
        a {
            display: block; /* 将链接显示为块级元素 */
            text-align: center; /* 链接文本居中 */
            margin-top: 20px; /* 上外边距为20px */
            text-decoration: none; /* 去除下划线 */
            color: #FFFFFF; /* 设置链接文本颜色 */
            font-size: 20px; /* 修改按钮文字的大小 */
            font-weight: bold; /* 设置粗体 */
            border-radius: 30px; /* 将按钮的左右边框设置为圆弧 */
            border: 2px solid #FFFFFF; /* 添加边框 */
            padding: 10px 20px; /* 设置内边距，增加可点击区域 */
            /* 设置按钮背景为透明 */
            background:rgba(0,0,0,0);
        }
        .mm {
            text-align: left; /* 链接文本居左 */
        }
        /* 鼠标悬停链接样式 */
        a:hover {
            text-decoration: underline; /* 鼠标悬停时显示下划线 */
            /*background-color: #007bff; !* 鼠标悬停时改变背景颜色 *!*/
            color: #007bff; /* 鼠标悬停时改变文本颜色 */
        }
    </style>
</head>
<body>
<div class="img"></div>
<div class="content">
    <h1>提示</h1>
    <p class="1">对不起，登录失败。请重新登录。</p>
    <p class="mm">如果未注册点击下方注册</p>
    <a href="${pageContext.request.contextPath}/register.jsp">立即注册</a>
</div>
</body>
</html>
