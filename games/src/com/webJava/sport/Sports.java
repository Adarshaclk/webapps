package com.webJava.sport;

import javax.servlet.GenericServlet;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import java.io.IOException;

@WebServlet(urlPatterns = {"/cricket","/hockey","/football","/volleyball","/kabbadi","/batminton","/baseball","/fooball","/karrate"})
public class Sports extends GenericServlet {

    public Sports(){
        System.out.println("running inside the sports const");
    }
    @Override
    public void service(ServletRequest servletRequest, ServletResponse servletResponse) throws ServletException, IOException {
        System.out.println("running inside the services of the Sports method");
    }
}
