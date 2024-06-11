package com.demo.service;

import com.demo.bean.User;
import com.demo.dao.UserDAo;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

/**
 * @author 26977
 */
@WebServlet(name = "redirectServlet")
public class redirectServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
            request.getRequestDispatcher("/WEB-INF/success.jsp").forward(request,response);
    }
}
