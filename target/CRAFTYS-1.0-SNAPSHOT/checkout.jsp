<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Checkout</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/font-awesome.min.css">
        <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
        <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link href="assets/css/style.css" rel="stylesheet">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/cart.css">



        <style>
            * {
                margin: 0;
                padding: 0;
                box-sizing: border-box;
                /* outline: 1px solid greenyellow; */
            }

            body {
                min-height: 100vh;
               
            }

            .mainbody {
                background-color: aliceblue;
                height: 900px;
                width: 100%;
            }

            header {
                display: flex;
                flex-direction: column;
                align-items: center;
                justify-content: center;

            }


            .header {
                height: 55px;
                width: 100%;
                background-color: white;
                align-content: center;
                font-size: 20px;
                text-align: center;
                position: fixed;
                padding: 12px 96px;
                /* margin-left: 100px; */
/*                font-family: Century SchoolBook;*/
                display: flex;
                box-shadow: 0px 6px rgb(167, 72, 85);
                align-items: center;
                justify-content: space-between;
                z-index: 10;
                top: 0;
            }

            .header h1 {
                float: left;
                /* margin-left: 100px; */
                font-family: century schoolbook;

                font-size: 30px;
                color: rgb(187, 91, 94);
            }

            .header ul li a {
                text-align: center;
            }

            .reema ul {
                display: flex;
                gap: 28px;
                justify-content: space-between;
                align-items: center;
                text-align: center;
            }



            .reema ul li {
                list-style: none;
                font-size: 19px;
                font-family: lora;
                justify-content: center;
            }

            .reema ul li a {
                color: black;
                text-decoration-line: none;
                justify-content: center;
                text-align: center;
            }

            .list ul {
                display: flex;
                align-items: center;
                gap: 16px;

                list-style: none;
            }

            .list ul li a {

                text-decoration-line: none;
                gap: 10px;
                color: black;

            }

            i {
                width: 24px;
                height: 24px;
            }



            /* The container <div> - needed to position the dropdown content */
            .dropdown {
                position: relative;
                display: inline-block;
                padding: 10px;
            }

            .dropdown a {
                text-decoration: none;
                color: black;
                font-family: lora;

                font-size: 19px;

            }

            /* Dropdown Content (Hidden by Default) */
            .dropdown-content {
                display: none;
                padding: 10px;
                position: absolute;
                background-color: white;
                min-width: 250px;
                box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
                z-index: 2;
            }

            /* Links inside the dropdown */
            .dropdown-content a {
                color: rgb(187, 91, 94);
                padding: 12px 16px;
                text-decoration: none;
                display: block;
            }

            /* Change color of dropdown links on hover */
            .dropdown-content a:hover {
                background-color: #ddd;
            }

            /* Show the dropdown menu on hover */
            .dropdown:hover .dropdown-content {
                display: block;
            }

            .loginbox {
                background-color: aliceblue;
                height: 880px;
                margin: 0px 10 0px;
                margin-top: 55px;

            }

            .loginbox h1 {
                padding-top: 60px;
                /* margin-left: 165px; */
                font-family:lora;
                font-size: 30px;
                text-align: center;
            }

            .loginbox p {
                font-size: 20px;
                margin-left: 45px;
                margin-top: 20px;
            }

            input {
                display: block;
                height: 50px;
                width: 70%;
                background-color: white;
                /* border-radius: 2px; */

                margin-top: 38px;
                font-size: 16px;
                font-weight: 100;
                color: rgb(41, 36, 36);
                float: center;
                font-family: lora;
                margin-left: 45px;
                /* border-radius: 20px; */
                padding-left: 15px;

            }
            select{
                display: block;
                height: 50px;
                width: 70%;
                background-color: white;
                /* border-radius: 2px; */

                margin-top: 38px;
                font-size: 18px;
                font-weight: 100;
                color: rgb(41, 36, 36);
                float: center;
                font-family: lora;
                margin-left: 45px;
                /* border-radius: 20px; */
                padding-left: 15px;
            }

            ::placeholder {
                color: rgb(90, 89, 89);
                font-size: 20px;
                font-family: lora;

            }

            button {
                margin-top: 30px;
                width: 25%;
                background-color: white;
                color: #080710;
                padding: 15px 0;
                font-size: 18px;
                font-weight: 600;
                /* border-radius: 20px; */  
                font-family: lora;
                cursor: pointer;
                margin-left: 195px;

            }

            button:hover {
                background-color: rgb(167, 72, 85);
                transition: 0.5s;
                color: white;
            }


            a {
                text-decoration: none;
                color: black;
                font-size: 19px;
                font-family: lora;
                /*padding-left: 20px;*/
            }

            a:hover {
                color: rgb(167, 72, 85);
            }



            .button a:hover {
                background-color: white;
                transition: 0.5s;
            }


            .forget {

                margin-left: 350px;
                margin-top: 20px;
            }

            .footer {
                background-color: rgb(249, 164, 168);
                height: 330px;
                width: 100%;
                display: flex;

            }

            .footerbox {
                background-color: rgb(249, 164, 168);
                height: 330px;
                width: 24%;
                align-items: left;
                margin-left: 108px;
                align-items: center;
            }

            .title h1 {
                padding: 15px;
                float: left;
                margin-top: 20px;

                /* margin-left: 100px; */
                font-family: Century SchoolBook;

                font-size: 30px;
                color: rgb(187, 91, 94);
            }

            .title1 p {
                font-family: lora;
                color: black;
                font-size: 17px;
                /* padding: 50px; */
                /* margin-top: 60px; */
                text-align: justify;
                /* font-weight: 300; */
                margin-left: 19px;
                margin-top: 90px;
            }

            .title2 p {
                font-family: lora;
                color: black;
                font-size: 17px;
                /* padding: 50px; */
                /* margin-top: 60px; */
                text-align: justify;
                /* font-weight: 300; */
                margin-left: 19px;
                margin-top: 15px;
            }

            .title3 p {
                font-family: lora;
                color: black;
                font-size: 17px;
                /* padding: 50px; */
                /* margin-top: 60px; */
                text-align: justify;
                /* font-weight: 300; */
                margin-left: 19px;
                margin-top: 15px;
            }

            .title4 p {
                font-family: lora;
                color: black;
                font-size: 17px;
                /* padding: 50px; */
                /* margin-top: 60px; */
                text-align: justify;
                /* font-weight: 300; */
                margin-left: 19px;
                margin-top: 15px;
            }

            .footerbox1 {
                background-color: rgb(249, 164, 168);
                height: 330px;
                width: 24%;
                align-items: left;
                margin-left: 108px;
                align-items: center;
            }

            .footerbox1 h2 {
                color: black;
                font-size: 27px;
                font-family: lora;
                padding: 12px;
                text-align: center;
                margin-top: 20px;
            }

            .footerbox1 ul {

                list-style: none;
            }

            .footerbox1 ul li {
                text-decoration: none;
                font-size: 17px;
                font-family: lora;
                padding: 10px;
                text-align: center;
            }

            .footerbox1 ul li a {
                text-decoration: none;
                color: black;
            }

            .footerbox2 {
                background-color: rgb(249, 164, 168);
                height: 300px;
                width: 23%;
                margin-top: 20px;
                align-items: left;
                margin-left: 108px;
                align-items: center;
            }

            .footerbox2 h2 {
                color: black;
                font-size: 27px;
                font-family:lora;
                padding: 12px;
                text-align: center;
            }

            .footerbox2 ul {

                list-style: none;
            }

            .footerbox2 ul li {
                text-decoration: none;
                font-size: 17px;
                font-family: lora;
                padding: 10px;
                text-align: center;
            }

            .footerbox2 ul li a {
                text-decoration: none;
                color: black;
            }

            hr.new {
                border: 1px solid grey;
            }

            .last {
                background-color: rgb(249, 164, 168);
                height: 50px;
                width: 100%;
            }

            .last p {
                font-size: 15px;
                font-family: lora;
                color: black;
                text-align: center;
                padding: 20px;
            }

            ul input {
                margin: 0;
                padding: 0;
                width: 110px;
                align-items: center;
                height: 30px;
                margin-left: 10px;


            }

            ul input::placeholder {
                font-size: 16px;
            }

            .cartbox {
                float: left;
                background-color: white;
                height: 750px;
                width: 50%;
                margin-top: 20px;
                margin-left: 100px;
                margin-bottom: 30px;
                font-family: lora;
            }

            .form {
                float: right;
                width: 40%;
                font-family: lora;
            }


            td {
                gap: 20px;
                justify-content: space-between;
            }

            .cartbox h3 {
                font-size: 25px;
                padding: 15px;

            }

            .cost-container {
                display: flex;
            }

            td {
                justify-content: space-between;
            }

            table {
                border-collapse: separate;
                border-spacing: 0 15px;
                font-family: lora;
            }

            th {
                background-color: #4287f5;
                color: white;
            }

            th,
            td {
                width: 150px;
                text-align: center;
                /* border: 1px solid black; */
                padding: 10px;

            }

            h2 {
                color: #4287f5;
            }
            .final{
                display: flex;
            }
        </style>
    </head>
    <body>
        <div class="mainbody">
            <div class="header">

                <!-- Logo container -->
                <div class="logo">
                    <h1>CRAFTYS</h1>
                </div> <!--logo container ends-->

                <!-- navs links -->
                <div class="reema">
                    <ul>

                        <li> <a href="index.html">Home</a></li>

                        <div class="dropdown">
                            <a href="category.html">Products</a>
                            <div class="dropdown-content">

                                <a href="#">Desktop Stationery</a>
                                <a href="#">Arts and supplies</a>
                                <a href="#">Paper products</a>
                                <a href="#">Calculators</a>
                                <a href="#">Student supplies</a>
                                <a href="#">Writing instruments</a>
                                <a href="#">Notebooks</a>
                            </div>
                        </div>
                        <li> <a href="about.jsp">Combo Offers</a></li>
                        <li> <a href="contact.jsp">About Us</a></li>

                    </ul>

                </div> <!--nav link ends-->

                <!-- icons start -->
                <div class="icon-groups">
                    <div class="list">
                        <ul>


                            <li> <a id="cart"><i class='bx bx-cart bx-sm'></i></a></li>

                            <li> <a id="profile"  style="cursor:pointer;"><i class='bx bx-user-circle bx-sm'></i></a></li>

                            <!-- <i class="fa-regular fa-user"></i> -->
                        </ul>
                    </div>
                </div> <!--icons ends-->

            </div> <!--header ens-->
            <!-- !<-- Cart Container Start -->
            <div class="cart-container" id="cart-container">
                <h3>Your cart</h3>
                <div class="cart-container-body">
                    <div class="cart-container-body-content">
                        <div class="cart-container-body-content-img">
                            <img src="desk.jpg" alt="">
                        </div>
                        <div class="cart-container-body-content-right">
                            <p>Name ukhjh</p>
                            <p>Rs 300</p>
                            <a href="">Remove</a>
                        </div>
                    </div>


                </div>
                <div class="cart-button">
                    <a href="checkout.html">
                        <button class="submit">Checkout</button></a>
                </div>
            </div>
            <!-- Cart container End -->

            <div class="loginbox">
                <h1>Checkout</h1>
                <div class="form">
                    <form class="first" action="UserServlet?page=placeOrder" method="post">

                        <p>Enter your Information.</p>

                        <input type="text" name="contact_info" id="username" placeholder="Your contact information" required>
                        <input type="text" name="delivery_addresss" id="username" placeholder="Delivery address" required>
                        <select name="payment" id="inputStatus" class="form-control custom-select" >
                            <option selected disabled>Choose payment</option>
                            <option value="COD">Cash on Delivery</option>
                            <option value="E-sewa">E-sewa</option>
                        </select>
                        <a href="profile.html">
                            <button name="button" value="submit"> Done</button></a>

                    </form>
                </div>

                <div class="cartbox">
                    <div class="sub-title">
                        <h3>Your orders</h3>
                    </div>
                    <div class="card-body">

                        <!-- Table with stripped rows -->
                        <table class="table-datatable">

                            <tbody>
                                <c:forEach items="${transactionlist}" var="transaction">
                                <tr>
                                    
                                        <td><img src="${pageContext.request.contextPath}/img/${transaction.product_img}" height="150px" width="200px"></td>


                                        <td>${transaction.product_name}</td>
                                        <td>${transaction.product_price}</td>
                                        <td>${transaction.quantity}</td>
                                        <td>${transaction.color}</td>
                                        <td><a href="UserServlet?page=removecheckout&tranx_id=${transaction.tranx_id}" style="color: red;"> Remove</a></td>
                                    

                                </tr>
                                </c:forEach>
                                

                            </tbody>
                        </table>
                        <hr>
                        <div class="cost-container">
                            <div class="title">
                                <p>Subtotal:</p><br>
                                <p> Shipping cost</p>
                            </div>
                            <div class="sub-title">
                                <p>Rs. ${final_price}</p><br>
                                <p> Rs.100</p>
                            </div>

                        </div>
                        <hr style="margin-top: 20px;">
                        <div class="final">
                            <div class="total">
                                <p>Total</p>
                            </div>
                            <div class="sub-total" style="margin-left: 80px;">
                                <p>Rs.<c:out value="${final_price + 100}"/></p>
                            </div>
                        </div>

                    </div>


                </div>

            </div>
            <div class="footer">
                <div class="footerbox">
                    <div class="title">
                        <h1>CRAFTYS</h1>
                    </div>
                    <div class="title1">

                        <p>Craftys dedicate to be the stationery shop of your dreams.
                        </p>
                    </div>
                    <div class="title2">
                        <p>Taumadi, Bhaktapur-06</p>
                    </div>
                    <div class="title3">
                        <p>+977 9869317228</p>
                    </div>
                    <div class="title4">
                        <p>Email: reemaawal100@gmail.com</p>
                    </div>

                </div>
                <div class="footerbox1">
                    <h2>Products</h2>
                    <ul>
                        <li><a href="#">Desktop Stationery</a></li>
                        <li><a href="#">Art and supplies</a></li>
                        <li><a href="#">Paper products</a></li>
                        <li><a href="#">Student supples</a></li>
                        <li><a href="#">Writing instruments</a></li>
                    </ul>
                </div>
                <div class="footerbox2">
                    <h2>Information</h2>
                    <ul>
                        <li><a href="#">About Us</a></li>
                        <li><a href="#">Terms and policy</a></li>
                        <li><a href="#">Customer service</a></li>
                        <li><a href="#">Contact Us</a></li>

                    </ul>
                </div>
            </div>
            <hr class="new">
            <div class="last">
                <p>Copyright 2023 Craftys Stationery Store. All rights reserved. </p>
            </div>
        </div>


    </body>
    <script>
        
        
        const cart_button = document.getElementById("cart");
        const cart_container = document.getElementById("cart-container");


        cart_button.addEventListener("click", () => {
            let status = cart_container.style.display;
            console.log(status);
            if (status == "none") {
                cart_container.style.display = "block";
            } else {
                cart_container.style.display = "none";
            }

        })
        
        
    </script>
</html>
