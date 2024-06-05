<%@ page import="com.demo.bean.Message" %>
<%@ page import="java.util.List" %>
<%@ page import="com.demo.dao.MessageDAo" %>
<%@ page import="java.util.Date" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>查看用户借阅情况</title>
    <style>
        body{
            background-color: #001426;
        }
        .custom-font{
            font-family: 华文新魏 serif;
            font-weight: bold;
            font-size: 27px;
            color: aliceblue;
        }
        h1{
            font-family: 华文行楷, serif;
            color: cornsilk;
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
<br> <br>
<%
    String name = (String) session.getAttribute("name");
%>
<table align="center" border="1" cellpadding="10" cellspacing="5" width="1400">
    <caption><%=name%>借阅的书籍</caption>

<%
      MessageDAo messageDAo = new MessageDAo();
      List<Message> list = messageDAo.getMessage(name);
      if(list.isEmpty())
      {
          out.write("<th>");
          out.println("您还未借阅任何书籍");
          out.write("</th>");
      }
      else {
         out.write("<tr><th>书名</th><th>借阅的时间</th></tr>");
          for (Message list1 : list) {
              out.write("<tr>");
              out.write("<td>"+list1.getBook_name() + "<td>" + list1.getDate());
          }
      }
%>
</table>
<div id="return_borrow">
<a href="${pageContext.request.contextPath}/returnBook.jsp">还书</a>
<a href="${pageContext.request.contextPath}/borrowBook.jsp">借书</a>
</div>
</body>
</html>
