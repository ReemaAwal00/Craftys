
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/font-awesome.min.css">
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    <link rel="stylesheet" href="cart.css">
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

        .aboutus {
            background-color: aliceblue;
            /* margin: 0px 140px; */
            display: flex;

            /* position: relative; */
            z-index: 1;
            height: 450px;
        }


        .footer {
            background-color: rgb(249, 164, 168);
            height: 330px;
            width: 100%;
            display: flex;
            margin-top: 130px;
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

        .box1 {
            background-color: red;
            height: 500px;
            width: 50%;
            align-items: left;
            margin-left: 108px;
            align-items: center;


        }

        .box2 {
            background-color: aliceblue;
            height: 500px;
            width: 50%;
            /* position: absolute; */
            /* right: 0; */
            margin-right: 58px;


        }

        #active {
            color: rgb(187, 91, 94);
        }


        .box2 p {
            font-size: 18px;
            font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;
            text-align: justify;
            margin-top: 5px;
            margin-left: 35px;
            margin-bottom: 20px;


        }

        .box2 li {
            font-size: 18px;
            font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;
            text-align: justify;
            margin-top: 5px;
            margin-left: 50px
        }

        .head {
            margin-top: 55px;
            padding: 30px;
            font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;
        }

        .head h1 {
            font-size: 40px;
        }

        .head span {
            font-size: 20px;
        }
        .box2-img{
            margin-left: 35px;
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
                        <a href="product.jsp">Products</a>
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
                    <li> <a href="contact.jsp" id="active">About Us</a></li>

                </ul>

            </div> <!--nav link ends-->

            <!-- icons start -->
            <div class="icon-groups">
                <div class="list">
                    <ul>



                        <li> <a id ="cart"><i class='bx bx-cart bx-sm'></i></a></li>

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
        <div class="head" style="text-align: center;">
            <h1>About Us</h1>
            <span>Learn more about us</span>
        </div>
        <div class="aboutus">

            <div class="box1">
                <img src="store1.jpg" style=" height: 500px; width:100%">
            </div>
            <div class="box2">

                <p>At CRATYS, we believe in putting our customers first. That's why we offer a 100% satisfaction
                    guarantee on all of our products. We are committed to offering a wide range of products to meet the
                    needs of
                    our customers.</p>
                <ul>
                    <li>

                        Ullamco laboris nisi ut aliquip ex ea commodo consequat.
                    </li>
                    <li>

                        Ullamco laboris nisi ut aliquip ex ea commodo consequat.
                    </li>
                    <li>

                        Ullamco laboris nisi ut aliquip ex ea commodo consequat.
                    </li>
                    <li>

                        Ullamco laboris nisi ut aliquip ex ea commodo consequat.
                    </li>
                    <li>

                        Ullamco laboris nisi ut aliquip ex ea commodo consequat.
                    </li>
                </ul>
                <p>
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore
                    et dolore
                    magna aliqua.
                </p>
                <div class="box2-img">
                    <iframe width="100%" height="220px" src="https://www.youtube.com/embed/tgbNymZ7vqY">
                    </iframe>
                    <!-- <img src="coverpage.jpg" style=" height: 220px; width:100%"> -->
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
                    <li><a href="#">Student supplies</a></li>
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
