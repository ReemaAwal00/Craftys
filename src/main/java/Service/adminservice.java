/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Service;

import Databaseconnection.DBConnection;
import Model.admin;
import Model.user;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author Dell
 */
public class adminservice {

    public boolean getAdmin(String username, String password) {
        admin admin = null;
        String query = "select * from admin where username=? and password=? ;";
        PreparedStatement preparedStatement = new DBConnection().getStatement(query);
        try {
            preparedStatement.setString(1, username);
            preparedStatement.setString(2, password);

            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
                admin = new admin();
                admin.setId(resultSet.getInt("id"));
                admin.setEmail(resultSet.getString("email"));
                admin.setUsername(resultSet.getString("username"));
                admin.setPassword(resultSet.getString("password"));

                return true;
            }
        } catch (SQLException e) {
            e.printStackTrace();
            return false;

        }
        return false;
      }

}