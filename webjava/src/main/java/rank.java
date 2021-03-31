/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.annotation.WebServlet;

/**
 *
 * @author manikandan
 */
@WebServlet(urlPatterns = {"/rank"})
public class rank extends HttpServlet {

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
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {           
             try{
                Connection con = (Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/db","root","mani1234");
                Statement stmt=con.createStatement(); 
                 System.out.println("connected"); 
                 String str="select * from student_college order by percent desc";
                   ResultSet rs= stmt.executeQuery(str);  
            out.println("<!DOCTYPE html>");                 
            out.println("<html>");   
            out.println("<head>");
            out.println("<title>StudentDetails</title>");  
            out.println("</head>");    
            out.println("<body style='text-center;'>");
            int rank=1;
              out.println("<h1>student list </h1>");
              
               while(rs.next()){
//                   out.println();
             String s="<br><p>  "+ rank +"      "+rs.getString("applicationid") ;
             s+="              "+rs.getString("name");
             s+="      "+rs.getString("gender");             
             s+="        "+rs.getString("dob");
             s+="       "+rs.getString("percent")+"</p>";    
             out.println(s);
             rank+=1;
                }
        }catch(Exception e){
            System.out.println("Error"+e);
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
