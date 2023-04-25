<!DOCTYPE html>
<html lang="en">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <head>
        <meta charset="utf-8">
        <meta content="width=device-width, initial-scale=1.0" name="viewport">

        <title>Product details</title>
        <meta content="" name="description">
        <meta content="" name="keywords">

        <!-- Favicons -->

        <link href="CraftysAdmin/assets/img/apple-touch-icon.png" rel="apple-touch-icon">

        <!-- Google Fonts -->
        <link href="https://fonts.gstatic.com" rel="preconnect">
        <link
            href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
            rel="stylesheet">

        <!-- Vendor CSS Files -->
        <link href="CraftysAdmin/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link href="CraftysAdmin/assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
        <link href="CraftysAdmin/assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
        <link href="CraftysAdmin/assets/vendor/quill/quill.snow.css" rel="stylesheet">
        <link href="CraftysAdmin/assets/vendor/quill/quill.bubble.css" rel="stylesheet">
        <link href="CraftysAdmin/assets/vendor/remixicon/remixicon.css" rel="stylesheet">
        <link href="CraftysAdmin/assets/vendor/simple-datatables/style.css" rel="stylesheet">

        <!-- Template Main CSS File -->
        <link href="CraftysAdmin/assets/css/style.css" rel="stylesheet">

        <!-- =======================================================
      * Template Name: NiceAdmin
      * Updated: Mar 09 2023 with Bootstrap v5.2.3
      * Template URL: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/
      * Author: BootstrapMade.com
      * License: https://bootstrapmade.com/license/
      ======================================================== -->
    </head>

    <body>

        <!-- ======= Header ======= -->
        <header id="header" class="header fixed-top d-flex align-items-center">

            <div class="d-flex align-items-center justify-content-between">
                <a href="AdminController?page=dashboard" class="logo d-flex align-items-center">
                    <!-- <img src="CraftysAdmin/assets/img/logo.png" alt=""> -->
                    <span class="d-none d-lg-block">CRAFTYS</span>
                </a>
                <i class="bi bi-list toggle-sidebar-btn"></i>
            </div><!-- End Logo -->

            <!-- <div class="search-bar">
          <form class="search-form d-flex align-items-center" method="POST" action="#">
            <input type="text" name="query" placeholder="Search" title="Enter search keyword">
            <button type="submit" title="Search"><i class="bi bi-search"></i></button>
          </form>
        </div>End Search Bar -->

            <nav class="header-nav ms-auto">
                <ul class="d-flex align-items-center">

                    <li class="nav-item d-block d-lg-none">
                        <a class="nav-link nav-icon search-bar-toggle " href="#">
                            <i class="bi bi-search"></i>
                        </a>
                    </li><!-- End Search Icon-->

                    <li class="nav-item dropdown">

                        <a class="nav-link nav-icon" href="#" data-bs-toggle="dropdown">
                            <i class="bi bi-bell"></i>
                            <span class="badge bg-primary badge-number">4</span>
                        </a><!-- End Notification Icon -->

                        <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow notifications">
                            <li class="dropdown-header">
                                You have 4 new notifications
                                <a href="#"><span class="badge rounded-pill bg-primary p-2 ms-2">View all</span></a>
                            </li>
                            <li>
                                <hr class="dropdown-divider">
                            </li>

                            <li class="notification-item">
                                <i class="bi bi-exclamation-circle text-warning"></i>
                                <div>
                                    <h4>Lorem Ipsum</h4>
                                    <p>Quae dolorem earum veritatis oditseno</p>
                                    <p>30 min. ago</p>
                                </div>
                            </li>

                            <li>
                                <hr class="dropdown-divider">
                            </li>

                            <li class="notification-item">
                                <i class="bi bi-x-circle text-danger"></i>
                                <div>
                                    <h4>Atque rerum nesciunt</h4>
                                    <p>Quae dolorem earum veritatis oditseno</p>
                                    <p>1 hr. ago</p>
                                </div>
                            </li>

                            <li>
                                <hr class="dropdown-divider">
                            </li>

                            <li class="notification-item">
                                <i class="bi bi-check-circle text-success"></i>
                                <div>
                                    <h4>Sit rerum fuga</h4>
                                    <p>Quae dolorem earum veritatis oditseno</p>
                                    <p>2 hrs. ago</p>
                                </div>
                            </li>

                            <li>
                                <hr class="dropdown-divider">
                            </li>

                            <li class="notification-item">
                                <i class="bi bi-info-circle text-primary"></i>
                                <div>
                                    <h4>Dicta reprehenderit</h4>
                                    <p>Quae dolorem earum veritatis oditseno</p>
                                    <p>4 hrs. ago</p>
                                </div>
                            </li>

                            <li>
                                <hr class="dropdown-divider">
                            </li>
                            <li class="dropdown-footer">
                                <a href="#">Show all notifications</a>
                            </li>

                        </ul><!-- End Notification Dropdown Items -->

                    </li><!-- End Notification Nav -->



                    <li class="nav-item dropdown pe-3">

                        <a class="nav-link nav-profile d-flex align-items-center pe-0" href="#" data-bs-toggle="dropdown">

                            <span class="d-none d-md-block dropdown-toggle ps-2"><c:out value="${username}"/></span>
                        </a><!-- End Profile Iamge Icon -->

                        <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow profile">
                            <li class="dropdown-header">
                                <h6><c:out value="${username}"/></h6>
                                <!-- <span>Web Designer</span> -->
                            </li>
                            <li>
                                <hr class="dropdown-divider">
                            </li>

                            <li>
                                <a class="dropdown-item d-flex align-items-center" href="AdminController?page=user_profile">
                                    <i class="bi bi-person"></i>
                                    <span>My Profile</span>
                                </a>
                            </li>

                            <li>
                                <hr class="dropdown-divider">
                            </li>

                            <li>
                                <a class="dropdown-item d-flex align-items-center" href="AdminController?page=adminlogin">
                                    <i class="bi bi-box-arrow-right"></i>
                                    <span>Sign Out</span>
                                </a>
                            </li>

                        </ul><!-- End Profile Dropdown Items -->
                    </li><!-- End Profile Nav -->

                </ul>
            </nav><!-- End Icons Navigation -->

        </header><!-- End Header -->

        <!-- ======= Sidebar ======= -->
        <aside id="sidebar" class="sidebar">

            <ul class="sidebar-nav" id="sidebar-nav">

                <li class="nav-item">
                    <a class="nav-link collapsed" href="AdminController?page=dashboard">
                        <i class="bi bi-grid"></i>
                        <span>Dashboard</span>
                    </a>
                </li><!-- End Dashboard Nav -->

                <li class="nav-item">
                    <a class="nav-link " data-bs-target="#components-nav" data-bs-toggle="collapse" href="#">
                        <i class="bi bi-menu-button-wide"></i><span>Product details</span><i
                            class="bi bi-chevron-down ms-auto"></i>
                    </a>
                    <ul id="components-nav" class="nav-content collapse show" data-bs-parent="#sidebar-nav">
                        <li>
                            <a href="AdminController?page=addproduct" class="active">
                                <i class="bi bi-circle"></i><span>Add products</span>
                            </a>
                        </li>
                        <li>
                            <a href="AdminController?page=viewproduct">
                                <i class="bi bi-circle"></i><span>View products</span>
                            </a>
                        </li>
                        <li>
                            <a href="AdminController?page=deleteproduct">
                                <i class="bi bi-circle"></i><span>Delete products</span>
                            </a>
                        </li>

                    </ul>
                </li><!-- End Components Nav -->

                <li class="nav-item">
                    <a class="nav-link collapsed" data-bs-target="#forms-nav" data-bs-toggle="collapse" href="#">
                        <i class="bi bi-journal-text"></i><span>Order details</span><i
                            class="bi bi-chevron-down ms-auto"></i>
                    </a>
                    <ul id="forms-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
                        <li>
                            <a href="AdminController?page=neworder">
                                <i class="bi bi-circle"></i><span>New Orders</span>
                            </a>
                        </li>
                        <li>
                            <a href="AdminController?page=totalorder">
                                <i class="bi bi-circle"></i><span>Total orders</span>
                            </a>
                        </li>

                    </ul>
                </li><!-- End Forms Nav -->

                <li class="nav-item">
                    <a class="nav-link collapsed" href="AdminController?page=customer">
                        <i class="bi bi-journal-text"></i>
                        <span>Customer details</span>
                    </a>
                </li><!-- End Tables Nav -->



                <!-- <li class="nav-heading">Pages</li> -->

                <li class="nav-item">
                    <a class="nav-link collapsed" href="AdminController?page=user_profile">
                        <i class="bi bi-person"></i>
                        <span>Profile</span>
                    </a>
                </li><!-- End Profile Page Nav -->


            </ul>

        </aside><!-- End Sidebar-->

        <main id="main" class="main">

            <div class="pagetitle">
                <h1>Add Product</h1>
                <nav>
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="AdminController?page=dashboard">Home</a></li>
                        <li class="breadcrumb-item">Product</li>
                        <li class="breadcrumb-item active">Add</li>
                    </ol>
                </nav>
            </div><!-- End Page Title -->

            <section class="section">
                <div class="row">
                    <div class="col-lg-6" style="width: 95%;" >

                        <div class="card">
                            <div class="card-body">
                                <h5 class="card-title"> Add product</h5>

                                <!-- Vertical Form -->
                                <form class="row g-3" action="AdminController?page=addedproduct" method="Post">
                                    <div class="col-12">
                                        <label for="inputNanme4" class="form-label">Product Name</label>
                                        <input type="text" class="form-control" id="inputNanme4" name="product_name">
                                    </div>
                                    <div class="col-12">
                                        <label for="inputEmail4" class="form-label">Product Price</label>
                                        <input type="text" class="form-control" id="inputEmail4" name="product_price">
                                    </div>
                                    <div class="col-12">
                                        <label for="inputPassword4" class="form-label">Product Description</label>
                                        <input type="text" class="form-control" id="inputPassword4" name="product_describe" >
                                    </div>
                                    <div class="col-12">
                                        <label for="inputAddress" class="form-label">Category</label>
                                        <select id="inputStatus" class="form-control custom-select" name="product_category">
                                            <option selected disabled>Select one</option>
                                            <option value="features">Featured Product</option>
                                            <option value="best seller">best seller</option>
                                            <option value="Desktop Stationery">Desktop Stationery</option>
                                            <option value="Art supplies">Art supplies</option>
                                            <option value="deals">deals</option>
                                            <option value="combo deals">combo deals</option>
                                            <option value="Student supplies">Student Supplies</option>
                                            <option value="Writing Instrument">Writing Instrument</option>
                                            <option value="Calculators">Calculators</option>
                                            <option value="Paper Products">Paper Products</option>
                                            <option value="Notebooks">Notebooks</option>
                                            <option value="Other">Other</option>
                                        </select>
                                    </div>


                                    <label for="image" class="form-label">Product Image</label>
                                    <input type="file" class="form-control" id="inputPassword4" name="product_image">
                                    <div class="text-center">
                                        <button type="submit" class="btn btn-primary">Submit</button>
                                        <button type="reset" class="btn btn-secondary">Reset</button>
                                    </div>
                                </form>

                            </div>

                        </div>
                    </div>




            </section>

        </main><!-- End #main -->

        <!-- ======= Footer ======= -->
        <footer id="footer" class="footer">
            <div class="copyright">
                &copy; Copyright <strong><span>CRAFTYS</span></strong>. All Rights Reserved
            </div>

        </footer><!-- End Footer -->

        <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i
                class="bi bi-arrow-up-short"></i></a>

        <!-- Vendor JS Files -->
        <script src="CraftysAdmin/assets/vendor/apexcharts/apexcharts.min.js"></script>
        <script src="CraftysAdmin/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
        <script src="CraftysAdmin/assets/vendor/chart.js/chart.umd.js"></script>
        <script src="CraftysAdmin/assets/vendor/echarts/echarts.min.js"></script>
        <script src="CraftysAdmin/assets/vendor/quill/quill.min.js"></script>
        <script src="CraftysAdmin/assets/vendor/simple-datatables/simple-datatables.js"></script>
        <script src="CraftysAdmin/assets/vendor/tinymce/tinymce.min.js"></script>
        <script src="CraftysAdmin/assets/vendor/php-email-form/validate.js"></script>

        <!-- Template Main JS File -->
        <script src="CraftysAdmin/assets/js/main.js"></script>

    </body>

</html>