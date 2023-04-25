<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Product</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/font-awesome.min.css">
        <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
        <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/cart.css">
        <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
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
                font-family: lora;
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

            .detailbox {
                height: 500px;
                background-color: aliceblue;
                width: 90%;
                margin: 0 60px;

            }

            .detailbox h1 {
                padding: 40px;
            }

            .row {
                display: flex;
                height: 230px;
                width: 87%;
                margin: 0 100px;
                background-color: rgb(187, 91, 94);
                margin-top: 55px;
                margin-bottom: 40px;
                gap: 63px;
                font-family: lora;
                color: white;
            }

            .row1 {
                float: left;
                width: 50%;
            }

            .row2 {
                float: right;
                margin-left: 130px;
                margin-top: 60px;
            }

            .row2 h2 {
                text-align: center;
                align-items: center;
                font-size: 30px;
                font-family: lora;
            }

            .category-name {
                height: 500px;
                background-color: aliceblue;
                margin: 0 100px;
                width: 87%;
                display: flex;
                gap: 20px;
                font-family:lora;
            }

            .category-list {
                height: 500px;
                width: 40%;
                background-color: aliceblue;
                margin-left: 60px;
            }

            .category-list1 {
                height: 500px;
                width: 100%;
                background-color: aliceblue;
            }

            .category-list h2 {
                padding: 15px;
                font-weight: 600;
                font-size: 25px;

            }

            .category-list ul {
                display: grid;
                padding: 20px;
                color: black;
            }

            .category-list li a:hover,
            .category-list li:active {
                background-color: rgb(187, 91, 94);
                padding: 15px;
                border-radius: 10px;
                color: white;
            }

            .active {
                background-color: rgb(187, 91, 94);
                padding: 15px;
                border-radius: 10px;
                color: white;
            }

            .category-list1 h2 {
                padding: 10px;
                font-weight: 600;
                font-size: 27px;

            }

            .bigbox {

                /*background-color: red;*/
                width: 100%;
                display: flex;
                flex-direction: row;
                flex-wrap: wrap;


            }

            .imgbox {
                background-color: black;
                height: 230px;

            }

            .textbox {
                /*background-color: bisque;*/
                height: 80px;

            }

            .textbox h3 {
                font-family: lora;
                font-size: 18px;
                margin-bottom: 10px;
                margin-top: 20px;

                /* padding: 10px;
                text-align: center; */
            }

            .textbox p {
                font-family: lora;
                font-size: 18px;
                /* margin-left: 55px; */

            }

            .box {
                margin-right: 40px;
                width: 22%;

            }

            #active {
                color: rgb(187, 91, 94);

            }

            .container-down-detail button {
                background-color: rgb(187, 91, 94);
                padding: 10px;
                margin-top: 30px;
                border-radius: 10px;
                color: white;
                font-size: 20px;
                border-color: rgb(187, 91, 94);
            }

            .cart {
                width: 100%;
                height: 40px;
                background-color: rgb(167, 72, 85);
                border-color: rgb(167, 72, 85);
                font-family: lora;
               

            }

            .cart a {
                text-decoration: none;
                color: white;
                font-size: 18px;

            }
            .box:hover{
                transition: 0.5s all ease;
                transform: scale(1.1);
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
                            <a href="UserServlet?page=category">Products</a>
                            <div class="dropdown-content">

                                <a href="#">Desktop Stationery</a>
                                <a href="#">Arts supplies</a>
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
                            <!-- <input type="text" placeholder="search">
                            <li> <a href="cart.jsp"> <i class='bx bx-search-alt-2 bx-sm'></i></a></li> -->

                            <li> <a id="cart"><i class='bx bx-cart bx-sm'></i></a></li>

                            <li> <a href="login.html"><i class='bx bx-user-circle bx-sm'></i></a></li>

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

            <section>
                <div class="row">
                    <div class="row1">
                        <img src="${pageContext.request.contextPath}/img/artr.jpg" height="230px" width="100%">
                    </div>
                    <div class="row2">
                        <h2>Arts and Crafts</h2><br>
                        <h2>Supplies</h2>
                    </div>
                </div>
                <div class="category-name">
                    <!-- <div class="category-list">
                        <h2>CATEGORY</h2>
    
                        <div class="list" style="font-size: 17px;">
                            <ul>
                                <li> <a href="catalog.jsp" > Desktop Stationery</a></li>
                                <li> <a href="catalog.jsp"class="active">Art and Crafts Supplies</a></li>
                                <li> <a href="catalog.jsp">Paper products</a></li>
                                <li> <a href="catalog.jsp">Student supplies</a></li>
                                <li> <a href="catalog.jsp">Writing Instruments</a></li>
                                <li> <a href="catalog.jsp">Notebooks</a></li>
                                <li> <a href="catalog.jsp">Calculators</a></li>
    
                            </ul>
                        </div>
                    </div> -->
                    <div class="category-list1">
                        <h2>Products</h2>

                        <div class="bigbox">
                            <div class="bigbox">

                                <c:forEach items="${ArtSupplies}" var="product">
                                    <div class="box">
                                        <div class="imgbox">
                                            <a href="UserServlet?page=productInfo&product_id=${product.product_id}">
                                                <img src="${pageContext.request.contextPath}/img/${product.product_Image}" height="230px" width="100%"></a>
                                        </div>
                                        <div class="textbox">
                                            <h3>${product.product_Name}</h3>
                                            <p>Rs.${product.product_Price}</p>

                                        </div>
                                        <button class="cart">
                                            <a href="index.html">Add to cart</a></button>

                                    </div>
                                </c:forEach>
                            </div>

                            <!--                        <div class="box">
                                                        <div class="imgbox">
                            
                                                        </div>
                                                        <div class="textbox">
                            
                                                        </div>
                                                        <button class="cart">
                                                            <a href="index.html">Add to cart</a></button>
                                                    </div>-->
                        </div>
                    </div>
            </section>
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
