
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
        SELECT * from myorder where email ='${email}' order by date desc ;
      </sql:query>
  
    <jsp:include page="navbar.jsp" />  

      <div class="container my-5">
     <table class="table">
  <thead>
    <tr>

      <th scope="col">Book Name</th>
      <th scope="col">Date</th>
      <th scope="col">Amount</th>
        <th scope="col">Updates</th>
   
    </tr>
  </thead>
  <tbody>
       <c:forEach var="row" items="${result.rows}">
    <tr>
     
      <td> <c:out value="${row.title}"/></td>
      <td> <c:out value="${row.date}"/></td>
      <td> <c:out value="${row.price}"/></td>
            <td> <c:out value="${row.updates}"/></td>

    </tr>
         </c:forEach>
  </tbody>
</table>
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