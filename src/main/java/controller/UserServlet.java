package controller;

import Model.Cart;
import Model.Product;
import Model.user;
import Service.CartService;
import Service.ProductService;
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

        if (page.equalsIgnoreCase("index")) {

            getIndexInfo(request, response);

            RequestDispatcher rd = request.getRequestDispatcher("/home.jsp");
            rd.forward(request, response);
        }

        if (page.equalsIgnoreCase("login")) {
            RequestDispatcher rd = request.getRequestDispatcher("/login.jsp");
            rd.forward(request, response);
        }
        if (page.equalsIgnoreCase("signup")) {
            RequestDispatcher rd = request.getRequestDispatcher("/signup.jsp");
            rd.forward(request, response);
        }
        if (page.equalsIgnoreCase("profile")) {
            HttpSession session = request.getSession(false);
            String email = (String) session.getAttribute("email");
            System.out.println(email);

            user user = new userservice().getUserByEmail(email);

            request.setAttribute("user", user);

            RequestDispatcher rd = request.getRequestDispatcher("/profile.jsp");
            rd.forward(request, response);
        }

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
                RequestDispatcher rd = request.getRequestDispatcher("home.jsp");
                rd.forward(request, response);

            }
            HttpSession session = request.getSession();     //Creating session
            session.setAttribute("email", email);

            getIndexInfo(request, response);

            RequestDispatcher rd = request.getRequestDispatcher("home.jsp");
            rd.forward(request, response);

        }
        if (page.equalsIgnoreCase("ProductInfo")) {
            int product_id = Integer.parseInt(request.getParameter("product_id"));

            Product product = new ProductService().getProductById(product_id);
            
            request.setAttribute("product", product);

            RequestDispatcher rd = request.getRequestDispatcher("/product_detail.jsp");
            rd.forward(request, response);
        }

        if (page.equalsIgnoreCase("addcart")) {
            HttpSession session = request.getSession(true);
            String email = (String) session.getAttribute("email");

            int product_id = Integer.parseInt(request.getParameter("product_id"));

            user user = new userservice().getUserByEmail(email);

            new CartService().insertCart(user.getId(), product_id);

            List<Product> featuresProduct = new ProductService().getProductsByFeatures();
            List<Product> BestProduct = new ProductService().getProductsByBestSeller();
            List<Cart> carts = new CartService().getCarts();

//            request.setAttribute("product", product);
            request.setAttribute("featuresProduct", featuresProduct);
            request.setAttribute("BestProduct", BestProduct);
            request.setAttribute("carts", carts);

            System.out.println(featuresProduct.get(0).getProduct_Name());

            RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
            rd.forward(request, response);
        }

        if (page.equalsIgnoreCase("category")) {
            List<Product> DesktopStationery = new ProductService().getProductsByDesktopStationery();
            request.setAttribute("DesktopStationery", DesktopStationery);

            RequestDispatcher rd = request.getRequestDispatcher("category.jsp");
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

    private static void getIndexInfo(HttpServletRequest request, HttpServletResponse response) {
        Product product = new Product();
        List<Product> featuresProduct = new ProductService().getProductsByFeatures();
        List<Product> BestProduct = new ProductService().getProductsByBestSeller();
        List<Cart> carts = new CartService().getCarts();

//            request.setAttribute("product", product);
        request.setAttribute("featuresProduct", featuresProduct);
        request.setAttribute("BestProduct", BestProduct);
        request.setAttribute("carts", carts);

        System.out.println(featuresProduct.get(0).getProduct_Name());

    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
