<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Offers</title>
        <!-- <link rel="stylesheet" href="https://kit.fontawesome.com/e1dcb8b526.css" crossorigin="anonymous"> -->
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
                background-color: antiquewhite;
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

            #active {
                color: rgb(187, 91, 94);
            }

            .reema ul li {
                list-style: none;
                font-size: 19px;
                font-family:lora;
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

            /* Change the background color of the dropdown button when the dropdown content is shown */
            /* .dropdown:hover .dropbtn {
                background-color: #3e8e41;
            } */

            .container1 {
                background-color: aliceblue;
                height: 500px;
                width: 100%;
                margin-top: 55px;
                opacity: 70%;

                /* position: absolute;
                object-fit: contain; */
            }

            .inner {
                position: absolute;
                top: 45%;
                height: 200px;
                width: 40%;
                left: 27%;
                transform: translate(-50%, -50%);
                color: whitesmoke;

                background-color: rgb(223, 118, 124);

            }

            .inner h1 {
                font-size: 60px;
                font-family: lora;
                text-align: center;
                margin-top: 30px;
            }

            .inner p {
                font-size: 30px;
                font-family: lora;
                text-align: center;
            }



            .container2 {
                background-color: aliceblue;
                height: 550px;
                width: 100%;

            }

            .container2 h2 {
                color: black;
                text-align: center;
                font-family:lora;
                font-size: 30px;
                padding: 40px;
            }

            .container2 h2::after {
                content: '';
                display: block;
                margin-left: 600px;
                width: 200px;
                height: 5px;
                background: rgb(187, 91, 94);
            }

            .bigbox {
                margin: 0px 110px;
                display: flex;
                flex-direction: row;
                flex-wrap: nowrap;
                justify-content: space-between;
            }

            .imgbox {
                background-color: black;
                height: 230px;
            }

            .textbox {
                background-color: aliceblue;
                height: 70px;
            }

            .textbox h3 {
                font-family: lora;
                font-size: 18px;
                margin-bottom: 10px;
            }

            .textbox p {
                font-family: lora;
                font-size: 18px;
            }

            .container3 {
                background-color: aliceblue;
                height: 430px;
                width: 100%;
                display: flex;
                gap: 8px;
            }

            .box1 {
                background-color: red;
                height: 400px;
                width: 40%;
                align-items: left;
                margin-left: 108px;
                align-items: center;
                /* display: inline; */
            }

            .box1:hover {
                transition: 0.5s all ease;
                transform: scale(1.1);
            }

            .box2:hover {
                transition: 0.5s all ease;
                transform: scale(1.1);
            }


            .box2-inner {
                margin-left: 300px;
                height: 200px;
                width: 46%;
                left: 87%;
                transform: translate(-106%, -195%);
                color: whitesmoke;
                /* background-color: rgb(223, 118, 124); */
            }

            .box1-inner {
                margin-left: 300px;
                height: 200px;
                width: 46%;
                left: 87%;
                transform: translate(-115%, -101%);
                color: whitesmoke;
                /* background-color: rgb(223, 118, 124); */
            }


            .center {
                display: block;
                margin-left: auto;
                margin-right: auto;
                width: 50%;
            }

            .box2 {
                background-color: aliceblue;
                height: 400px;
                width: 40%;
                position: absolute;
                right: 0;
                margin-right: 108px;
                /* align-items: right; */
            }

            .container3 p {
                font-size: 32px;
                font-family: lora;
                /* font-style: oblique; */
                text-align: center;
                align-items: center;
                padding: 30px;

            }


            .bestseller {
                background-color: aliceblue;
                height: 550px;
                width: 100%;

            }

            .bestseller h2 {
                color: black;
                text-align: center;
                font-family: lora;
                font-size: 30px;
                padding: 40px;
            }



            .bestseller h2::after {
                display: block;
                /* position: absolute; */
                top: calc(200% + 50px);

                margin-left: 600px;
                width: 200px;
                bottom: 20px;
                /* margin-bottom: 200px; */
                height: 5px;
                background: rgb(187, 91, 94);
                content: '';
                z-index: 1;
            }

            /* width */
            ::-webkit-scrollbar {
                width: 5px;
            }

            /* Track */
            ::-webkit-scrollbar-track {
                background: #f1f1f1;
            }

            /* Handle */
            ::-webkit-scrollbar-thumb {
                background: #888;
            }

            /* Handle on hover */
            ::-webkit-scrollbar-thumb:hover {
                background: #555;
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

            .list input {
                width: 110px;
                align-items: center;
                height: 30px;
                margin-left: 10px;

            }

            .box {
                width: 22%;

            }

            .cart {
                width: 100%;
                height: 40px;
                background-color: rgb(167, 72, 85);
                border-color: rgb(167, 72, 85);

            }

            .cart a {
                text-decoration: none;
                color: white;
                font-size: 20px;
                font-family: lora;

            }

            .box:hover {
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
                    <a href="index.html">
                        <h1>CRAFTYS</h1>
                    </a>
                </div> <!--logo container ends-->

                <!-- navs links -->
                <div class="reema">
                    <ul>
                        <li> <a href="index.html">Home</a></li>

                        <div class="dropdown">
                            <a href="UserServlet?page=category">Products</a>
                            <div class="dropdown-content">

                                <a href="UserServlet?page=category">Desktop Stationery</a>
                                <a href="UserServlet?page=art_category">Arts supplies</a>
                                <a href="#">Paper products</a>
                                <a href="#">Calculators</a>
                                <a href="#">Student supplies</a>
                                <a href="#">Writing instruments</a>
                                <a href="#">Notebooks</a>
                            </div>
                        </div>
                        <li> <a href="UserServlet?page=combo" id="active">Combo Offers</a></li>
                        <li> <a href="UserServlet?page=about">About Us</a></li>

                    </ul>

                </div> <!--nav link ends-->

                <!-- icons start -->
                <div class="icon-groups">
                    <div class="list">
                        <ul>


                            <li> <a id="cart"><i class='bx bx-cart bx-sm'></i></a></li>

                            <li> <a href="UserServlet?page=profile"><i class='bx bx-user-circle bx-sm'></i></a></li>

                            <!-- <i class="fa-regular fa-user"></i> -->
                        </ul>
                    </div>
                </div> <!--icons ends-->

            </div> <!--header ens-->

            <!-- Cart Container Start -->
            <div class="cart-container" id="cart-container">
                <h3>Your cart</h3>
                <div class="cart-container-body">
                    <div class="cart-container-body-content">
                        <div class="cart-container-body-content-img">
                            <img src="${pageContext.request.contextPath}/img/desk.jpg" alt="">
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

            <div class="container1">
                <img src="${pageContext.request.contextPath}/img/combo.jpg" height="500px" width="100%">
                <div class="inner">
                    <h1>It's time for You</h1>
                    <p>Grab the special combo deals and offers.<br>

                    </p>
                </div>

            </div>

            <div class="container2">
                <h2>Today's Sale</h2>
                <div class="bigbox">

                    <c:forEach items="${Deals}" var="product">
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
            </div>

            <div class="container3">
                <div class="box1">
                    <img src="${pageContext.request.contextPath}/img/planning.jpg" style=" height: 400px; width:100%" class="center">
                    <div class="box1-inner">
                        <!-- <p> Writing Instruments</p> -->
                    </div>
                </div>
                <div class="box2">

                    <img src="${pageContext.request.contextPath}/img/combo_stationery.jpg" style=" height: 400px; width:100%" class="center">
                    <div class="box2-inner">
                        <p>Organise your work desk</p>
                    </div>
                </div>
            </div>
            <div class="bestseller">
                <h2>Combo Deals</h2>
                <div class="bigbox">

                    <c:forEach items="${ComboDeals}" var="product">
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

        <script src="https://kit.fontawesome.com/e1dcb8b526.js" crossorigin="anonymous"></script>
        <script src="https://unpkg.com/boxicons@2.1.4/dist/boxicons.js"></script>
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
