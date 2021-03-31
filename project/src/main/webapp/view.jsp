<!doctype html>
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

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>

<body>

    <!-- Navbar -->
    <jsp:include page="navbar.jsp" />  
  
    <% String q=request.getParameter("q"); %>
     <sql:setDataSource var="snapshot" driver="com.mysql.cj.jdbc.Driver"
     url="jdbc:mysql://localhost:3306/db"
     user="root"  password="mani1234"/>
      <sql:query dataSource="${snapshot}" var="result">
        SELECT * from backup where id= '<% out.print(q); %>';
      </sql:query>
          <c:forEach var="row" items="${result.rows}">
        
    <div class="container my-5">
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="index.jsp">Home</a></li>
                <li class="breadcrumb-item active" aria-current="page"><a href="index.jsp">Books</a></li>
                <li class="breadcrumb-item active" aria-current="page"><c:out value="${row.title}"/></li>
            </ol>
        </nav>
        <div class="row mt-5 ">
            <div class="col-lg-6  text-center bg-secondary">
                <img class="my-5" src=" <c:out value="${row.image}"/>" height="300px" >
            </div>
            <div class="col-lg-6 ">

                <div class="row justify-content-center">
                    <div class="col-lg-4 mt-5 ">
                        <p type="button" name="" id="" class=" text-center   ">Condition : <c:out value="${row.bookcondition}"/></p>
                    </div>
                </div>
                <div class="row justify-content-center">
                    <div class="col-lg-4 ">
                        <p type="button" name="" id="" class="   text-center">Page missing :  <c:out value="${row.pagemissing}"/></p>
                    </div>
                </div>
                <div class="row justify-content-center">
                    <div class="col-lg-4 ">
                        <p type="button" name="" id="" class="  text-center ">Original Price</p>
                    </div>
                </div>
                <div class="row justify-content-center">
                    <div class="col-lg-4 ">
                        <p class="text-center " style="text-decoration: line-through;">&#x20B9;  <c:out value="${row.originalprice}"/></p>
                    </div>
                </div>
                <div class="row justify-content-center">
                    <div class="col-lg-4 ">
                        <p type="button" name="" id="" class="  text-center ">Offer Price</p>
                    </div>
                </div>
                <div class="row justify-content-center">
                    <div class="col-lg-4 ">
                        <p class="text-center ">&#x20B9;  <c:out value="${row.price}"/></p>
                    </div>
                </div>
            </div>
        </div>

        <div class="row ">

            <div class="col-lg-6">
                <p class="h4 mt-5">  <c:out value="${row.title}"/></p>
                <p class="h5 mt-5">  <c:out value="${row.author}"/></p>
                <p class="">  <c:out value="${row.description}"/></p>

                <div class="row justify-content-center">
                    <p class="col-lg-4"> <a  name="" id="" href="cartadd?id=<c:out value="${row.id}"/>&email=${email}" class="btn btn-success  btn-block"><i class="fa fa-cart-plus mr-2" aria-hidden="true"></i>add to cart </a>
                    </p>     
                </div>



            </div>
            <div class="col-lg-6 text-center bg-secondary">
                <p class="text-left mx-5 h2">Original Images</p>
                <img class="mb-5" src=" <c:out value="${row.pimage001}"/>">
                <img class="mb-5" src=" <c:out value="${row.pimage002}"/>">
                <img class="mb-5" src=" <c:out value="${row.pimage003}"/>">

            </div>
        </div>
    </div>
</c:forEach>

    <!-- End Navbar -->
<jsp:include page="footer.jsp" />  

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>

</html>