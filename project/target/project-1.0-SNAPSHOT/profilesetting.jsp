
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8"%>
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
 
  
 <sql:setDataSource var="snapshot" driver="com.mysql.cj.jdbc.Driver"
     url="jdbc:mysql://localhost:3306/db"
     user="root"  password="mani1234"/>
     <sql:query dataSource="${snapshot}" var="result">
        SELECT * from pb_signup where email='${email}';
      </sql:query>
    <jsp:include page="navbar.jsp" />  

       <div class="row justify-content-center">
        <div class="col-lg-3 ml-5 mr-3 my-5">
            <div class="container ">
                <ul class=" nav small nav-tabs mt-5 justify-content-center border-0">
                    <li class="nav-item col-md-12">
                        <a class="nav-link text-dark" href="#details" data-toggle="tab" role="tab" aria-controls="home" aria-selected="true">
                            <i class="fa fa-arrow-right" aria-hidden="true"></i> Details
                        </a>
                    </li>
                    <li class="nav-item col-md-12">
                        <a class="nav-link text-dark" href="#edeliverydetails" data-toggle="tab">
                            <i class="fa fa-arrow-right" aria-hidden="true"></i> Edit Delivery Details
                        </a>
                    </li>
                    <li class="nav-item col-md-12">
                        <a class="nav-link text-dark" href="#mail" data-toggle="tab">
                            <i class="fa fa-arrow-right" aria-hidden="true"></i> Change User Name
                        </a>
                    </li>
                    <li class="nav-item col-md-12">
                        <a class="nav-link text-dark" href="#ph" data-toggle="tab">
                            <i class="fa fa-arrow-right" aria-hidden="true"></i> Change Contact No
                        </a>
                    </li>


                </ul>
            </div>
        </div>
        <div class="col-lg-6 ">

            <div class="  mr-4  my-5 justify-content-center ">
                <h1 class="h3 border-bottom border-primary text-center "> <i class="fa fa-search" aria-hidden="true"></i> Profile settings</h1>
                <div class="tab-content profile-tab " id="myTabContent">
                    
                                   <c:forEach var="row" items="${result.rows}">

                    <div class="tab-pane" id="details" role="tabpanel" aria-labelledby="home-tab">
                        <div class="container p-3 mx-4">
                            <div class="row ">
                                <div class="mb-3 col-md-6">
                                    <span class=""><i class="fa fa-user "></i> 
                                                        Your name:    <br>                                                </span>
                                </div>
                                <div class=" col-md-6">
                                    <span class="border-bottom border-info">
                                                         <c:out value="${row.name}"/><br>
                                </div>
                                <div class="mb-3 col-md-6">
                                    <span class=""><i class="fa fa-address-book" aria-hidden="true"></i>
                                                        Your Address:    <br>                                                </span>
                                </div>
                                <div class=" col-md-6">
                                    <span class="border-bottom border-info">
                                                         <c:out value="${row.doorno}"/>  <c:out value="${row.streetname}"/>  <c:out value="${row.areaname}"/>  <c:out value="${row.pincode}"/><br>
                                </div>
                                <div class="mb-3 col-md-6">
                                    <span class=""><i class="fa fa-phone" aria-hidden="true"></i>
                                                        Your Contact Number:    <br>                                                </span>
                                </div>
                                <div class=" col-md-6">
                                    <span class="border-bottom border-info">
                                                         <c:out value="${row.phoneno}"/><br>
                                </div>
                                <div class="mb-3 col-md-6">
                                    <span class=""><i class="fa fa-envelope" aria-hidden="true"></i>
                                                        Your Mail id:    <br>                                                </span>
                                </div>
                                <div class=" col-md-6">
                                    <span class="border-bottom border-info">
                                                         <c:out value="${row.email}"/><br>
                                </div>

                            
                              
                                <div class=" col-md-4 text-center">
                                    <a class="btn-sm text-light font-weight-bold btn-success" href="index.jsp" role="button" style="text-decoration:none;">
                                                            Home
                                                    </a>
                                </div>

                            </div>
                        </div>
                    </div>
                                       
                                       </c:forEach>
                    <div class="tab-pane" id="edeliverydetails" role="tabpanel" aria-labelledby="home-tab">
                                <c:forEach var="row" items="${result.rows}">
                                                            <form action="profileupdate?u=case1&email=<c:out value="${row.email}"/>" method="POST">

                        <div class="container row my-2">
                                <div class="input-group col-md-5  border-bottom  mx-2 mt-5">
                                    <div class="input-group-prepend text-center">
                                        <span class="input-group-text border-0 " id="my-addon"><i class="fa fa-street-view" aria-hidden="true"></i></span>
                                </div>
                                <input class="form-control form-control-sm border-0 bg-light" type="text" name="doorno" placeholder="DOOR NO" aria-label="Recipient's " value="<c:out value="${row.doorno}"/>" aria-describedby="my-addon">
                            </div>
                            <div class="input-group col-md-5 border-bottom  mx-2 mt-5">
                                <div class="input-group-prepend text-center">
                                    <span class="input-group-text border-0 bg-light" id="my-addon"><i class="fas fa-child"></i></span>
                                </div>
                                <input  value="  <c:out value="${row.streetname}"/>" class="form-control form-control-sm border-0 bg-light text-info" type="text" name="streetname" placeholder="Street Name" aria-label="Recipient's " aria-describedby="my-addon">
                            </div>
                        </div>
                        <div class="container row my-2">
                            <div class="input-group col-md-5  border-bottom  mx-2 mt-5">
                                <div class="input-group-prepend text-center">
                                    <span class="input-group-text border-0 " id="my-addon"><i class="fa fa-street-view" aria-hidden="true"></i></span>
                                </div>
                                <input  value="  <c:out value="${row.areaname}"/>" class="form-control form-control-sm border-0 bg-light" type="text" name="areaname" placeholder="Area Name" aria-label="Recipient's " aria-describedby="my-addon">
                            </div>
                            <div class="input-group col-md-5  border-bottom  mx-2 mt-5">
                                <div class="input-group-prepend text-center">
                                    <span class="input-group-text border-0 " id="my-addon"><i class="fa fa-street-view" aria-hidden="true"></i></span>
                                </div>
                                <input  value="  <c:out value="${row.pincode}"/>" class="form-control form-control-sm border-0 bg-light" type="number" name="pincode" placeholder="pincode" aria-label="Recipient's " aria-describedby="my-addon">
                            </div>

                        </div>
                        <div class="container row my-2">
                            <div class="input-group col-md-5  border-bottom  mx-2 mt-5">
                                <div class="input-group-prepend text-center">
                                    <span class="input-group-text border-0 " id="my-addon"><i class="fa fa-street-view" aria-hidden="true"></i></span>
                                </div>
                                <input  value="  <c:out value="${row.landmark}"/>" class="form-control form-control-sm border-0 bg-light" type="text" name="landmark" placeholder="Land Mark" aria-label="Recipient's " aria-describedby="my-addon">
                            </div>
                            <div class="input-group col-md-5  border-bottom  mx-2 mt-5">
                                <div class="input-group-prepend text-center">
                                    <span class="input-group-text border-0 " id="my-addon"><i class="fa fa-phone-square" aria-hidden="true"></i></span>
                                </div>
                                <input  value="  <c:out value="${row.phoneno}"/>" class="form-control form-control-sm border-0 bg-light" type="number" name="phoneno" placeholder="Contact Number" aria-label="Recipient's " aria-describedby="my-addon">
                            </div>

                        </div>


                        <div class="container row col-md-10 my-2 text-center justify-content-center">
                                                        <input class="border-0 col-md-3 btn-sm text-light font-weight-bold my-4 mx-4 text-center justify-comtent-right btn-secondary" style="text-decoration: none;border-radius:2em;" type="reset" value="Clear">

                            <input class="border-0 col-md-3 btn-sm text-light font-weight-bold my-4 mx-4 text-center justify-comtent-right btn-warning" style="text-decoration: none;border-radius:2em;" type="submit" value="Update">
                        </div>
                        </form>
                    </div>
                                </c:forEach>
                       <c:forEach var="row" items="${result.rows}">
                    <div class="tab-pane" id="mail" role="tabpanel" aria-labelledby="home-tab">
                        <form action="profileupdate?u=case2&email=<c:out value="${row.email}"/>" method="POST">
                            <div class="container row my-2">
                                <div class="input-group col border-bottom  mx-2 mt-5">
                                    <div class="input-group-prepend text-center">
                                        <span class="input-group-text border-0 " id="my-addon"><i class="fa fa-envelope" aria-hidden="true"></i></span>
                                    </div>
                                    <input class="form-control form-control-sm border-0 bg-light" type="text" required name="name" value=" <c:out value="${row.name}"/>" placeholder="Email" aria-label="Recipient's " aria-describedby="my-addon">
                                </div>
                            </div>
                            <div class="container row my-2">
                                <div class="input-group col border-bottom  mx-2 mt-5">
                                    <div class="input-group-prepend text-center">
                                        <span class="input-group-text border-0 " id="my-addon"><i class="fa fa-envelope-o" aria-hidden="true"></i></span>
                                    </div>
                                    <input class="form-control form-control-sm border-0 bg-light" type="text" required name="newname" placeholder="please enter new  User Name" aria-label="Recipient's " aria-describedby="my-addon">
                                </div>

                            </div>
                            <div class="container row col-md-10 my-2 text-center justify-content-center">
                                                            <input class="border-0 col-md-3 btn-sm text-light font-weight-bold my-4 mx-4 text-center justify-comtent-right btn-secondary" style="text-decoration: none;border-radius:2em;" type="reset" value="Clear">

                            <input class="border-0 col-md-3 btn-sm text-light font-weight-bold my-4 mx-4 text-center justify-comtent-right btn-warning" style="text-decoration: none;border-radius:2em;" type="submit" value="Update">
                         </div>

                        </form>
                    </div>
                      </c:forEach>
                     <c:forEach var="row" items="${result.rows}">
                    <div class="tab-pane" id="ph" role="tabpanel" aria-labelledby="home-tab">
                        <form action="profileupdate?u=case3&email=<c:out value="${row.email}"/>" method="POST">
                            <div class="container row my-2">
                                <div class="input-group col border-bottom  mx-2 mt-5">
                                    <div class="input-group-prepend text-center">
                                        <span class="input-group-text border-0 " id="my-addon"><i class="fa fa-envelope" aria-hidden="true"></i></span>
                                    </div>
                                    <input value=" <c:out value="${row.phoneno}"/>" class="form-control form-control-sm border-0 bg-light" type="number" required name="name" placeholder="Enter new Phone number " aria-label="Recipient's " aria-describedby="my-addon">
                                </div>
                            </div>
                            <div class="container row my-2">
                                <div class="input-group col border-bottom  mx-2 mt-5">
                                    <div class="input-group-prepend text-center">
                                        <span class="input-group-text border-0 " id="my-addon"><i class="fa fa-envelope-o" aria-hidden="true"></i></span>
                                    </div>
                                    <input class="form-control form-control-sm border-0 bg-light" type="number" required name="newphoneno" placeholder="enter new  phone number" aria-label="Recipient's " aria-describedby="my-addon">
                                </div>

                            </div>

                            <div class="container row col-md-10 my-2 text-center justify-content-center">
                                 <input class="border-0 col-md-3 btn-sm text-light font-weight-bold my-4 mx-4 text-center justify-comtent-right btn-secondary" style="text-decoration: none;border-radius:2em;" type="reset" value="Clear">

                            <input class="border-0 col-md-3 btn-sm text-light font-weight-bold my-4 mx-4 text-center justify-comtent-right btn-warning" style="text-decoration: none;border-radius:2em;" type="submit" value="Update">
                                                  </div>
                        </form>
                    </div>
 </c:forEach>
                </div>
            </div>
        </div>
    </div>


 <jsp:include page="footer.jsp" />  
    <!-- end of footer -->
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>

</html>