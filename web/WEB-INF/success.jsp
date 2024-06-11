<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>登录成功页面</title>
    <style>
        body{
            background-color: #001426;
        }
        .custom-font{
            font-family:"楷体",sans-serif;
            font-weight: bold;
            font-size: 32px;
            color: aliceblue;
            text-align:center
        }
        a{
            color: bisque;
            text-decoration: none;
        }
        .hidden{
            visibility: hidden;
        }
    </style>
</head>
<body>
<%
    String name = request.getParameter("name");
    session.setAttribute("name", name);
%>
<div class="custom-font">
    <h1 id="successful"><%
       /* out.write(name);*/
    %>登录成功</h1>
    <script>
        var successful_msg = document.getElementById('successful');
        setTimeout(function(){
            successful_msg.classList.add('hidden');
        },2000);
    </script>
    <hr>
    <br>
    <a href="${pageContext.request.contextPath}/showBooks.jsp">查看剩余书籍情况</a><br>
    <a href="${pageContext.request.contextPath}/newBook.jsp">新增书籍</a>
    <br>
    <a href="${pageContext.request.contextPath}/returnBook.jsp">还书</a><br>
    <a href="${pageContext.request.contextPath}/borrowBook.jsp">借书</a><br>
    <br>
    <a href="${pageContext.request.contextPath}/loginout.jsp">注销</a><br><br>
    <a href="${pageContext.request.contextPath}/getmessage.jsp">查看借阅情况</a>
</div>
</body>
</html>
