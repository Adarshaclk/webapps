package com.java.servlet;


import com.java.dto.SpeakerDto;
import com.java.service.SpeakerImpli;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns ="/sound")
public class SpeakerServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String brand=req.getParameter("brand");
        String price=req.getParameter("price");
        String color=req.getParameter("color");
        String weight=req.getParameter("weight");
        String sound=req.getParameter("sound");

        SpeakerDto speakerDto=new SpeakerDto();
        speakerDto.setBrand(brand);
        speakerDto.setPrice(price);
        speakerDto.setColor(color);
        speakerDto.setWeight(weight);
        speakerDto.setSound(sound);
        System.out.println("SpeakerDto:"+speakerDto);

        SpeakerImpli speakerImpli=new SpeakerImpli();
        boolean saved= speakerImpli.save(speakerDto);
        if(saved) {
            RequestDispatcher dispatcher =
                    req.getRequestDispatcher("speakerSucess.jsp");
            req.setAttribute("message", "Save Success");
            req.setAttribute("furnitureDto","SpeakerDto");
            dispatcher.forward(req,resp);
        }

        else{
            RequestDispatcher dispatcher =
                    req.getRequestDispatcher("index.jsp");
            req.setAttribute("message", "Saving of Furniture Failed");
            dispatcher.forward(req,resp);
        }


    }


}
