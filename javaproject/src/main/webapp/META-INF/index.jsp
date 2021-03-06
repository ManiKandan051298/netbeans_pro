<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html lang="en">

<head>
    <title>Title</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <!-- Bootstrap CSS -->
    <a href="https://mdbootstrap.com/docs/jquery/components/dropdowns/" target="_blank"></a>

    <script src="script.js"></script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>

<body>

    <!-- Navbar -->
    <nav class="navbar navbar-top navbar-expand-md navbar-dark bg-primary" id="">
        <div class="container-fluid">
            <a class="navbar-brand text-white">
                <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcROpOeObfCY7uDG2q4Dqum7wQPVxrJ3KPFDSA&usqp=CAU" width="30" height="30" class="d-inline-block align-top" alt=""> PURPLE BOOKS
            </a>
            <!-- User -->
            <ul class="navbar-nav align-items-center d-none d-md-flex">
                <li class="nav-item active">
                    <a class="nav-link" href="index.html"><i class="fa fa-home mx-2" aria-hidden="true"></i>Home <span class="sr-only">(current)</span></a>
                </li>
                <li>

                    <div class="dropdown">
                        <button class="btn btn-primary " type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <i class="fa fa-caret-square-o-down mx-2" aria-hidden="true"></i> Category     </button>
                        <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                            <a class="dropdown-item" href="tamil.html">Tamil</a>

                            <a class="dropdown-item" href="novel.html">Novel</a>
                            <a class="dropdown-item" href="selfdevlopment.html">Self Development</a>
                            <a class="dropdown-item" href="engineering.html">Engineering</a>


                        </div>
                    </div>
                </li>

                <li class="nav-item active">
                    <a class="nav-link" href="cart.html"><i class="fa fa-cart-plus mr-2" aria-hidden="true"></i> Cart </a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link pr-0" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <div class="media align-items-center mr-2">
                            <span class="avatar avatar-sm rounded-circle">
                  <img alt="Image placeholder" width="30px" height="30px" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcROpOeObfCY7uDG2q4Dqum7wQPVxrJ3KPFDSA&usqp=CAU">
                </span>

                        </div>
                    </a>
                    <div class="dropdown-menu dropdown-menu-arrow dropdown-menu-right">
                        <div class=" dropdown-header noti-title">
                            <h6 class="text-overflow m-0"></h6>
                        </div>
                        <p class="dropdown-item">
                            <i class="fa fa-user-circle mr-2" aria-hidden="true"></i>
                            <span>          
                      pb
                </span>
                        </p>
                        <p class="dropdown-item"><i class="fa fa-envelope mr-2" aria-hidden="true"></i>
                            <span>  pb_name</span>
                        </p>
                        <a class="dropdown-item" href="profilesetting.html">
                            <i class="fa fa-play-circle-o mr-2" aria-hidden="true"></i> <span>Profile setting</span>
                        </a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="myorder.html">
                            <i class="fa fa-first-order mr-2" aria-hidden="true"></i> <span>My Order</span>
                        </a>
                        <a class="dropdown-item" href="login.html">
                            <i class="fa fa-long-arrow-left mr-2" aria-hidden="true"></i> <span>Logout</span>
                        </a>
                    </div>
                </li>
            </ul>
        </div>
    </nav>

    <div class="container my-5">
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="#">Home</a></li>
                <li class="breadcrumb-item active" aria-current="page">Library</li>
            </ol>
        </nav>
        <div class="row ">
            <div class="col-lg-4  mb-5 col-md-6 col-sm-12">
                <a href="" style="text-decoration: none;" class="text-dark">
                    <div class="card " style="width: 18rem;">
                        <img class="card-img-top" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTg8EDPzvhc3UYPVNxqssNW4_twB2y8zD5wTQ&usqp=CAU" height="150px" width="200px" alt="Card image cap">
                        <div class="card-body text-center text-uppercase">
                            <small class="text-muted  ">AUTHOR NAMe</small>
                            <h5 class="card-title mt-2">Book name </h5>
                            <p class="card-text " style="text-decoration: line-through;">&#x20B9; 444</p>
                            <p class="card-text ">&#x20B9; 200</p>
                        </div>
                        <div class="card-footer">
                            <div class="row">
                                <div class="col">
                                    <a type="button" name="" href="view.html" id="" class="btn btn-primary btn-block"><i class="fa fa-street-view mr-2" aria-hidden="true"></i> View </a>
                                </div>
                                <div class="col">

                                    <button type="button" onclick="cartadd()" name="" id="" class="btn btn-success  btn-block"><i class="fa fa-cart-plus mr-2" aria-hidden="true"></i>cart </button>
                                </div>

                            </div>
                        </div>
                    </div>
                </a>
            </div>
            <div class="col-lg-4  mb-5 col-md-6 col-sm-12">
                <a href="" style="text-decoration: none;" class="text-dark">
                    <div class="card " style="width: 18rem;">
                        <img class="card-img-top" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTg8EDPzvhc3UYPVNxqssNW4_twB2y8zD5wTQ&usqp=CAU" height="150px" width="200px" alt="Card image cap">
                        <div class="card-body text-center text-uppercase">
                            <small class="text-muted  ">AUTHOR NAMe</small>
                            <h5 class="card-title mt-2">Book name </h5>
                            <p class="card-text " style="text-decoration: line-through;">&#x20B9; 444</p>
                            <p class="card-text ">&#x20B9; 200</p>
                        </div>
                        <div class="card-footer">
                            <div class="row">
                                <div class="col">
                                    <a type="button" name="" href="view.html" id="" class="btn btn-primary btn-block"><i class="fa fa-street-view mr-2" aria-hidden="true"></i> View </a>
                                </div>
                                <div class="col">

                                    <button type="button" onclick="cartadd()" name="" id="" class="btn btn-success  btn-block"><i class="fa fa-cart-plus mr-2" aria-hidden="true"></i>cart </button>
                                </div>

                            </div>
                        </div>
                    </div>
                </a>
            </div>
            <div class="col-lg-4  mb-5 col-md-6 col-sm-12">
                <a href="" style="text-decoration: none;" class="text-dark">
                    <div class="card " style="width: 18rem;">
                        <img class="card-img-top" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTg8EDPzvhc3UYPVNxqssNW4_twB2y8zD5wTQ&usqp=CAU" height="150px" width="200px" alt="Card image cap">
                        <div class="card-body text-center text-uppercase">
                            <small class="text-muted  ">AUTHOR NAMe</small>
                            <h5 class="card-title mt-2">Book name </h5>
                            <p class="card-text " style="text-decoration: line-through;">&#x20B9; 444</p>
                            <p class="card-text ">&#x20B9; 200</p>
                        </div>
                        <div class="card-footer">
                            <div class="row">
                                <div class="col">
                                    <a type="button" name="" href="view.html" id="" class="btn btn-primary btn-block"><i class="fa fa-street-view mr-2" aria-hidden="true"></i> View </a>
                                </div>
                                <div class="col">

                                    <button type="button" onclick="cartadd()" name="" id="" class="btn btn-success  btn-block"><i class="fa fa-cart-plus mr-2" aria-hidden="true"></i>cart </button>
                                </div>

                            </div>
                        </div>
                    </div>
                </a>
            </div>
            <div class="col-lg-4  mb-5 col-md-6 col-sm-12">
                <a href="" style="text-decoration: none;" class="text-dark">
                    <div class="card " style="width: 18rem;">
                        <img class="card-img-top" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTg8EDPzvhc3UYPVNxqssNW4_twB2y8zD5wTQ&usqp=CAU" height="150px" width="200px" alt="Card image cap">
                        <div class="card-body text-center text-uppercase">
                            <small class="text-muted  ">AUTHOR NAMe</small>
                            <h5 class="card-title mt-2">Book name </h5>
                            <p class="card-text " style="text-decoration: line-through;">&#x20B9; 444</p>
                            <p class="card-text ">&#x20B9; 200</p>
                        </div>
                        <div class="card-footer">
                            <div class="row">
                                <div class="col">
                                    <a type="button" name="" href="view.html" id="" class="btn btn-primary btn-block"><i class="fa fa-street-view mr-2" aria-hidden="true"></i> View </a>
                                </div>
                                <div class="col">

                                    <button type="button" onclick="cartadd()" name="" id="" class="btn btn-success  btn-block"><i class="fa fa-cart-plus mr-2" aria-hidden="true"></i>cart </button>
                                </div>

                            </div>
                        </div>
                    </div>
                </a>
            </div>
        </div>

    </div>


    <!-- End Navbar -->

    <!-- footer -->
    <footer class="bg-primary">
        <div class="container">
            <div class="row ">
                <div class="col-md-4 text-center text-md-left ">

                    <div class="py-0">
                        <h3 class="my-4 text-white">About<span class="mx-2 font-italic text-warning ">Purple Books</span></h3>

                        <p class="footer-links font-weight-bold">
                            <a class="text-white" href="index.html">Home</a> |
                            <a class="text-white" href="#dropdownMenuButton">Category</a> |
                            <a class="text-white" href="cart.html">Cart</a> |
                            <a class="text-white" href="#">Contact</a>
                        </p>
                        <p class="text-light py-4 mb-4">&copy;2020 Purple Books Pvt. Ltd.</p>
                    </div>
                </div>

                <div class="col-md-4 text-white text-center text-md-left ">
                    <div class="py-2 my-4">
                        <div>
                            <p class="text-white"> <i class="fa fa-map-marker mx-2 "></i> 309, A - 1, 1st main road, Moolakadai Chennai - 400710</p>
                        </div>

                        <div>
                            <p><i class="fa fa-phone  mx-2 "></i> +91 86670 34067</p>
                        </div>
                        <div>
                            <p><i class="fa fa-envelope  mx-2"></i><a href="purplebookspvt.ltd@gmail.com" class="text-white">purplebookspvt.ltd@gmail.com</a></p>
                        </div>
                    </div>
                </div>

                <div class="col-md-4 text-white my-4 text-center text-md-left ">
                    <span class=" font-weight-bold ">About the Company</span>
                    <p class="text-warning my-2">We offer Books at low cost, as soon as possible, and good quality.</p>
                    <a class="text-warning my-2" target="_blank" href="https://play.google.com/store/apps/details?id=com.purplebookspvtltd.org&hl=en_IN&gl=US"> Mobile application also..</a>

                    <div class="py-2">
                        <a href="#"><i class="fa fa-facebook fa-2x text-light mx-3"></i></a>
                        <a href="#"><i class="fa fa-google-plus fa-2x text-success mx-3"></i></a>
                        <a href="#"><i class="fa fa-twitter fa-2x text-info mx-3"></i></a>
                        <a href="#"><i class="fa fa-youtube fa-2x text-danger mx-3"></i></a>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- end of footer -->
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>

</html>