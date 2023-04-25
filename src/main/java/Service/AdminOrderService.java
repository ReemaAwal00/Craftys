/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Service;

import Databaseconnection.DBConnection;
import Model.AdminOrder;
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
public class AdminOrderService {
    
    public List<AdminOrder> getOrderCartList() {
        List<AdminOrder> adminorders = new ArrayList<AdminOrder>();
        AdminOrder adminorder;
        String query = "SELECT order_cart.order_id,order_cart.date,order_cart.order_info,order_cart.address,transaction.product_name,transaction.product_img,transaction.quantity,user.fullname\n"
                + "FROM order_cart \n"
                + "INNER JOIN transaction\n"
                + "INNER join user\n"
                + "where order_cart.tranx_id = transaction.tranx_id  and transaction.user_id=user.id;";
        PreparedStatement preparedStatement = new DBConnection().getStatement(query);
        try {
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                adminorder = new AdminOrder();
                adminorder.setOrder_id(resultSet.getInt("order_id"));
                adminorder.setAddress(resultSet.getString("address"));
                adminorder.setDate(resultSet.getString("date"));
                adminorder.setFullname(resultSet.getString("fullname"));
                adminorder.setOrder_info(resultSet.getString("order_info"));
                adminorder.setProduct_name(resultSet.getString("product_name"));
                adminorder.setProduct_img(resultSet.getString("product_img"));
                adminorder.setQuantity(resultSet.getInt("quantity"));
                adminorders.add(adminorder);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return adminorders;
    }
}
