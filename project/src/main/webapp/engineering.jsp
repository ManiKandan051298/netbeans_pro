
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
        SELECT * from backup limit 3;
      </sql:query>
  

    <jsp:include page="navbar.jsp" />  

    <div class="container my-5">
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="index.jsp">Home</a></li>
                <li class="breadcrumb-item active" aria-current="page">Engineering</li>
            </ol>
        </nav>
      <div class="row ">
               <c:forEach var="row" items="${result.rows}">
            
            <div class="col-lg-4  mb-5 col-md-6 col-sm-12">
                <a href="" style="text-decoration: none;" class="text-dark">
                    <div class="card " style="width: 18rem;">
                        <img class="card-img-top" src='<c:out value="${row.image}"/>' height="250px" width="200px" alt="Card image cap">
                        <div class="card-body text-center text-uppercase">
                            <small class="text-muted  "><c:out value="${row.author}"/></small>
                            <h5 class="card-title mt-2"><c:out value="${row.title}"/></h5>
                            <p class="card-text " style="text-decoration: line-through;">&#x20B9; <c:out value="${row.originalprice}"/></p>
                            <p class="card-text ">&#x20B9; <c:out value="${row.price}"/></p>
                        </div>
                        <div class="card-footer">
                            <div class="row">
                                <div class="col">
                                    
<!--                                    <form action="view.jsp" method="get">
                                        
                                        <button type="submit">submit</button>
                                    </form>-->
                                    <a type="button" name="" href="view.jsp?q=<c:out value="${row.id}"/>" id="" class="btn btn-primary btn-block"><i class="fa fa-street-view mr-2" aria-hidden="true"></i> View </a>
                                </div>
                                <div class="col">

                                    <a type="button" onclick="cartadd()" href="cartadd?id=<c:out value="${row.id}"/>&email=${email}"  name="" id="" class="btn btn-success  btn-block"><i class="fa fa-cart-plus mr-2" aria-hidden="true"></i>cart </a>
                                </div>

                            </div>
                        </div>
                    </div>
                </a>
            </div>
            </c:forEach>
          <!--row-->  
        </div>

    </div>


    <!-- End Navbar -->

 <jsp:include page="footer.jsp" />  
    <!-- end of footer -->
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>

</html>