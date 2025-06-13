package com.java.weather.servlet;

import com.java.weather.dto.WeatherDto;
import com.java.weather.weatherService.WeatherServiceImpli;
import com.java.weather.weatherService.WeathherInterface;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/check")
public class WeatherServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String location=req.getParameter("location");
        String weather=req.getParameter("weather");
        int maxtemp=Integer.parseInt(req.getParameter("maxtemp"));
        int mintemp=Integer.parseInt(req.getParameter("mintemp"));
        int humidity=Integer.parseInt(req.getParameter("humidity"));
        int cloud=Integer.parseInt(req.getParameter("cloud"));
        int rain=Integer.parseInt(req.getParameter("raining"));
        int wind=Integer.parseInt(req.getParameter("wind"));
        String sunRise=req.getParameter("sunrise");
        String sunSet=req.getParameter("sunset");
        String moonRise=req.getParameter("moonrise");
        String moonSet=req.getParameter("moonset");
        String rainStart=req.getParameter("rainStart");
        String rainStop=req.getParameter("rainStop");
        int precipitation =Integer.parseInt(req.getParameter("precipitation"));

        WeatherDto weatherDto=new WeatherDto();
        weatherDto.setLocation(location);
        weatherDto.setWeather(weather);
        weatherDto.setMaxtemp(maxtemp);
        weatherDto.setMintemp(mintemp);
        weatherDto.setHumidity(humidity);
        weatherDto.setCloud(cloud);
        weatherDto.setRain(rain);
        weatherDto.setWind(wind);
        weatherDto.setSunrise(sunRise);
        weatherDto.setSunset(sunSet);
        weatherDto.setMoonset(moonSet);
        weatherDto.setRainstop(rainStop);
        weatherDto.setMoonrise(moonRise);
        weatherDto.setRainstart(rainStart);
        weatherDto.setPrecipitation(precipitation);
WeatherServiceImpli weatherServiceImpli=new WeatherServiceImpli();
boolean saved=weatherServiceImpli.save(weatherDto);

        if (saved) {
            System.out.println("Successfully saved the information.");
            RequestDispatcher requestDispatcher=req.getRequestDispatcher("success.jsp");
            req.setAttribute("message", "Save Success");
            req.setAttribute("bookingDto", weatherDto);
            requestDispatcher.forward(req,resp);

        } else {
            System.out.println(" Error in saving the information.");
        }



    }
}
