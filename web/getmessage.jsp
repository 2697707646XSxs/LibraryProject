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
    </style>
</head>
<body>
<div id="log_off">
<a href="${pageContext.request.contextPath}/loginout.jsp">注销</a>
</div>
<br> <br>
<%
      String name = (String) session.getAttribute("name");
      out.write("<h1>");
      out.write(name+"&nbsp&nbsp借阅的书籍");
      out.write("</h1>");

      MessageDAo messageDAo = new MessageDAo();
      List<Message> list = messageDAo.getMessage(name);
      if(list.isEmpty())
      {
          out.write("<span class='custom-font'>");
          out.println("您还未借阅任何书籍");
          out.write("</span>");
      }
      else {
          for (Message list1 : list) {

              out.write("<span class='custom-font'>");

              out.write(list1.getBook_name() + " <---> " + list1.getDate());

              out.write("</span>");
              out.write("<br><br>");
          }
      }
%><br>
<hr>
<div id="return_borrow">
<a href="${pageContext.request.contextPath}/returnBook.jsp">还书</a>
<a href="${pageContext.request.contextPath}/borrowBook.jsp">借书</a>
</div>
</body>
</html>
