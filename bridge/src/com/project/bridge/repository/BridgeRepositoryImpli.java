package com.project.bridge.repository;

import com.project.bridge.dto.BridgeDto;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class BridgeRepositoryImpli implements BridgeRepository{
    public boolean parser(BridgeDto bridgeDto){
        System.out.println("running in the repository block");
        if (bridgeDto != null) {
        String url = "jdbc:mysql://localhost:3306/java";
        String username = "root";
        String password = "surya@123";

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection connection = DriverManager.getConnection(url, username, password);
            String sql = "insert into bridge values(0,'"+bridgeDto.getName()+"','"+bridgeDto.getLocation()+"','"+bridgeDto.getDate()+"','"+bridgeDto.getLength()+"','"+bridgeDto.getSent()+"','"+bridgeDto.getIsSafeParam()+"')";
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
