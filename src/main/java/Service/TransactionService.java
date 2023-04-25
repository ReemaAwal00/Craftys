/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Service;

import Databaseconnection.DBConnection;
import Model.transaction;
import Model.user;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javax.transaction.Transaction;

/**
 *
 * @author Dell
 */
public class TransactionService {

    public void addTransaction(transaction transaction) {
        String query = "insert into transaction(user_id, product_name, product_price, quantity, color, product_img) values(?,?,?,?,?,?);";

        PreparedStatement preparedStatement = new DBConnection().getStatement(query);
        try {
            preparedStatement.setInt(1, transaction.getUser_id());
            preparedStatement.setString(2, transaction.getProduct_name());
            preparedStatement.setString(3, transaction.getProduct_price());
            preparedStatement.setInt(4, transaction.getQuantity());
            preparedStatement.setString(5, transaction.getColor());
            preparedStatement.setString(6, transaction.getProduct_img());

            preparedStatement.execute();
        } catch (SQLException e) {
            e.printStackTrace();

        }
    }

    public List<transaction> getTransactionListByUserId(int id) {
        String query = "select * from transaction where user_id=?;";
        PreparedStatement preparedStatement = new DBConnection().getStatement(query);
        List<transaction> transactions = new ArrayList<transaction>();
        transaction transaction = null;
        try {
            preparedStatement.setInt(1,id);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                transaction = new transaction();
                transaction.setTranx_id(resultSet.getInt("tranx_id"));
                transaction.setProduct_name(resultSet.getString("product_name"));
                transaction.setProduct_price(resultSet.getString("product_price"));
                transaction.setQuantity(resultSet.getInt("quantity"));
                transaction.setProduct_img(resultSet.getString("product_img"));
                transaction.setColor(resultSet.getString("color"));
                transactions.add(transaction);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return transactions;
    }

    public void removeTransactionById(int tranx_id) {
         String query = "delete from transaction where tranx_id=?;";

        PreparedStatement preparedStatement = new DBConnection().getStatement(query);
        try {
         
            preparedStatement.setInt(1, tranx_id);

            preparedStatement.execute();
        } catch (SQLException e) {
            e.printStackTrace();

        }
    }
}
