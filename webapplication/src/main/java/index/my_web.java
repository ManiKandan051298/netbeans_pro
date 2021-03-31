/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package index;
import java.sql.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author ELCOT
 */
@WebServlet(name = "my_web", urlPatterns = {"/my_web"})
public class my_web extends HttpServlet {
    
  public static Connection conn;

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ClassNotFoundException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        /* TODO output your page here. You may use following sample code. */
        
        out.println("<!DOCTYPE html>");
        out.println("<html>");
        out.println("<head>");
        out.println("<title>Display Student Details</title>");
        out.println("</head>");
        out.println("<body>");
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/db", "root", "mani1234");
            // Here dsnname- mydsn,user id- system(for oracle 10g),password is pintu.
            Statement stmt = conn.createStatement();
            
        int rollno=Integer.parseInt(request.getParameter("rollno"));
        String name=request.getParameter("name");
        String fathername=request.getParameter("fathername");
        String dob=request.getParameter("date");
            stmt.executeUpdate("insert into student values("+rollno+",'"+name+"','"+fathername+"', '"+dob+"')");
            out.println("<h1>Conection succeed </h1>");
            out.println("<h1>Details </h1>");
            out.println("<h4>Roll NO : "+rollno+"</h4>");
            out.println("<h4>Name : "+name+"</h4>");
            out.println("<h4>Father Name : "+fathername+"</h4>");
            out.println("<h4>DOB  : "+dob+"</h4>");
   try{
      
       Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/db", "root", "mani1234");
            // Here dsnname- mydsn,user id- system(for oracle 10g),password is pintu.
       ResultSet rs=stmt.executeQuery("select * from student where rollno=38");
            
            out.println("<h1>Conection succeed </h1>");
           out.println("<table border=1 width=50% height=50%>");  
             out.println("<tr><th>Rollno</th><th>name</th><th>fathername</th><tr>");  
             while (rs.next()) 
             {  
                 String f = rs.getString("fathername");  
                 String n = rs.getString("name");              
      
                 int r = rs.getInt("rollno");   
                 out.println("<tr><td>" + r + "</td><td>" + n + "</td><td>" + f + "</td></tr>");   
             }  
        }
    catch(SQLException e){
    out.println("<h1>erre</h1>");
    }
            
        }
        catch(SQLException e){
            System.out.println("failed");
            out.println("<h1>"+e+" </h1>");
            
        }
      
    
//        out.println("<form action='mine' method='post'>");
//        out.println("<h4><input name='regno' type='text' placeholder='search reg no'></h4>");
//        out.println("<h4><button type='submit'>submit</button></h4>");
//        out.println("</form>



        out.println("</body>");
        out.println("</html>");
        out.close();
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
      try {
          processRequest(request, response);
      } catch (ClassNotFoundException ex) {
          Logger.getLogger(my_web.class.getName()).log(Level.SEVERE, null, ex);
      }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
      try {
          processRequest(request, response);
      } catch (ClassNotFoundException ex) {
          Logger.getLogger(my_web.class.getName()).log(Level.SEVERE, null, ex);
      }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
