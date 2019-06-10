package com.wenr.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.wenr.dao.UserDao;
import com.wenr.model.User;
import com.wenr.util.MD5Util;

public class RegisterServlet extends HttpServlet {

    /**
     * Constructor of the object.
     */
    public RegisterServlet() {
        super();
    }

    /**
     * Destruction of the servlet. <br>
     */
    public void destroy() {
        super.destroy(); // Just puts "destroy" string in log
        // Put your code here
    }

    /**
     * The doGet method of the servlet. <br>
     * <p>
     * This method is called when a form has its tag value method equals to get.
     *
     * @param request  the request send by the client to the server
     * @param response the response send by the server to the client
     * @throws ServletException if an error occurred
     * @throws IOException      if an error occurred
     */
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    /**
     * The doPost method of the servlet. <br>
     * <p>
     * This method is called when a form has its tag value method equals to post.
     *
     * @param request  the request send by the client to the server
     * @param response the response send by the server to the client
     * @throws ServletException if an error occurred
     * @throws IOException      if an error occurred
     */
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        response.setContentType("text/html;charset=utf-8");

        HttpSession session = request.getSession();
        String path = request.getContextPath();

        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String confirmPassword = request.getParameter("confirmPassword");
        String name = request.getParameter("name");

        if (username == null || password == null || confirmPassword == null || name == null)
            throw new RuntimeException("不能为空");

        if (!confirmPassword.equals(password))
            throw new RuntimeException("密码和确认密码不一致");

        UserDao userDao = new UserDao();

        User user = buildUser(username, password, name);


        if (!userDao.exist(username)) {
            session.setAttribute("user", user);
            userDao.add(user);

            response.sendRedirect(path + "/index.jsp");
        } else {
            response.sendRedirect(path + "/failure.jsp");
        }

    }

    private User buildUser(final String username, final String password, final String name) {
        return new User()
                .setName(name)
                .setPassword(MD5Util.md5(password))
                .setUsername(username);
    }

    public void saveCookie(String inumber, String password, HttpServletResponse response) {
        Cookie inumberCookie = new Cookie("inumber", inumber);
        Cookie passwordCookie = new Cookie("password", password);
        inumberCookie.setPath("/");
        passwordCookie.setPath("/");
        inumberCookie.setMaxAge(864000);    // 10 days
        passwordCookie.setMaxAge(864000);
        response.addCookie(inumberCookie);
        response.addCookie(passwordCookie);
    }

    public void notSaveCookie(String inumber, String password,
                              HttpServletRequest request, HttpServletResponse response) {
        Cookie[] cookies = request.getCookies();
        for (Cookie cookie : cookies) {
            if (cookie.getName().equals("inumber") || cookie.getName().equals("password")) {
                cookie.setMaxAge(0);
                response.addCookie(cookie);
            }
        }
    }

    /**
     * Initialization of the servlet. <br>
     *
     * @throws ServletException if an error occurs
     */
    public void init() throws ServletException {
        // Put your code here
    }

}
