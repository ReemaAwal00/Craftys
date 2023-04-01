package controller;

import Model.Product;
import Model.user;
import Service.Productservice;
import Service.userservice;
import java.io.IOException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "UserServlet", urlPatterns = {"/UserServlet"})
public class UserServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);

        String page = request.getParameter("page");

        if (page.equalsIgnoreCase("newuser")) {
            String fullname = request.getParameter("fullname");
            String address = request.getParameter("address");
            String email = request.getParameter("email");
            String password = request.getParameter("password");

            user customer = new user();
            customer.setFullname(fullname);
            customer.setaddress(address);
            customer.setEmail(email);
            customer.setPassword(password);

            userservice service = new userservice();
            service.insertUser(customer);
            RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
            rd.forward(request, response);

        }

        if (page.equalsIgnoreCase("existing")) {
            String email = request.getParameter("email");
            String password = request.getParameter("password");

            System.out.println(email + password);
            userservice service = new userservice();
            System.out.println(service.getUser(email, password));

            //Validating the User in database
            if (!service.getUser(email, password)) {
                RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
                rd.forward(request, response);

            }
            HttpSession session = request.getSession();     //Creating session
            session.setAttribute("email", email);
            
            Product product = new Product();
            List<Product> featuresProduct = new Productservice().getProductsByFeatures();

                        request.setAttribute("product", product);

            request.setAttribute("featuresProduct", featuresProduct);

            RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
            rd.forward(request, response);

        }
            if (page.equalsIgnoreCase("addproduct")) {
            String fullname = request.getParameter("fullname");
            String address = request.getParameter("address");
            String email = request.getParameter("email");
            String password = request.getParameter("password");

            
             
            user customer = new user();
            customer.setFullname(fullname);
            customer.setaddress(address);
            customer.setEmail(email);
            customer.setPassword(password);

            userservice service = new userservice();
            service.insertUser(customer);
            RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
            rd.forward(request, response);

        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
