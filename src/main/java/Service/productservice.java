/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Service;

import Databaseconnection.DBConnection;
import Model.Product;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Dell
 */
public class ProductService {

    public void addProduct(Product product) {
        String query = "insert into product(product_Name, product_Price, product_Image, product_Category, product_Describe) values(?,?,?,?,?);";

        PreparedStatement preparedStatement = new DBConnection().getStatement(query);
        try {
            preparedStatement.setString(1, product.getProduct_Name());
            preparedStatement.setString(2, product.getProduct_Price());
            preparedStatement.setString(3, product.getProduct_Image());
            preparedStatement.setString(4, product.getProduct_category());
            preparedStatement.setString(5, product.getProduct_Describe());
            preparedStatement.execute();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    
    public List<Product> getProducts() {
        Product product = null;
        List<Product> products = new ArrayList<Product>();
        String query = "select * from product;";
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
                product.setProduct_Describe(resultSet.getString("product_Describe"));
                products.add(product);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return products;
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
                product.setProduct_Describe(resultSet.getString("product_Describe"));

                products.add(product);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return products;
    }

    public List<Product> getProductsByBestSeller() {
        Product product = null;
        List<Product> products = new ArrayList<Product>();
        String query = "select * from product where product_Category='best seller';";
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
                product.setProduct_Describe(resultSet.getString("product_Describe"));
                products.add(product);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return products;
    }

    public List<Product> getProductsByDesktopStationery() {
        Product product = null;
        List<Product> products = new ArrayList<Product>();
        String query = "select * from product where product_Category='Desktop Stationery';";
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
                product.setProduct_Describe(resultSet.getString("product_Describe"));
                products.add(product);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return products;
    }

    public List<Product> getProductsByArtSupplies() {
        Product product = null;
        List<Product> products = new ArrayList<Product>();
        String query = "select * from product where product_Category='Art supplies';";
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
                product.setProduct_Describe(resultSet.getString("product_Describe"));
                products.add(product);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return products;
    }
    
    public List<Product> getProductsByDeals() {
        Product product = null;
        List<Product> products = new ArrayList<Product>();
        String query = "select * from product where product_Category='deals';";
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
                product.setProduct_Describe(resultSet.getString("product_Describe"));
                products.add(product);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return products;
    }
    
    public List<Product> getProductsByComboDeals() {
        Product product = null;
        List<Product> products = new ArrayList<Product>();
        String query = "select * from product where product_Category='combodeals';";
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
                product.setProduct_Describe(resultSet.getString("product_Describe"));
                products.add(product);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return products;
    }

    public Product getProductById(int product_id) {
        Product product = null;
        String query = "select * from product where product_id=?;";
        PreparedStatement preparedStatement = new DBConnection().getStatement(query);
        try {
            preparedStatement.setInt(1, product_id);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                product = new Product();
                product.setProduct_id(resultSet.getInt("product_id"));
                product.setProduct_Image(resultSet.getString("product_Image"));
                product.setProduct_Name(resultSet.getString("product_Name"));
                product.setProduct_Price(resultSet.getString("product_Price"));
                product.setProduct_category(resultSet.getString("product_Category"));
                product.setProduct_Describe(resultSet.getString("product_Describe"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return product;
    }

    public void deleteProductById(int product_id) {
        String query = "delete from product where product_id=?;";
        PreparedStatement preparedStatement = new DBConnection().getStatement(query);
        try {
            preparedStatement.setInt(1, product_id);
            preparedStatement.execute();
        } catch (SQLException e) {
            e.printStackTrace();
        }
  }
}
