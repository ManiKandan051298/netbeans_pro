<%-- 
    Document   : newjsp
    Created on : 24 Oct, 2020, 6:42:29 PM
    Author     : ELCOT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
  <head>
    <title>web - student </title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <!--<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">-->
  </head>
  <body style="background-color:whitesmoke;">
      <div class="container my-5" style="width:400px;">
        <h1>ANNA UNIVERSITY</h1>
      </div>
    <div class="container" style="width:800px;">

    <div class="container">
    <div class="border-0 ">

        <ul class=" nav nav-justified justify-content-center md-tabs cyan" role="tablist">
            <li class="nav-item container grn">
                <a class="nav-link active font-weight-bold" id="tab_login" style="text-decoration: none;" data-toggle="tab" href="#login" role="tab">
                   
<button type="button" class="btn btn-primary">Enter Student Details</button>
                   
                </a>
            </li>
            <li class="nav-item container rd">
                <a class="nav-link font-weight-bold" id="tab_signup" data-toggle="tab" style="text-decoration: none;" href="#signup" role="tab">
                                   
<button type="button" class="btn btn-primary">View Student Details</button>
                   
                </a>
            </li>
        </ul>
        <div class="tab-content white" id="myClassicTabContent">

            <div class="tab-pane fade active show" id="login" role="tabpanel" aria-labelledby="follow-tab-classic">

                <div class="container col-sm-12 col-md-10 ">

                     <form action="student_detailss" method="post">
                        <div class="form-group">
                            <label for="exampleInputEmail1">Application Number</label>
                            <input required type="number" name="applicationid" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter app no: ">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputPassword1">Enter Your Name</label>
                            <input type="text" required class="form-control" id="exampleInputPassword1" name="name" placeholder="Your name">
                        </div>
                            <div class="form-group">
                            <label for="exampleInputPassword1">Enter Your Gender</label>
                            <input type="text" required class="form-control" id="exampleInputPassword1" name="gender" placeholder="Enter your gender">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputPassword1">Enter Your date of birth</label>
                            <input type="date" required class="form-control" name="dob" id="exampleInputPassword1">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputPassword1">Enter Your Percentage</label>
                            <input type="number" required class="form-control" name="percent" id="exampleInputPassword1" placeholder="Enter the percentage">
                        </div>
                        <button type="reset" class=" mx-5 btn mb-5 btn-warning">Clear</button>

                        <button type="submit" class=" mx-5 mb-5 btn btn-primary">Submit</button>
                    </form>
 
                   
                </div>
                
            </div>

            <div class="tab-pane fade " id="signup" role="tabpanel" aria-labelledby="profile-tab-classic">
   <form action="student" method="post">
                <div id="signup-form">

                    <div class="container col-sm-12 col-md-10 py-5">
                        <form action="student_details" method="post">
                     
                       

                        <div class="mb-3 btns my-5 text-right">
                            <button  type="submit" class="btn btn-success ml-5">Search</button>
                          
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