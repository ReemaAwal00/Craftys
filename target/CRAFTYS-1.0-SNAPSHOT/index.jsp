
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>CRAFTYS</title>
        <!-- <link rel="stylesheet" href="https://kit.fontawesome.com/e1dcb8b526.css" crossorigin="anonymous"> -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/font-awesome.min.css">
        <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
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
                top:0;
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

            #active{
                color:rgb(187, 91, 94);
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

            /* Change the background color of the dropdown button when the dropdown content is shown */
            /* .dropdown:hover .dropbtn {
                background-color: #3e8e41;
            } */

            .container1 {
                background-color: aliceblue;
                height: 675px;
                width: 100%;
                margin-top: 55px;

                /* position: absolute;
                object-fit: contain; */
            }

            .inner {
                position: absolute;
                top: 70%;
                left: 50%;
                transform: translate(-50%, -50%);
                color: white;
            }
            .inner h1{
                font-size: 80px;
                font-family: "century";
                text-align: center;
            }

            .archieve {
                background-color: rgb(187, 91, 94);
                height: 200px;
                width: 100%;
            }

            .archieve h2 {
                text-align: center;
                padding: 20px;
                /* margin-top: 30px; */
                font-size: 35px;
                font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;
                color: white;
            }

            .archieve p {
                text-align: center;
                /* padding: 5px; */
                font-size: 25px;
                font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;
                color: white;
            }

            .archieve button {
                height: 50px;
                width: 100px;
                color: rgb(187, 91, 94);
                background-color: white;
                justify-content: center;
                text-align: center;
                align-items: center;
                border: none;
                margin-left: 685px;
                margin-top: 20px;
                padding: 10px;
                font-size: 18px;
                font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;

                /* display: inline-block; */
            }



            .archieve button a {
                text-decoration: none;
                color: rgb(187, 91, 94);
                background-color: white;
            }

            .container2 {
                background-color: aliceblue;
                /*height: 550px;*/
                width: 100%;

            }

            .container2 h2 {
                color: black;
                text-align: center;
                font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;
                font-size: 30px;
                padding: 40px;
            }

            .container2 h2::after {
                content: '';
                display: block;
                /* position: absolute; */
                /* top: calc(200% + 50px); */

                margin-left: 600px;
                width: 200px;
                bottom: 20px;
                /* margin-bottom: 200px; */
                height: 5px;
                background: rgb(187, 91, 94);

                z-index: 1;
            }

            .bigbox {
                margin: 0px 110px;
                background-color: red;

                display: flex;
                flex-direction: row;
                flex-wrap: wrap;
                /* justify-content: center; */
                /* align-items: center; */
                /*border-radius: 36px;*/

                /* padding-top: 10px; */
            }
            .imgbox{
                background-color: black;
                height: 230px;
                width: 60%;
            }
            .textbox{
                background-color: bisque;
                height: 130px;
                width: 60%;
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
            .box2 h2{
                color: black;
                font-size: 40px;
                font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;
                text-align: center;
                padding: 20px;
                margin-top: 16px;
            }
            .box2 p{
                font-size: 24px;
                font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;
                text-align: center;
                padding: 20px;

            }


            .bestseller {
                background-color: aliceblue;
                height: 550px;
                width: 100%;

            }

            .bestseller h2 {
                color: black;
                text-align: center;
                font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;
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
            .list input{
                width: 110px;
                align-items: center;
                height: 30px;
                margin-left: 10px;

            }
            .box{
                width: 30%;

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
                            <a href="product.html">Products</a>
                            <div class="dropdown-content">

                                <a href="#">Desktop Stationery</a>
                                <a href="#">Arts and supplies</a>
                                <a href="#">Paper products</a>
                                <a href="#">Calculators</a>
                                <a href="#">Student supplies</a>
                                <a href="#">Writing instruments</a>
                            </div>
                        </div>
                        <li> <a href="about.jsp">Combo Offers</a></li>
                        <li> <a href="about.html">About Us</a></li>

                    </ul>

                </div> <!--nav link ends-->

                <!-- icons start -->
                <div class="icon-groups">
                    <div class="list">
                        <ul>
                            <input type="text" placeholder="search">
                            <li> <a href="cart.jsp">  <i class='bx bx-search-alt-2 bx-sm'></i></a></li>

                            <li> <a href="cart.jsp"><i class='bx bx-cart bx-sm'></i></a></li>

                            <li> <a href="login.html"><i class='bx bx-user-circle bx-sm' ></i></a></li>

                            <!-- <i class="fa-regular fa-user"></i> -->
                        </ul>
                    </div>
                </div> <!--icons ends-->

            </div> <!--header ens-->

            <div class="container1">
                <img src="store.png" style=" height: 675px; width:100%">
                <div class="inner">
                    <!-- <h1>
                       The BEST of <br>
                    Stationery Products
                    </h1> -->

                </div>

            </div>
            <div class="archieve">
                <h2> Archieve Sale</h2>
                <p> GET FLAT DISCOUNT UPTO 20% OFF OUR ARCHIEVE</p>
                <button><a href="">Shop now</a></button>
            </div>

            <div class="container2">
                <h2>FEATURED PRODUCTS</h2>

                <div class="bigbox">
                    <c:forEach items="${featuresProduct}" var="product">
                        <div class="box">
                            <div class="imgbox">
                                <img src="${product.product_Image}" height="200px" width="100%">
                            </div>


                            <div class="textbox">
                                <p>${product.product_Name}<br>
                                    Rs. ${product.product_Price	}</p>
                            </div>
                        </div>
                    </c:forEach>

`

                </div>
                <!-- <div class="bigbox">
                    <div class="imgbox">
    
                    </div>
                    <div class="textbox">
    
                    </div>
                </div> -->
            </div>

            <div class="container3">
                <div class="box1">
                    <img src="planner.png" style=" height: 400px; width:100%" class="center">
                </div>
                <div class="box2">
                    <h2> Stationery Archieve Sale</h2>
                    <p>     Looking for stationery on discount? Shop all of our stationery sale items below. <br>
                        Please note our stores have many more archive options. If you can't find what you're looking for, visit us in person for a juicy collection of store sale exclusives.</p>
                </div>
            </div>
            <div class="bestseller">
                <h2>BEST SELLER</h2>
                <div class="bigbox">

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

</html>