package com.project.bridge.servlet;

import com.project.bridge.dto.BridgeDto;
import com.project.bridge.service.BridgeServiceInter;
import com.project.bridge.service.ServiceImpli;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/report")
public class BridgeServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String name=req.getParameter("name");
        String location=req.getParameter("location");
        String length=req.getParameter("length");
        String date=req.getParameter("date");
        String sent=req.getParameter("sent");
        String isSafeParam = req.getParameter("check");

        BridgeDto bridgeDto=new BridgeDto();
        bridgeDto.setName(name);
        bridgeDto.setLocation(location);
        bridgeDto.setLength(length);
        bridgeDto.setDate(date);
        bridgeDto.setSent(sent);
        bridgeDto.setIsSafeParam(isSafeParam);
        System.out.println("bridgeDto "+bridgeDto);

        BridgeServiceInter bridgeServiceInter=new ServiceImpli();
       boolean saved= bridgeServiceInter.save(bridgeDto);

        if (saved) {
            System.out.println("Successfully saved the information.");
            RequestDispatcher requestDispatcher=req.getRequestDispatcher("success.jsp");
            req.setAttribute("message", "Save Success");
            req.setAttribute("bookingDto", bridgeDto);
            requestDispatcher.forward(req,resp);

        } else {
            System.out.println(" Error in saving the information.");
        }



    }


}
