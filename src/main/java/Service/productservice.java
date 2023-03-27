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

public class Productservice {

    public void addProduct(Product product) {
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

    public List<Product> getProductsByFeatures() {
        Product product = null;
        List<Product> products = new ArrayList<Product>();
        String query = "select * from product where product_Category='features';";
        PreparedStatement preparedStatement = new DBConnection().getStatement(query);
        try {
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                product = new Product();
                product.setProduct_id(resultSet.getInt("product_id"));
                product.setProduct_Image(resultSet.getString("product_Image"));
                product.setProduct_Name(resultSet.getString("product_Name"));
                product.setProduct_Price(resultSet.getString("product_Price"));
                product.setProduct_category(resultSet.getString("product_Category"));
                products.add(product);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return products;
    }
}
