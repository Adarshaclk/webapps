package com.java.servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/reg")
public class RegistrServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = req.getParameter("name");
        long phone = Long.parseLong(req.getParameter("phone"));
        String pass = req.getParameter("pass");
        String cnf = req.getParameter("cnfpass");
        String ck = req.getParameter("chk");
        boolean chk;
        if (ck == null) {
            chk = Boolean.parseBoolean(req.getParameter("ck"));
        } else {
            chk = true;
        }

        System.out.println(name);
        System.out.println(ck);
    }
}
