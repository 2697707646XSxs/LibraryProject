<%@ page import="com.demo.dao.MessageDAo" %>
<%@ page import="com.demo.bean.Message" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>借阅成功</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background:url("${pageContext.request.contextPath}/img/2.jpg") ;
            background-size: cover;
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            text-align: center;
            width: 100vw;
            height: 90%; /* 将高度设置为视窗的高度 */
            position: relative;
            z-index: -1;
        }
        .message {
            width: 400px;
            height: 150px;
            top: 100px;
            left: 600px;
            padding: 20px;
            border-radius: 5px;
            font-size: 25px;
            color: white;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            position: absolute;
            background: #00000080;
        }
        h1 {
            margin-top: 10px;
            margin-left: 30px;
            margin-bottom: 35px;
            font-size: 35px;
            color: white;
            text-align: left;
        }
        a {
            text-decoration: none;
            color: #007bff;
            margin: 10px;
        }
        .a1 {
            width: 100px;
            height: 100px;
            display: flex; /* 使用Flex布局 */
            justify-content: center; /* 水平居中 */
            align-items: center; /* 垂直居中 */
            text-align: center; /* 对齐文本 */
            color: white;
            background: #00000080;
            position: absolute;
            top: 300px;
            left: 33%; /* 将左边界移到父元素的中间 */
            transform: translateX(-50%); /* 使用transform属性将元素水平居中 */
        }
        .a2 {
            width: 100px;
            height: 100px;
            display: flex; /* 使用Flex布局 */
            justify-content: center; /* 水平居中 */
            align-items: center; /* 垂直居中 */
            text-align: center; /* 对齐文本 */
            color: white;
            background: #00000080;
            position: absolute;
            top: 300px;
            left: 43%; /* 将左边界移到父元素的中间 */
            transform: translateX(-50%); /* 使用transform属性将元素水平居中 */
        }
        .a3 {
            width: 100px;
            height: 100px;
            display: flex; /* 使用Flex布局 */
            justify-content: center; /* 水平居中 */
            align-items: center; /* 垂直居中 */
            text-align: center; /* 对齐文本 */
            color: white;
            background: #00000080;
            position: absolute;
            top: 300px;
            left: 53%; /* 将左边界移到父元素的中间 */
            transform: translateX(-50%); /* 使用transform属性将元素水平居中 */
        }
        .a4 {
            width: 140px;
            height: 100px;
            display: flex; /* 使用Flex布局 */
            justify-content: center; /* 水平居中 */
            align-items: center; /* 垂直居中 */
            text-align: center; /* 对齐文本 */
            color: white;
            background: #00000080;
            position: absolute;
            top: 300px;
            left: 63%; /* 将左边界移到父元素的中间 */
            transform: translateX(-50%); /* 使用transform属性将元素水平居中 */
        }

    </style>
</head>
<body>
<div class="message">
    <h1>提示</h1>
    <%
        String book_name = request.getParameter("book_name");
        int x = (int)request.getAttribute("sum");
        if(x != -1){
            out.write("借阅《" + request.getParameter("book_name") +"》成功");
            String name = (String) session.getAttribute("name");
            Message message = new Message();
            message.setName(name);
            message.setBook_name(book_name);
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            message.setDate(simpleDateFormat.format(new Date()));
            MessageDAo messageDAo = new MessageDAo();
            messageDAo.addMessage(message);
        }
        else
            out.write("《" + request.getParameter("book_name") + "》" + "已全部被借阅");
    %>
</div>
    <br><br>
<div>
    <a class="a1" href="${pageContext.request.contextPath}/returnBook.jsp">还书</a>
    <a class="a2" href="${pageContext.request.contextPath}/borrowBook.jsp">借书</a>
    <a class="a3" href="${pageContext.request.contextPath}/loginout.jsp">注销</a>
    <br><br>
    <a class="a4" href="${pageContext.request.contextPath}/getmessage.jsp">查看借阅情况</a>
</div>
</body>
</html>
