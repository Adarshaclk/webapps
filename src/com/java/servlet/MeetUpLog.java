package com.java.servlet;

import com.java.dto.Logdto;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/login")
public class MeetUpLog extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        long phn=Long.parseLong(req.getParameter("phone"));
        String pass=req.getParameter("pass");

        Logdto logdto=new Logdto();
        logdto.setPhone(phn);
        logdto.setPass(pass);

        System.out.println(phn);
        System.out.println(pass);

    }
}
