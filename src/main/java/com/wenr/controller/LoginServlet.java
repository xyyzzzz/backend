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

public class LoginServlet extends HttpServlet {

    /**
     * Constructor of the object.
     */
    public LoginServlet() {
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
        String action = request.getParameter("action");

        if ("login".equals(action)) {
            String username = request.getParameter("username");
            String password = request.getParameter("password");
            String[] isUserCookies = request.getParameterValues("isUseCookie");

            UserDao userDao = new UserDao();
            User user = userDao.get(username);
            if (user.getPassword().equals(MD5Util.md5(password))) {
                session.setAttribute("user", user);
                if (isUserCookies != null && isUserCookies.length > 0) {
                    saveCookie(username, password, response);
                } else {
                    notSaveCookie(username, password, request, response);
                }
                response.sendRedirect(path + "/studentMain.jsp");
            } else {
                response.sendRedirect(path + "/failure.jsp");
            }
        } else if ("logout".equals(action)) {
            session.invalidate();
            response.sendRedirect(path + "/index.jsp");
        }

    }

    public void saveCookie(String username, String password, HttpServletResponse response) {
        Cookie inumberCookie = new Cookie("username", username);
        Cookie passwordCookie = new Cookie("password", password);
        inumberCookie.setPath("/");
        passwordCookie.setPath("/");
        inumberCookie.setMaxAge(864000);    // 10 days
        passwordCookie.setMaxAge(864000);
        response.addCookie(inumberCookie);
        response.addCookie(passwordCookie);
    }

    public void notSaveCookie(String username, String password,
                              HttpServletRequest request, HttpServletResponse response) {
        Cookie[] cookies = request.getCookies();
        for (Cookie cookie : cookies) {
            if (cookie.getName().equals("username") || cookie.getName().equals("password")) {
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
