/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Service;

import Databaseconnection.DBConnection;
import Model.Product;
import Model.user;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

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
        user customer = null;
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
                customer.setaddress(resultSet.getString("address"));
                customer.setPassword(resultSet.getString("password"));
                return true;
            }
        } catch (SQLException e) {
            e.printStackTrace();
            return false;

        }
        return false;
    }

    public boolean getUserId(String email) {
        user customer = null;
        String query = "select * from user where email=? ;";
        PreparedStatement preparedStatement = new DBConnection().getStatement(query);
        try {
            preparedStatement.setString(1, email);

            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
                customer = new user();
                customer.setId(resultSet.getInt("id"));
                customer.setFullname(resultSet.getString("fullname"));
                customer.setEmail(resultSet.getString("email"));
                customer.setaddress(resultSet.getString("address"));
                customer.setPassword(resultSet.getString("password"));
                return true;
            }
        } catch (SQLException e) {
            e.printStackTrace();
            return false;

        }
        return false;
    }

    public void updatePassword(String email, String password) {
        String query = "update user set password=? where email=?";
        PreparedStatement pstm = new DBConnection().getStatement(query);
        try {
            pstm.setString(1, password);
            pstm.setString(2, email);
            pstm.execute();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public List<user> getUsers() {
        user User = null;
        List<user> Users = new ArrayList<user>();
        String query = "select * from user;";
        PreparedStatement preparedStatement = new DBConnection().getStatement(query);
        try {
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                User = new user();
                User.setFullname(resultSet.getString("fullname"));
                User.setEmail(resultSet.getString("email"));
                User.setaddress(resultSet.getString("address"));

                Users.add(User);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return Users;
    }

    public user getUserByEmail(String email) {
        user customer = null;
        String query = "select * from user where email=?;";
        PreparedStatement preparedStatement = new DBConnection().getStatement(query);
        try {
            preparedStatement.setString(1, email);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                customer = new user();
                customer.setId(resultSet.getInt("id"));
                customer.setFullname(resultSet.getString("fullname"));
                customer.setEmail(resultSet.getString("email"));
                customer.setaddress(resultSet.getString("address"));
                customer.setPassword(resultSet.getString("password"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return customer;
    }

    public boolean isUserExist(String email) {
        String query = "select * from user where email=? ;";
        PreparedStatement preparedStatement = new DBConnection().getStatement(query);
        try {
            preparedStatement.setString(1, email);

            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {

                return true;
            }
        } catch (SQLException e) {
            e.printStackTrace();
            return false;

        }
        return false;
    }

}
