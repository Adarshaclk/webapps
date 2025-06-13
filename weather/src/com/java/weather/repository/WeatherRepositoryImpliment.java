package com.java.weather.repository;

import com.java.weather.dto.WeatherDto;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

public class WeatherRepositoryImpliment implements WeatherRepository {
    @Override
    public boolean parser(WeatherDto weatherDto) {
        System.out.println("running in the repository block");
        if (weatherDto != null) {
            String url = "jdbc:mysql://localhost:3306/java";
            String username = "root";
            String password = "surya@123";
            LocalDateTime dateTime = LocalDateTime.now();
            DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
            String time = dateTime.format(formatter);
            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection connection = DriverManager.getConnection(url, username, password);
                String sql = "insert into weather values(0,'"+weatherDto.getLocation()+"','"+weatherDto.getWeather()+"',"+weatherDto.getMaxtemp()+","+weatherDto.getMintemp()+","+ weatherDto.getHumidity()+","+weatherDto.getCloud()+","+weatherDto.getRain()+"," + ""+weatherDto.getWind()+",'"+weatherDto.getSunrise()+"','"+weatherDto.getSunset()+"','"+weatherDto.getMoonrise()+"','"+weatherDto.getMoonset()+"','"+weatherDto.getRainstart()+"','"+weatherDto.getRainstop()+"'," + ""+weatherDto.getPrecipitation()+",'"+time+"')";
                Statement statement = connection.createStatement();
                statement.executeUpdate(sql);
            } catch (ClassNotFoundException | SQLException e) {
                throw new RuntimeException(e);
            }
            return true;
        }
        return false;
    }
}