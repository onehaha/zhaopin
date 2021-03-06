package com.zhaopin.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zhaopin.dao.UsersDAO;
import com.zhaopin.po.Experience;
import com.zhaopin.po.Users;

public class MandetailServlet extends HttpServlet {

    public void destroy() {
        super.destroy();
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);

    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        int userid = Integer.parseInt(request.getParameter("userid"));
        String qiuzhiid = request.getParameter("qiuzhiid");
        request.setAttribute("qiuzhiid", qiuzhiid);
        UsersDAO udao = new UsersDAO();
        Users users = udao.queryUserById(userid);
        request.setAttribute("usersInfo", users);

        List<Experience> Experiencelist = udao.queryExperiences(userid);
        request.setAttribute("experiencelist", Experiencelist);

        request.getRequestDispatcher("/mandetail.jsp").forward(request, response);

    }

    public void init() throws ServletException {

    }

}
