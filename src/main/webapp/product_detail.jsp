
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Product</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/font-awesome.min.css">
        <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
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
                font-family: Century SchoolBook;
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

            .list input {
                width: 110px;
                align-items: center;
                height: 30px;
                margin-left: 10px;

            }


            .reema ul li {
                list-style: none;
                font-size: 20px;
                font-family: Century Schoolbook;
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
                gap: 36px;

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
                font-family: century schoolbook;

                font-size: 20px;

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
                height: 550px;
                margin: 0px 97px;
                margin-top: 55px;
                display: flex;
            }

            .box1 {
                background-color: rgb(18, 3, 3);
                height: 500px;
                width: 45%;
                left: 0;
                /* margin-left: 108px; */
                align-items: center;
                margin-top: 40px;
            }

            .box2 {
                background-color: aliceblue;
                height: 500px;
                width: 48%;
                position: absolute;
                right: 0;
                margin-right: 98px;
                margin-top: 40px;
                font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;

            }

            .box2 h1 {
                margin-left: 50px;
                font-size: 40px;
                margin-bottom: 20px;
            }

            .box2 h2 {
                font-size: 30px;
            }

            .box2-span {
                margin-left: 53px;

            }

            .Quantity {
                margin-top: 10px;
                margin-left: 55px;
                font-size: 20px;

            }

            .color {
                margin-top: 10px;
                margin-left: 55px;
                font-size: 20px;
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
                font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;
                color: black;
                font-size: 18px;
                /* padding: 50px; */
                /* margin-top: 60px; */
                text-align: justify;
                /* font-weight: 300; */
                margin-left: 19px;
                margin-top: 90px;
            }

            .title2 p {
                font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;
                color: black;
                font-size: 18px;
                /* padding: 50px; */
                /* margin-top: 60px; */
                text-align: justify;
                /* font-weight: 300; */
                margin-left: 19px;
                margin-top: 15px;
            }

            .title3 p {
                font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;
                color: black;
                font-size: 18px;
                /* padding: 50px; */
                /* margin-top: 60px; */
                text-align: justify;
                /* font-weight: 300; */
                margin-left: 19px;
                margin-top: 15px;
            }

            .title4 p {
                font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;
                color: black;
                font-size: 18px;
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
                font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;
                padding: 12px;
                text-align: center;
                margin-top: 20px;
            }

            .footerbox1 ul {

                list-style: none;
            }

            .footerbox1 ul li {
                text-decoration: none;
                font-size: 18px;
                font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;
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
                font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;
                padding: 12px;
                text-align: center;
            }

            .footerbox2 ul {

                list-style: none;
            }

            .footerbox2 ul li {
                text-decoration: none;
                font-size: 18px;
                font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;
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
                font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;
                color: black;
                text-align: center;
                padding: 20px;
            }

            .shop {
                height: 70px;
                width: 100%;
                background-color: aliceblue;
            }

            .shop a {
                text-decoration: none;
                /* float: right; */
                color: white;
                text-align: center;
                font-size: 20px;

                font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;
            }



            hr {
                margin-left: 55px;
                /*margin-top: 20px;*/
            }

            .Quantity input {
                height: 30px;
                width: 100%;
                text-align: center;
                font-size: 15px;
                margin-top: 10px;
            }

            .color select {
                height: 30px;
                width: 100%;
                text-align: center;
                font-size: 15px;
                margin-top: 10px;
            }
            .hr-block{
                display: flex;
                gap: 20px;
            }
            .box-2-submit{
                margin-left: 55px;
                margin-top: 20px;


            }
            button{
                height: 40px;
                width: 40%;
                color: white;
                background-color: rgb(187, 91, 94);
                font-size: 20px;
                border-color: rgb(187, 91, 94);

            }
            .description{
                margin-top: 30px;
                margin-left: 55px;
                font-size: 18px;
            }
            .description p{
                margin-top: 20px;

            }
            .shopping{
                width: 15%;
                float: right;
                margin-right: 100px;
                border-radius: 10px;
            }
            .box-2-submit a{
                text-decoration: none;
                color: white;
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
                        <li> <a href="index.html" id="active">Home</a></li>

                        <div class="dropdown">
                            <a href="UserServlet?page=category">Products</a>
                            <div class="dropdown-content">

                                <a href="#">Desktop Stationery</a>
                                <a href="UserServlet?page=art_category">Arts supplies</a>
                                <a href="#">Paper products</a>
                                <a href="#">Calculators</a>
                                <a href="#">Student supplies</a>
                                <a href="#">Writing instruments</a>
                                <a href="#">Notebooks</a>
                            </div>
                        </div>
                        <li> <a href="UserServlet?page=combo">Combo Offers</a></li>
                        <li> <a href="UserServlet?page=about">About Us</a></li>

                    </ul>

                </div> <!--nav link ends-->

                <!-- icons start -->
                <div class="icon-groups">
                    <div class="list">
                        <ul>


                            <li> <a id="cart"><i class='bx bx-cart bx-sm'></i></a></li>

                            <li> <a href="login.html"><i class='bx bx-user-circle bx-sm'></i></a></li>

                            <!-- <i class="fa-regular fa-user"></i> -->
                        </ul>
                    </div>
                </div> <!--icons ends-->

            </div> <!--header ens-->

          <!-- Cart Container Start -->
            <div class="cart-container" id="cart-container">
                <h3>Your cart</h3>
                <div class="cart-container-body">
                    <c:forEach items="${cartProducts}" var="product">
                        <div class="cart-container-body-content">
                            <div class="cart-container-body-content-img">
                                <img src="${pageContext.request.contextPath}/img/${product.product_Image}" alt="">
                            </div>
                            <div class="cart-container-body-content-right">
                                <p>${product.product_Name}</p>
                                <p>Rs ${product.product_Price}</p>
                                <a href="UserServlet?page=remove&cart_id=${cart.cart_id}">Remove</a>
                            </div>
                        </div>
                    </c:forEach>


                </div>
                <div class="cart-button">
                    <a href="checkout.html">
                        <button class="submit">Checkout</button></a>
                </div>
            </div>
            <!-- Cart container End -->
            
            <form action="UserServlet?page=checkout&product_id=${product.product_id}" method="post">
                <div class="loginbox">
                    <div class="box1">
                        <img src="${pageContext.request.contextPath}/img/${product.product_Image}" height="500px" width="100%">
                    </div>
                    <div class="box2">
                        <h1> ${product.product_Name}</h1>
                        <div class="box2-span">
                            <h2>Rs.${product.product_Price}</h2>
                            <span>Tax included.</span>
                        </div>
                        <hr>
                        <div class="hr-block">
                            <div class="Quantity">
                                <label for="quantity">Quantity </label><br>
                                <input type="number" id="quantity" name="quantity" min="1" max="10">
                            </div>
                            <div class="color">
                                <label for="color">Color </label><br>
                                <select name="color" id="inputStatus">
                                    <option selected disabled>Select one</option>
                                    <option value="Blue">Blue</option>
                                    <option value="Gray">Grey</option>
                                    <option value="Red">Red</option>
                                    <option value="None">None</option>
                                </select>
                            </div>

                        </div>
                        <div class="box-2-submit">
                            <button class="cart">
                                <a href="#">Add to cart</a></button>

                            <button class="buy" type="submit">
                                Buy Now
                                <!--<a href="UserServlet?page=checkout">Buy Now </a>-->
                            </button>
                        </div>
                        <hr>
                        <div class="description">
                            <p>${product.product_Describe}
                            </p><br>


                        </div>
                    </div>

                </div>
            </form>
            <div class="shop">
                <button class="shopping">
                    <a href="UserServlet?page=category">Continue shopping</a></button>
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
