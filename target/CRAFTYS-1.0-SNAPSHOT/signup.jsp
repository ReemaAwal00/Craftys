<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Create page</title>
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

        .loginbox {
            background-color: aliceblue;
            height: 700px;
            margin: 0px 140px;
        }

        .loginbox h1 {
            padding-top: 140px;
            margin-left: 460px;
            font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;
            font-size: 40px;
        }

        input {
            display: block;
            height: 50px;
            width: 45%;
            background-color: white;
            /* border-radius: 2px; */

            margin-top: 38px;
            font-size: 16px;
            font-weight: 100;
            color: rgb(41, 36, 36);
            float: center;
            font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;
            margin-left: 370px;
            /* border-radius: 20px; */
            padding-left: 15px;

        }

        ::placeholder {
            color: rgb(90, 89, 89);
           font-size: 20px;
            font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;

        }

        button {
            margin-top: 35px;
            width: 20%;
            background-color: white;
            color: #080710;
            padding: 15px 0;
            font-size: 18px;
            font-weight: 600;
            /* border-radius: 20px; */

            cursor: pointer;
            margin-left: 370px;

        }

         button:hover {
            background-color: rgb(167, 72, 85);
            transition: 0.5s;
            color: white;
        }


      
        a:hover{
            color:rgb(167, 72, 85) ;
        }

        

        .button a:hover {
            background-color: white;
            transition: 0.5s;
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
        ul input{
            margin: 0;
            padding: 0;
         width: 110px;
         align-items: center;
         height: 30px;
         margin-left: 10px;
     
        
        }
        ul input::placeholder{
            font-size: 16px;
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
                        <a href="catalog.jsp">Products</a>
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
                    <li> <a href="contact.jsp">About Us</a></li>

                </ul>

            </div> <!--nav link ends-->

            <!-- icons start -->
            <div class="icon-groups">
                <div class="list">
                    <ul>
                        
                       

                        <li> <a href="cart.jsp"><i class='bx bx-cart bx-sm'></i></a></li>

                        <li> <a href="login.html"><i class='bx bx-user-circle bx-sm'></i></a></li>

                        <!-- <i class="fa-regular fa-user"></i> -->
                    </ul>
                </div>
            </div> <!--icons ends-->

        </div> <!--header ens-->

        <div class="loginbox">
            <form class="first" action="UserServlet?page=newuser" method="post">
                <h1>Create an account</h1>

                <input type="text" name="fullname" id="name" placeholder="Fullname">
                <input type="text" name="address" id="address" placeholder="Current Address">
                <input type="text" name="email" id="username" placeholder="Email">
                <input type="password" name="password" id="password" placeholder="Password">
    
                
    
                <button name="button" value="login">CREATE</button>
                
                   
               
            </form>
            
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

</html>