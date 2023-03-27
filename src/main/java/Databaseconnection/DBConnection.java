/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Databaseconnection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class DBConnection {
    Connection connection=null;
    
    public DBConnection(){
        try{
        Class.forName("com.mysql.cj.jdbc.Driver");
        String dbUrl = "jdbc:mysql://localhost:3306/craftys";
        String name="root";
        String password="";
        this.connection=DriverManager.getConnection(dbUrl, name, password);
            System.out.println("DB connected");
        }
        catch(SQLException | ClassNotFoundException e){
            e.printStackTrace();
        }
       
        
    }
    public static void main(String[] args) {
        DBConnection db=new DBConnection();
    }
    //database bata  liyeko
    public PreparedStatement getStatement(String query){
        PreparedStatement preparedStatement=null;
        try{
            preparedStatement =connection.prepareStatement(query);
            
        }
        catch(SQLException e){
            e.printStackTrace();
        }
        return preparedStatement;
    }
}
