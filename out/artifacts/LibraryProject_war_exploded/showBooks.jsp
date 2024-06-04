<%@ page import="com.demo.dao.UserDAo" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>展示剩余书籍</title>
    <style>
        body{
            background-color: #001426;
        }
        .custom-font{
            font-family: 楷体 serif;
            font-weight: bold;
            font-size: 19px;
            color: aliceblue;
        }
        a{
            text-decoration: none;
            font-family: 华文行楷, serif;
            font-size: 28px;
            color: powderblue;
        }
        #log_off{
            float: right;
        }
        #return_borrow{
            display: flex;
            flex-direction: row;
            justify-content: space-between;
            margin: 30px;
        }
    </style>
</head>
<body>
<div id="log_off">
    <a href="${pageContext.request.contextPath}/loginout.jsp">注销</a>
</div>
<br><br>
<%
    UserDAo userDAo = new UserDAo();
    List<String> list = userDAo.showBook();
    out.write("<span class='custom-font'>");
    for(String message:list){
        out.write(message + "<br><br>");
        //out.println("<br>");
    }
    out.write("</span>");
%><br><br>
<div id="return_borrow">
<a href="${pageContext.request.contextPath}/returnBook.jsp">还书</a>
<a href="${pageContext.request.contextPath}/borrowBook.jsp">借书</a>
</div>
</body>
</html>
