/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Service;

import Databaseconnection.DBConnection;
import Model.user;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author Dell
 */
public class userservice {

    public void insertUser(user customer) {
        String query = "insert into user(fullname, address, email, password) values(?,?,?,?);";

        PreparedStatement preparedStatement = new DBConnection().getStatement(query);
        try {
            preparedStatement.setString(1, customer.getFullname());
            preparedStatement.setString(2, customer.getaddress());
            preparedStatement.setString(3, customer.getEmail());
            preparedStatement.setString(4, customer.getPassword());
            preparedStatement.execute();
        } catch (SQLException e) {
            e.printStackTrace();

        }
    }

    public boolean getUser(String email, String password) {
        user customer=null;
        String query = "select * from user where email=? and password=? ;";

        PreparedStatement preparedStatement = new DBConnection().getStatement(query);
        try {
            preparedStatement.setString(1, email);
            preparedStatement.setString(2, password);

            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
                customer = new user();
                customer.setId(resultSet.getInt("id"));
                customer.setFullname(resultSet.getString("fullname"));
                customer.setEmail(resultSet.getString("email"));
                customer.setPassword(resultSet.getString("password"));
                return true;

            }
        } catch (SQLException e) {
            e.printStackTrace();
            return false;

        }
        return false;
    }

}
