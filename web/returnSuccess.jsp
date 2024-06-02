<%@ page import="com.demo.dao.MessageDAo" %>
<%@ page import="com.demo.bean.Book" %>
<%@ page import="com.demo.dao.BookDAo" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>归还界面</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 20px;
        }

        .container {
            background-color: rgba(255, 255, 255, 0.2);
            max-width: 600px;
            margin: 0 auto;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            top: 20%;
            position: relative;
        }

        h1 {
            text-align: center;
        }

        p {
            margin-bottom: 15px;
        }

        .button {

            display: inline-block;
            border: none;
            color: #ffffff;
            background-image: linear-gradient(to right, #fed6e3 ,#a8edea);
            padding: 10px 20px;
            text-align: center;
            text-decoration: none;
            font-size: 16px;
            margin: 30px 105px;
            cursor: pointer;
            border-radius: 5px;


            justify-content: space-between;

        }


        .button:hover {
            color: #0c170c;
            background-image: linear-gradient(to right,#fda4c0,#92f8f3);
        }

        body {
            font-family: Arial, sans-serif;
            height: 100vh; /* 设置body高度为视口高度 */
            margin: 0;
            background-image: linear-gradient(to right, #a8edea, #fed6e3);
        }
        .image{
            margin-left: 145px;

            font-weight: 700;
            font-size: 24px;

        }
    </style>
</head>
<body>
<%
//    request.setCharacterEncoding("UTF-8");
//    String book_name = request.getParameter("book_name");
//    BookDAo bookDAo = new BookDAo();
//    MessageDAo messageDAo = new MessageDAo();
//    Book book = bookDAo.retandborBook(book_name);
//    String name = (String) session.getAttribute("name");
//   // System.out.println(name + ":" + book_name);
//    boolean flag = messageDAo.check(name,book_name);
//    if(flag) {
//        out.write("归还 《" + book_name + "》成功");
//        messageDAo.returnMessage(name,book_name);
//        bookDAo.update(book,1);
//    }
//    else {
//        out.write("您的操作错误: 尚未借阅本书<br>");
//    }
//    //out.write();
//    //System.out.println();
%>
<div class="container">

    <div class="image">
        <%
            request.setCharacterEncoding("UTF-8");
            String book_name = request.getParameter("book_name");
            BookDAo bookDAo = new BookDAo();
            MessageDAo messageDAo = new MessageDAo();
            Book book = bookDAo.retandborBook(book_name);
            String name = (String) session.getAttribute("name");
            // System.out.println(name + ":" + book_name);
            boolean flag = messageDAo.check(name,book_name);
            if(flag) {
                out.write("归还 《" + book_name + "》成功");
                messageDAo.returnMessage(name,book_name);
                bookDAo.update(book,1);
            }
            else {
                out.write("您的操作错误: 尚未借阅本书<br>");
            }
            //out.write();
            //System.out.println();
        %>
    </div>

        <a href="/returnBook.jsp" class="button">还书</a>
        <a href="/borrowBook.jsp" class="button">借书</a>


</div>
</body>
</html>



