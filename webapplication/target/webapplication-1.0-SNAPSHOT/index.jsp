<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Student Details</title>
    </head>
    <body>
        <h1 style="color:red;">Student Details..</h1>
        <form action="my_web" method="post">
            <h3>Roll Number:
            <input type="text" name="rollno" placeholder="Enter Your Roll Number"></h3><br><br>
            <input type="text" name="name" placeholder="Enter Your name">
            <br><br>
            <input type="text" name="fathername" placeholder="Enter Your Father name"><br><br>
            <input type="date" name="date"><br><br>
    
            <button type="submit">submit</button>
        </form>
    </body>
</html>
