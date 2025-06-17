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
import java.util.Optional;

@WebServlet(urlPatterns = "/report")
public class BridgeServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String name=req.getParameter("name");
        String location=req.getParameter("location");
        int length=Integer.parseInt(req.getParameter("length"));
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

        if(saved) {
            RequestDispatcher dispatcher =
                    req.getRequestDispatcher("success.jsp");
            //add data to jsp
            req.setAttribute("success", "Save Success");
            req.setAttribute("bridgedto", bridgeDto);
            dispatcher.forward(req,resp);//service(req,res)--> res..
        }

        else{
            RequestDispatcher dispatcher =req.getRequestDispatcher("form.jsp");
            req.setAttribute("message", "failed to save details");
            req.setAttribute("bridgeDto",bridgeDto);
            dispatcher.forward(req,resp);
        }


    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       String bridgeId= req.getParameter("id");
       int id=Integer.parseInt(bridgeId);
       if(id>0){
           System.out.println("enterd id is "+id);
           BridgeServiceInter bridgeServiceInter=new ServiceImpli();
           Optional<BridgeDto> optionalBridgeDto=bridgeServiceInter.findId(id);
          if(optionalBridgeDto.isPresent()){
              System.out.println("data is present in the DB");
          }
          else{
              System.out.println("data is not present in in that id "+id);
          }

       }
    }
}
