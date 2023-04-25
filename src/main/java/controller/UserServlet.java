package controller;

import Programs.SaltedMD5;
import Model.Cart;
import Model.Order;
import Model.Product;
import Model.transaction;
import Model.user;
import Service.CartService;
import Service.OrderService;
import Service.ProductService;
import Service.TransactionService;
import Service.userservice;
import java.io.IOException;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.transaction.Transaction;

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
            try {
                String fullname = request.getParameter("fullname");
                String address = request.getParameter("address");
                String email = request.getParameter("email");
                String password = request.getParameter("password");
                String hashPassword = get_hash(password);
                
                user customer = new user();
                customer.setFullname(fullname);
                customer.setaddress(address);
                customer.setEmail(email);
                customer.setPassword(hashPassword);
                
                userservice service = new userservice();
                service.insertUser(customer);
                RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
                rd.forward(request, response);
            } catch (NoSuchAlgorithmException | NoSuchProviderException ex) {
                Logger.getLogger(UserServlet.class.getName()).log(Level.SEVERE, null, ex);
            }

        }

        if (page.equalsIgnoreCase("existing")) {
            try {
                String email = request.getParameter("email");
                String password = request.getParameter("password");
                String hashPassword = get_hash(password);
                
                System.out.println(email + password);
                userservice service = new userservice();
                System.out.println(service.getUser(email, password));
                
                //Validating the User in database
                if (service.getUser(email, hashPassword) != true) {
                    RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
                    rd.forward(request, response);
                    
                }else{
                    HttpSession session = request.getSession();     //Creating session
                    session.setAttribute("email", email);
                    
                    getIndexInfo(request, response);
                    
                    RequestDispatcher rd = request.getRequestDispatcher("home.jsp");
                    rd.forward(request, response);
                }
            } catch (NoSuchAlgorithmException ex) {
                Logger.getLogger(UserServlet.class.getName()).log(Level.SEVERE, null, ex);
            } catch (NoSuchProviderException ex) {
                Logger.getLogger(UserServlet.class.getName()).log(Level.SEVERE, null, ex);
            }
            

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
            List<Cart> carts = new CartService().getCartsByUserId(user.getId());

            List<Product> cartProducts = new ArrayList<Product>();
            for (Cart cart : carts) {
                Product product = new ProductService().getProductById(cart.getProduct_id());
                cartProducts.add(product);
            }

//            request.setAttribute("product", product);
            request.setAttribute("featuresProduct", featuresProduct);
            request.setAttribute("BestProduct", BestProduct);
            request.setAttribute("cartProducts", cartProducts);

            System.out.println(featuresProduct.get(0).getProduct_Name());

            RequestDispatcher rd = request.getRequestDispatcher("home.jsp");
            rd.forward(request, response);
        }

        if (page.equalsIgnoreCase("category")) {
            List<Product> DesktopStationery = new ProductService().getProductsByDesktopStationery();
            request.setAttribute("DesktopStationery", DesktopStationery);

            RequestDispatcher rd = request.getRequestDispatcher("category.jsp");
            rd.forward(request, response);
        }

        if (page.equalsIgnoreCase("art_category")) {
            List<Product> ArtSupplies = new ProductService().getProductsByArtSupplies();
            request.setAttribute("ArtSupplies", ArtSupplies);

            RequestDispatcher rd = request.getRequestDispatcher("art_category.jsp");
            rd.forward(request, response);
        }

        if (page.equalsIgnoreCase("combo")) {
            List<Product> Deals = new ProductService().getProductsByDeals();
            List<Product> ComboDeals = new ProductService().getProductsByComboDeals();
            request.setAttribute("Deals", Deals);
            request.setAttribute("ComboDeals", ComboDeals);

            RequestDispatcher rd = request.getRequestDispatcher("combo.jsp");
            rd.forward(request, response);
        }

        if (page.equalsIgnoreCase("about")) {
            RequestDispatcher rd = request.getRequestDispatcher("/about.jsp");
            rd.forward(request, response);
        }

        if (page.equalsIgnoreCase("checkout")) {
            String color = request.getParameter("color");
            int quantity = Integer.parseInt(request.getParameter("quantity"));
            int product_id = Integer.parseInt(request.getParameter("product_id"));

            HttpSession session = request.getSession(true);
            String email = (String) session.getAttribute("email");

            user user = new userservice().getUserByEmail(email);

            Product product = new ProductService().getProductById(product_id);

            transaction transaction = new transaction();
            transaction.setUser_id(user.getId());
            transaction.setProduct_name(product.getProduct_Name());
            transaction.setProduct_price(product.getProduct_Price());
            transaction.setQuantity(quantity);
            transaction.setColor(color);
            transaction.setProduct_img(product.getProduct_Image());

            new TransactionService().addTransaction(transaction);
            List<transaction> transactionlist = new TransactionService().getTransactionListByUserId(user.getId());
            int final_price = 0;
            for (transaction a : transactionlist) {
                System.out.println(Integer.parseInt(a.getProduct_price()));
                int price = Integer.parseInt(a.getProduct_price());
                int product_quantity = a.getQuantity();
                int total_price = price * product_quantity;
                final_price = final_price + total_price;
            }
            System.out.println(final_price);

//            request.setAttribute("transaction", transaction);
            request.setAttribute("transactionlist", transactionlist);
            request.setAttribute("final_price", final_price);

            RequestDispatcher rd = request.getRequestDispatcher("/checkout.jsp");
            rd.forward(request, response);
        }

        if (page.equalsIgnoreCase("remove")) {
//            int cart_id = Integer.parseInt(request.getParameter("cart_id"));

            RequestDispatcher rd = request.getRequestDispatcher("/home.jsp");
            rd.forward(request, response);
        }

        if (page.equalsIgnoreCase("removecheckout")) {
            int tranx_id = Integer.parseInt(request.getParameter("tranx_id"));

            HttpSession session = request.getSession(true);
            String email = (String) session.getAttribute("email");

            user user = new userservice().getUserByEmail(email);
            new TransactionService().removeTransactionById(tranx_id);
            List<transaction> transactionlist = new TransactionService().getTransactionListByUserId(user.getId());
            int final_price = 0;
            for (transaction a : transactionlist) {
                System.out.println(Integer.parseInt(a.getProduct_price()));
                int price = Integer.parseInt(a.getProduct_price());
                int product_quantity = a.getQuantity();
                int total_price = price * product_quantity;
                final_price = final_price + total_price;
            }
            session.setAttribute("transactionlist", transactionlist);
            session.setAttribute("final_price", final_price);

//            request.setAttribute("transaction", transaction);
            request.setAttribute("transactionlist", transactionlist);
            request.setAttribute("final_price", final_price);

            RequestDispatcher rd = request.getRequestDispatcher("/checkout.jsp");
            rd.forward(request, response);
        }

        if (page.equalsIgnoreCase("placeorder")) {
            String order_info = request.getParameter("contact_info");
            String delivery_address = request.getParameter("delivery_addresss");
            String payment_method = request.getParameter("payment");

            HttpSession session = request.getSession(true);
            int final_price = (int) session.getAttribute("final_price");
            List<transaction> transactionList = (List<transaction>) session.getAttribute("transactionlist");
            session.removeAttribute("transactionlist");
            session.removeAttribute("final_price");

            Order order = new Order();
            order.setOrder_info(order_info);
            order.setAddress(delivery_address);
            order.setMethod(payment_method);
            for (transaction a : transactionList) {

                order.setTranx_id(a.getTranx_id());
                new OrderService().addOrder(order);

            }
            request.setAttribute("transactionlist", transactionList);
            request.setAttribute("final_price", final_price);

            RequestDispatcher rd = request.getRequestDispatcher("/checkout.jsp");
            rd.forward(request, response);

        }

        //change password
        if (page.equalsIgnoreCase("changepassword")) {

            RequestDispatcher rd = request.getRequestDispatcher("/changepassword.jsp");
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

        //FORGOT PASSWORD PROCESS
        if(page.equalsIgnoreCase("forgetpassword")){
            RequestDispatcher rd = request.getRequestDispatcher("/forget.jsp");
                rd.forward(request, response);
        }
        if (page.equalsIgnoreCase("CheckUsername")) {
            String email = request.getParameter("email");
            boolean status = new userservice().isUserExist(email);

            if (!status) {
                String statusMessage = "No user Found";

                request.setAttribute("statusMessage", statusMessage);

                RequestDispatcher rd = request.getRequestDispatcher("/forget.jsp");
                rd.forward(request, response);
            }

            request.setAttribute("email", email);

            RequestDispatcher rd = request.getRequestDispatcher("/reset.jsp");
            rd.forward(request, response);

        }

        if (page.equalsIgnoreCase("resetPassword")) {
            try {
                String email = request.getParameter("email");
                System.out.println(email);
                String password = request.getParameter("password");
                String hashPassword = get_hash(password);
                new userservice().updatePassword(email, hashPassword);
                RequestDispatcher rd = request.getRequestDispatcher("/login.jsp");
                rd.forward(request, response);
            } catch (NoSuchAlgorithmException | NoSuchProviderException ex) {
                Logger.getLogger(UserServlet.class.getName()).log(Level.SEVERE, null, ex);
            }

        }

        //LOGOUT PROCESS
        if (page.equalsIgnoreCase("logout")) {
            HttpSession session = request.getSession(false);
            session.invalidate();

            getIndexInfo(request, response);

            RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
            rd.forward(request, response);
        }
    }

