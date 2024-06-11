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
        table,td,th{
            border: 1px,solid,pink;
            text-align: center;
            font-family: 楷体, serif;
            font-size: 25px;
            color: blanchedalmond;
        }
        caption{
            font-weight: bolder;
            font-family: 楷体, serif;
            font-size: 35px;
            color: rgb(132, 180, 164);
        }
        th{
            color: cornflowerblue;
        }
    </style>
</head>
<body>
<div id="log_off">
    <a href="${pageContext.request.contextPath}/loginout.jsp">注销</a>
</div>
<br><br>
<table align="center" border="1" cellpadding="10" cellspacing="5" width="1400">
    <caption>书籍陈列</caption>
    <tr>
        <th>书名</th>
        <th>剩余数量</th>
        <th>作者</th>
        <th>书的价格</th>
        <th>出版时间</th>
        <th>出版社</th>
    </tr>
<%
    UserDAo userDAo = new UserDAo();
    List<String> list = userDAo.showBook();
    for(String message:list){
        String[] spl = message.split("#");
        out.write("<tr height='50'>");
        for(int i = 0;i < 6;i ++)
        {
            out.write("<td>");
            out.write(spl[i]);
            out.write("</td>");
        }
    }
    out.write("</span>");
%>
</table>
<div id="return_borrow">
<a href="${pageContext.request.contextPath}/returnBook.jsp">还书</a>
<a href="${pageContext.request.contextPath}/borrowBook.jsp">借书</a>
</div>
</body>
</html>
