package com.demo.service;

import com.demo.bean.Book;
import com.demo.bean.User;
import com.demo.dao.BookDAo;
import com.demo.dao.UserDAo;
import com.sun.net.httpserver.HttpServer;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebFilter;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * @author 26977
 */
@WebServlet("/newBook")
public class newBook extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        int bookNum = Integer.parseInt(request.getParameter("book_num"));
        String bookName = request.getParameter("book_name");
        String bookWriter = request.getParameter("book_writer");
        int bookPrice = Integer.parseInt(request.getParameter("book_price"));
        String publishTime = request.getParameter("publish_time");
        String publishHouse = request.getParameter("publish_house");

        Book book = new Book();
        book.setBook_name(bookName);
        book.setBook_num(bookNum);
        book.setBook_writer(bookWriter);
        book.setBook_price(bookPrice);
        book.setPublish_time(publishTime);
        book.setPublish_house(publishHouse);
        BookDAo addNewBook = new BookDAo();
        addNewBook.addBook(book);
        showSuccessMessageAndRedirect(response);
    }
    private void showSuccessMessageAndRedirect(HttpServletResponse response) throws IOException {
        PrintWriter out = response.getWriter();
        out.flush();
        out.println("<script type=\"text/javascript\">");
        out.println("alert('新增书籍成功，请继续操作！');");
        out.println("window.history.back();");
        out.println("</script>");
        out.close();
    }
}
