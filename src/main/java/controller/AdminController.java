/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import Model.AdminOrder;
import Model.Product;
import Model.user;
import Service.AdminOrderService;
import Service.ProductService;
import Service.adminservice;
import Service.userservice;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Dell
 */
@WebServlet(name = "AdminController", urlPatterns = {"/AdminController"})
public class AdminController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String page = request.getParameter("page");

        if (page.equalsIgnoreCase("adminindex")) {

            String username = request.getParameter("username");
            String password = request.getParameter("password");
           

            adminservice AdminService = new adminservice();

            //Validating the User in database
            if (!AdminService.getAdmin(username, password)) {
                RequestDispatcher rd = request.getRequestDispatcher("/adminindex.jsp");
                rd.forward(request, response);

            }
            HttpSession session = request.getSession();     //Creating session
            session.setAttribute("username", username);
            

            request.setAttribute("username", username);
           

            RequestDispatcher rd = request.getRequestDispatcher("CraftysAdmin/adminindex.jsp");
            rd.forward(request, response);

        }
        
        if (page.equalsIgnoreCase("dashboard")) {

   

            RequestDispatcher rd = request.getRequestDispatcher("CraftysAdmin/adminindex.jsp");
            rd.forward(request, response);

        }

        if (page.equalsIgnoreCase("addedproduct")) {
            String product_name = request.getParameter("product_name");
            String product_price = request.getParameter("product_price");
            String product_describe = request.getParameter("product_describe");
            String product_category = request.getParameter("product_category");
            String product_image = request.getParameter("product_image");
            
            Product product = new Product();
            product.setProduct_Name(product_name);
            product.setProduct_Price(product_price);
            product.setProduct_Describe(product_describe);
            product.setProduct_category(product_category);
            product.setProduct_Image(product_image);
            
            new ProductService().addProduct(product);

            RequestDispatcher rd = request.getRequestDispatcher("CraftysAdmin/addproduct.jsp");
            rd.forward(request, response);
        }

        if (page.equalsIgnoreCase("addproduct")) {
            RequestDispatcher rd = request.getRequestDispatcher("CraftysAdmin/addproduct.jsp");
            rd.forward(request, response);
        }
          if (page.equalsIgnoreCase("twitter")) {
            RequestDispatcher rd = request.getRequestDispatcher("CraftysAdmin/https://twitter.com/");
            rd.forward(request, response);
        }


        if (page.equalsIgnoreCase("viewproduct")) {
            List<Product> products = new ProductService().getProducts();
            System.out.println(products.get(2).getProduct_category());
            
            request.setAttribute("products", products);
            
            
            RequestDispatcher rd = request.getRequestDispatcher("CraftysAdmin/viewproduct.jsp");
            rd.forward(request, response);
        }

        if (page.equalsIgnoreCase("deleteproduct")) {
             List<Product> products = new ProductService().getProducts();
            System.out.println(products.get(2).getProduct_category());
            
            request.setAttribute("products", products);
            
            RequestDispatcher rd = request.getRequestDispatcher("CraftysAdmin/deleteproduct.jsp");
            rd.forward(request, response);
        }
        
         if (page.equalsIgnoreCase("deletedProduct")) {
             int product_id = Integer.parseInt(request.getParameter("productId"));
             
             new ProductService().deleteProductById(product_id);
             
             List<Product> products = new ProductService().getProducts();
            System.out.println(products.get(2).getProduct_category());
            
            request.setAttribute("products", products);
            
            RequestDispatcher rd = request.getRequestDispatcher("CraftysAdmin/deleteproduct.jsp");
            rd.forward(request, response);
        }

        if (page.equalsIgnoreCase("neworder")) {
            List<AdminOrder> adminorders = new AdminOrderService().getOrderCartList();
            
            request.setAttribute("adminorders", adminorders);
            
            RequestDispatcher rd = request.getRequestDispatcher("CraftysAdmin/neworder.jsp");
            rd.forward(request, response);
        }

        if (page.equalsIgnoreCase("totalorder")) {
            RequestDispatcher rd = request.getRequestDispatcher("CraftysAdmin/totalorder.jsp");
            rd.forward(request, response);
        }

        if (page.equalsIgnoreCase("customer")) {
            
            List<user> Users = new userservice().getUsers();
            request.setAttribute("Users", Users);
            
            RequestDispatcher rd = request.getRequestDispatcher("CraftysAdmin/customer.jsp");
            rd.forward(request, response);
        }

        if (page.equalsIgnoreCase("user_profile")) {
            
            
            RequestDispatcher rd = request.getRequestDispatcher("CraftysAdmin/user_profile.jsp");
            rd.forward(request, response);
        }
        
        if (page.equalsIgnoreCase("adminlogin")) {
            
            
            RequestDispatcher rd = request.getRequestDispatcher("CraftysAdmin/adminlogin.jsp");
            rd.forward(request, response);
        }
        
        //LOGOUT PROCESS
        if (page.equalsIgnoreCase("logout")) {
            HttpSession session = request.getSession(false);
            session.invalidate();

            RequestDispatcher rd = request.getRequestDispatcher("CraftysAdmin/login.jsp");
            rd.forward(request, response);
        }

    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
