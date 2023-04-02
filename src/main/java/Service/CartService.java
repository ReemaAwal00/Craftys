/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Service;

import Databaseconnection.DBConnection;
import Model.Cart;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Dell
 */
public class CartService {

    public void insertCart(int user_id, int product_id) {
        String query = "insert into cart(product_id, user_id) values(?,?);";
        PreparedStatement preparedStatement = new DBConnection().getStatement(query);
        try {
            preparedStatement.setInt(1, product_id);
            preparedStatement.setInt(2, user_id);
            preparedStatement.execute();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public List<Cart> getCartsByUserId(int user_id) {
        Cart cart = null;
        List<Cart> carts = new ArrayList<Cart>();
        String query = "select * from cart where user_id = ?;";
        PreparedStatement preparedStatement = new DBConnection().getStatement(query);
        try {
            preparedStatement.setInt(1, user_id);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                cart = new Cart();
                cart.setCart_id(resultSet.getInt("cart_id"));
                cart.setProduct_id(resultSet.getInt("product_id"));
                cart.setUser_id(resultSet.getInt("user_id"));
                carts.add(cart);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            return carts;

        }
    }
    
    public List<Cart> getCarts() {
        Cart cart = null;
        List<Cart> carts = new ArrayList<Cart>();
        String query = "select * from cart;";
        PreparedStatement preparedStatement = new DBConnection().getStatement(query);
        try {
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                cart = new Cart();
                cart.setCart_id(resultSet.getInt("cart_id"));
                cart.setProduct_id(resultSet.getInt("product_id"));
                cart.setUser_id(resultSet.getInt("user_id"));
                carts.add(cart);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            return carts;

        }
    }
    
}
