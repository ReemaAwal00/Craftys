/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Service;

import Databaseconnection.DBConnection;
import Model.Product;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class productservice {
    
    public void addProduct(Product product){
    String query = "insert into product(product_id, product_Name, product_Price, product_Image, product_Category) values(?,?,?,?,?);";

        PreparedStatement preparedStatement = new DBConnection().getStatement(query);
        try {
            preparedStatement.setInt(1, product.getProduct_id());
            preparedStatement.setString(2, product.getProduct_Name());
            preparedStatement.setString(3, product.getProduct_Price());
            preparedStatement.setString(4, product.getProduct_Image());
            preparedStatement.setString(5, product.getProduct_category());
            preparedStatement.execute();
        } catch (SQLException e) {
            e.printStackTrace();
        }
}
    
    public void deleteProduct(Product product_id){
        PreparedStatement.
    }
}
