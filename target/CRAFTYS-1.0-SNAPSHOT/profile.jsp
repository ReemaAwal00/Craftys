

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Profile</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/font-awesome.min.css">
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-qKXV1j0HvMUeCBQ+QVp7JcfGl760yU08IQ+GpUo5hlbpg51QRiuqHAJz8+BrxE/N"
        crossorigin="anonymous"></script>
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
            font-family: 'poppins', sans-serif;
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

        .profile {
            margin-top: 55px;
            background-color: aliceblue;
            height: 800px;
            width: 100%;
            position: relative;

        }

        .profile h2 {
            padding: 27px;
            font-size: 22px;
            text-align: center;
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
            height: 154px;
            background-color: aliceblue;
            width: 87%;
            margin: 0 96px;
            margin-bottom: 40px;

        }

        h2 {
            padding: 30px;
            margin-left: 64px;
        }

        h3 {

            margin-left: 94px;
            margin-bottom: 20px;
            padding-top: 25px;
        }

        .update ul {
            text-decoration: none;
            list-style: none;
            padding: 10px;
            display: flex;
            gap: 110px;

            /* margin-left: 90px; */

        }

        .name {
            margin-bottom: 20px;
            font-size: 20px;
            font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;
        }

        .address {
            margin-bottom: 20px;
            font-size: 20px;
            font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;
        }

        .email {
            margin-bottom: 20px;
            font-size: 20px;
            font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;
        }

        .edit {
            float: right;
            width: 10%;
        }

        .submit {
            background-color: #F67A70;
            height: 40px;
            width: 100%;
            padding: 5px;
            font-size: 20px;
            border-color: #F67A70;
            color: white;
        }

        .container {
            height: 330px;
            background-color: white;
            width: 87%;
            margin: 0 96px;
            display: flex;
            margin-bottom: 50px;


        }

        .change {
            margin-left: 10px;
            height: 30px;
            list-style: circle;
        }

        .change a {
            color: green;
            text-decoration: none;
            font-size: 20px;
        }

        .table thead {
            background: #f6f6fe;

        }

        .table thead th {
            border: 0;

        }

        .dataTable-top {
            padding: 0 0 10px 0;
        }

        .dataTable-bottom {
            padding: 10px 0 0 0;
        }

        td {
            justify-content: space-between;
        }

        table {
            border-collapse: separate;
            border-spacing: 0 15px;

        }

        th {

            color: black;
            /* border: 1px solid black; */
        }

        th,
        td {
            width: 300px;
            text-align: center;

            padding: 10px;

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
                        <!-- <input type="text" placeholder="search">
                        <li> <a href="cart.jsp"> <i class='bx bx-search-alt-2 bx-sm'></i></a></li> -->

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

        <div class="profile">
            <!-- <h2>Account Information</h2> -->
            <h3>My profile</h3>
            <div class="detailbox">
                <div class="edit"><a href="#">

                        <button class="submit">Update</button>
                    </a>
                </div>

                <div class="update">
                    <ul>
                        <div class="name">
                            <li>
                                <h4>Name</h4><br>
                                <span><c:out value="${user.fullname}"/></span>
                            </li>
                        </div>
                        <div class="address">
                            <li>
                                <h4>Address</h4><br>
                                <span><c:out value="${user.address}"/></span>
                            </li>
                        </div>
                        <div class="email">
                            <li>
                                <h4>Email</h4><br>
                                <span> <c:out value="${user.email}"/></span>
                            </li>
                        </div>

                    </ul>
                    <div class="change">
                        <li><a href="UserServlet?page=changepassword">Change password</a></li>
                        <br>
                        <li><a href="UserServlet?page=logout">Logout</a></li>
                    </div>
                </div>

            </div>

            <h2>My orders</h2>
            <div class="container">
                <table class="table-datatable">
                    <thead>
                        <tr>
                            <th scope="col">Product_ID</th>
                            <th scope="col">Product_Name</th>
                            <th scope="col">Product_Image</th>
                            <!-- <th scope="col">Price</th> -->
                            <th scope="col">Status</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th scope="row">#2457</th>
                            <td>Brandon Jacob</td>
                            <td><img src="desk.jpg" alt="sd" style="width: 150px; height: 100px;"></td>
                            <!-- <td>$64</td> -->
                            <td><a href="#"><span class="badge bg-danger"><i class="bi bi-exclamation-octagon me-1"></i>
                                        Remove</span></a></td>
                        </tr>
                        <tr>
                            <th scope="row">#2147</th>
                            <td>Bridie Kessler</td>
                            <td>Blanditiis dolor omnis similique</td>
                            <!-- <td>$47</td> -->
                            <td><a href="#"><span class="badge bg-danger"><i class="bi bi-exclamation-octagon me-1"></i>
                                        Remove</span></a></td>
                        </tr>
                    </tbody>
                </table>
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
    

    cart_button.addEventListener("click", () =>{
        let status = cart_container.style.display;
        console.log(status);
        if(status=="none"){
        cart_container.style.display = "block";
        }else{
        cart_container.style.display = "none";
        }
        
    })
</script>
</html>
