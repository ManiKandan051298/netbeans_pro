<html lang="en">

<head>
    <title>purple books </title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>

<body style="background-color:whitesmoke;">
    <div class="container my-5" style="width:400px;">
        <h3 align="center">
            PURPLE BOOKS</h3>
        <h3 align="center"> <img class="mx-5" src="https://play-lh.googleusercontent.com/lLq3GAjkvBcc2JzviO6W3GFKi6Gd5qYFmkBEQbbGP9QL9eSlMJXmA51qQdjAVY-jVRB2=s180-rw" class="img-fluid" alt="">
        </h3>
    </div>
     <div class="container mt-5" style="width:500px;">
        <p class="text-center text-success ">${msg}</p>
        <p class="text-center text-danger ">${msg_err}</p>
      </div>
    <div class="container">

        <div class="container" style="width: 400px;">
            <div class="border-0 ">
                <ul class=" nav nav-justified justify-content-center md-tabs cyan" role="tablist">
                    <li class="nav-item container grn">
                        <a class="nav-link active font-weight-bold" id="tab_login" style="text-decoration: none;" data-toggle="tab" href="#reg" role="tab">

                            <button type="button" class="btn btn-primary">LogIN</button>

                        </a>
                    </li>
                    <li class="nav-item container rd">
                        <a class="nav-link font-weight-bold" id="tab_signup" data-toggle="tab" style="text-decoration: none;" href="#rank" role="tab">

                            <button type="button" class="btn btn-success">Signup</button>

                        </a>
                    </li>
                </ul>
            </div>
            <div class="tab-content white" id="myClassicTabContent">

                <div class="tab-pane fade active show" id="reg" role="tabpanel" aria-labelledby="follow-tab-classic">

                    <div class="container col-sm-12 col-md-10 ">

                        <form action="login1" method="POST">
                            <div class="form-group">
                                <label for="exampleInputEmail1">Enter your Email ID:</label>
                                <input required type="email" required name="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter Your Email id">
                            </div>
                            <div class="form-group">
                                <label for="exampleInputPassword1">Enter Your Password</label>
                                <input type="password" required class="form-control" id="exampleInputPassword1" name="password" placeholder="Password">
                            </div>

                            <div class="text-center">
                                <button type="reset" class="btn mb-5 btn-secondary">Clear</button>
                                <button type="submit" class="mb-5 btn btn-success">LogIN</button>
                            </div>
                        </form>


                    </div>

                </div>
                <div class="tab-pane fade " id="rank" role="tabpanel" aria-labelledby="profile-tab-classic">

                    <form action="signupsignup" method="POST">
                        <div class="form-group">
                            <input required type="email" required name="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter Your Email id">
                        </div>
                        <div class="form-group">
                            <input required type="text" name="name" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter Your Name">
                        </div>
                        <div class="form-group">
                            <input required type="number" name="phoneno" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter Your Contact NUmber">
                        </div>
                        <div class="form-group">
                            <input required type="number" name="doorno" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter Your Door NO">
                        </div>
                        <div class="form-group">
                            <input required type="text" name="streetname" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter Your Stree Name">
                        </div>
                        <div class="form-group">
                            <input required type="text" name="areaname" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter Your Area Name">
                        </div>
                        <div class="form-group">
                            <input required type="text" name="landmark" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter Your Landmark">
                        </div>
                        <div class="form-group">
                            <input required type="number" name="pincode" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter Your pincode">
                        </div>



                        <div class="form-group">
                            <input type="password" required class="form-control" id="exampleInputPassword1" name="password" placeholder="Password">
                        </div>
                        <div class="form-group">
                            <input type="password" required class="form-control" id="exampleInputPassword1" name="cpassword" placeholder="Confirm Password">
                        </div>

                        <div class="text-center">
                            <button type="reset" class="btn mb-5 btn-secondary">Clear</button>
                            <button type="submit" class="mb-5 btn btn-success">SignUP</button>
                        </div>
                    </form>
                </div>

            </div>
        </div>
    </div>
    </div>
    </div>

    </div>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>

</html>