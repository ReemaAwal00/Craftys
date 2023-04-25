/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Service;

import Databaseconnection.DBConnection;
import Model.Order;
import Model.transaction;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class OrderService {

    public void addOrder(Order order) {
        String query = "insert into order_cart( tranx_id, date, address, order_info, method) values(?,curdate(),?,?,?);";

        PreparedStatement preparedStatement = new DBConnection().getStatement(query);
        try {
            preparedStatement.setInt(1, order.getTranx_id());
            preparedStatement.setString(3, order.getOrder_info());
            preparedStatement.setString(2, order.getAddress());
//            preparedStatement.setInt(4, order.getDate());
            preparedStatement.setString(4, order.getMethod());
            preparedStatement.execute();
        } catch (SQLException e) {
            e.printStackTrace();

        }
    }
}
