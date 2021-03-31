



<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>       

<%@ page import="org.json.simple.JSONObject"%>
<%@ page import="org.json.simple.JSONArray"%>

<%
JSONArray list=new JSONArray();
String id,fullname,givenname,familyname,image,email;

id=request.getParameter("id");
fullname=request.getParameter("fullname");
givenname=request.getParameter("givenname");
familyname=request.getParameter("familyname");
image=request.getParameter("image");
email=request.getParameter("email");

%>

   <sql:setDataSource var="snapshot" driver="com.mysql.cj.jdbc.Driver"
     url="jdbc:mysql://localhost:3306/db"
     user="root"  password="mani1234"/>
   <sql:update dataSource = "${snapshot}" var = "count">
            INSERT INTO user VALUES ('<% out.print(id); %>', '<% out.print(fullname); %>', '<% out.print(givenname); %>', '<% out.print(familyname); %>','<% out.print(image); %>','<% out.print(email); %>');
         </sql:update>
            
<% 
                JSONObject obj= new JSONObject();
                obj.put("name","success");
                list.add(obj);
                out.println(list.toJSONString());
                out.flush();
%>