package com.demo.service;

import com.demo.bean.User;
import com.demo.dao.UserDAo;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "RegisterServlet")
public class RegisterServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        String name = request.getParameter("name");
        String password = request.getParameter("password");
        String id = request.getParameter("id");
        String sex = request.getParameter("sex");
        String telephone = request.getParameter("telephone");
        String email = request.getParameter("email");

        User user = new User();
        user.setName(name);
        user.setPassword(password);
        user.setId(id);
        user.setSex(sex);
        user.setTelephone(telephone);
        user.setEmail(email);
            UserDAo userDAo = new UserDAo();
            userDAo.addUser(user);
            // 注册成功，显示成功消息，并重定向到登录页面
            showSuccessMessageAndRedirect(response);
    }

    // 显示成功消息，并重定向到指定页面
    private void showSuccessMessageAndRedirect(HttpServletResponse response) throws IOException {
        PrintWriter out = response.getWriter();
        out.flush();
        out.println("<script>");
        out.println("alert('" + "注册成功，请登录！" + "');");
        out.println("window.location.href='" + "login.jsp" + "';");
        out.println("</script>");
    }
}
