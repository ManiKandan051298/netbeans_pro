/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package index;

import static index.my_web.conn;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author ELCOT
 */
@WebServlet(name = "mine", urlPatterns = {"/mine"})
public class mine extends HttpServlet {

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
        out.println("<html><body>");  
            /* TODO output your page here. You may use following sample code. */
                String rollno=(request.getParameter("regno"));
   try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/db", "root", "mani1234");
            // Here dsnname- mydsn,user id- system(for oracle 10g),password is pintu.
            Statement stmt = conn.createStatement();
             ResultSet rs=stmt.executeQuery("select * from student ");
            
            out.println("<h1>Conection succeed </h1>");
           out.println("<table border=1 width=50% height=50%>");  
             out.println("<tr><th>Rollno</th><th>name</th><th>fathername</th><tr>");  
             while (rs.next()) 
             {  
                 String fathername = rs.getString("fathername");  
                 String name = rs.getString("name");              
      
                 int rollno = rs.getInt("rollno");   
                 out.println("<tr><td>" + rollno + "</td><td>" + name + "</td><td>" + fathername + "</td></tr>");   
             }  
             out.println("</table>");  
             out.println("</html></body>"); 
        }
        catch(SQLException e){
            System.out.println("failed");
            out.println("<h1>"+e+" </h1>");
            
        }
          
        } 
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
        processRequest(request, response);
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
        processRequest(request, response);
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
