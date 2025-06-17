package com.project.bridge.repository;

import com.project.bridge.dto.BridgeDto;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Optional;

public class BridgeRepositoryImpli implements BridgeRepository{
    public boolean parser(BridgeDto bridgeDto){
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
            String sql = "insert into bridge values(0,'"+bridgeDto.getName()+"','"+bridgeDto.getLocation()+"','"+bridgeDto.getDate()+"',"+bridgeDto.getLength()+",'"+bridgeDto.getSent()+"','"+bridgeDto.getIsSafeParam()+"','"+time+"')";
            Statement statement = connection.createStatement();
            statement.executeUpdate(sql);
        } catch (ClassNotFoundException | SQLException e) {
            throw new RuntimeException(e);
        }
        return true;
    }
        return false;
}
public Optional<BridgeDto> findId(int id){
    System.out.println("running inside the findId bridge Repository");
    return  BridgeRepository.super.findId(id);
}
}