//
//    
//         
//         if(page.equalsIgnoreCase("changePassword")) {
//             String password = (request.getParameter("password"));
//             int id = Integer.parseInt( request.getParameter("id") );
//             System.out.println("Getting the session id: "  + session.getAttribute("id"));
//             System.out.println("Getting id: " + id);
//             
//             new userservice().updatePassword(id, password);
//             
//             RequestDispatcher rd = request.getRequestDispatcher("PageChange?page=login");
//             rd.forward(request, response);
//             
//         }
//         
    private static void getIndexInfo(HttpServletRequest request, HttpServletResponse response) {

        List<Product> featuresProduct = new ProductService().getProductsByFeatures();
        List<Product> BestProduct = new ProductService().getProductsByBestSeller();
        List<Cart> carts = new CartService().getCarts();

        List<Product> cartProducts = new ArrayList<Product>();
        for (Cart cart : carts) {
            Product product = new ProductService().getProductById(cart.getProduct_id());
            cartProducts.add(product);
        }

        request.setAttribute("featuresProduct", featuresProduct);
        request.setAttribute("BestProduct", BestProduct);
        request.setAttribute("cartProducts", cartProducts);

        System.out.println(featuresProduct.get(0).getProduct_Name());

    }
    
    private static String get_hash(String password) throws NoSuchAlgorithmException, NoSuchProviderException {
        String hash = new SaltedMD5().getHash(password);
        return hash;
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
