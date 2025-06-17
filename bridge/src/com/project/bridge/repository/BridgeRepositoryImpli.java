package com.project.bridge.repository;

import com.project.bridge.bridgePropety.DBProperties;
import com.project.bridge.dto.BridgeDto;

import java.sql.*;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Optional;

public class BridgeRepositoryImpli implements BridgeRepository {
    public boolean parser(BridgeDto bridgeDto) {
        System.out.println("running in the repository block");
        if (bridgeDto != null) {
            String url = "jdbc:mysql://localhost:3306/java";
            String username = "root";
            String password = "surya@123";
            LocalDateTime dateTime = LocalDateTime.now();
            DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
            String time = dateTime.format(formatter);

            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection connection = DriverManager.getConnection(url, username, password);
                String sql = "insert into bridge values(0,'" + bridgeDto.getName() + "','" + bridgeDto.getLocation() + "','" + bridgeDto.getDate() + "'," + bridgeDto.getLength() + ",'" + bridgeDto.getSent() + "','" + bridgeDto.getIsSafeParam() + "','" + time + "')";
                Statement statement = connection.createStatement();
                statement.executeUpdate(sql);
            } catch (ClassNotFoundException | SQLException e) {
                throw new RuntimeException(e);
            }
            return true;
        }
        return false;
    }

    public Optional<BridgeDto> findId(int id) {
        System.out.println("running inside the findId bridge Repository");
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection connection = DriverManager.getConnection(DBProperties.URL.getProp(), DBProperties.USER_NAME.getProp(), DBProperties.USER_NAME.getProp());
            String findByIdSQL="select * from duster dust where dust.id="+id+"";
            System.out.println("findById :"+findByIdSQL);
            Statement statement=connection.createStatement();
            ResultSet resultSet= statement.executeQuery(findByIdSQL);
            System.out.println("resultSet :"+resultSet);


            while(resultSet.next())
            {
               int ind= resultSet.getInt("id");
               String name=resultSet.getString("name");
               String loc=resultSet.getString("location");
                LocalDate date=resultSet.getDate("date").toLocalDate();
                int length=resultSet.getInt("length");
                String sent=resultSet.getString("sent");
                String check=resultSet.getString("check");
                LocalDateTime time=resultSet.getTimestamp("timings").toLocalDateTime();

            BridgeDto bridgeDto=new BridgeDto(ind,name,loc,date,length,sent,check,time);
            return Optional.of(bridgeDto);
            }

        }catch (SQLException | ClassNotFoundException exception)
        {
            System.err.println("SQLException in findById "+exception.getMessage());
        }
        return Optional.empty();
    }
}