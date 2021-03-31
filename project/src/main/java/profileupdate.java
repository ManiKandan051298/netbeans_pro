/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
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
@WebServlet(urlPatterns = {"/profileupdate"})
public class profileupdate extends HttpServlet {

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
        PrintWriter out = response.getWriter();
        String u=request.getParameter("u");
         String email=request.getParameter("email");
        System.out.println(u+email);
        if("case1".equals(u)){
                       long phoneno=Long.parseLong(request.getParameter("phoneno"));
                int doorno=Integer.parseInt(request.getParameter("doorno"));
                String  streetname=request.getParameter("streetname");
                     String  areaname=request.getParameter("areaname");
                     String  landmark=request.getParameter("landmark");
           
                      int pincode=Integer.parseInt(request.getParameter("pincode"));
         
                      
                        try {
                    try {
                        Class.forName("com.mysql.cj.jdbc.Driver");
                    } catch (ClassNotFoundException ex) {
                        Logger.getLogger(signupsignup.class.getName()).log(Level.SEVERE, null, ex);
                    }
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/db", "root", "mani1234");
            // Here dsnname- mydsn,user id- system(for oracle 10g),password is pintu.
            Statement stmt = conn.createStatement();
             stmt.executeUpdate("update pb_signup set doorno="+doorno+",streetname= '"+streetname+"',areaname='"+areaname+"',landmark='"+landmark+"',pincode = "+pincode+", phoneno='"+phoneno+"' where email='"+email+"' ");
            request.setAttribute("msg","signup successfully");
            request.getRequestDispatcher("/profilesetting.jsp").forward(request, response);
               } 
             catch(SQLException e){
//            request.setAttribute("msg_err","signup failed");
//            request.getRequestDispatcher("/index.jsp").forward(request, response);
out.println(e);
            }
    }
        else if("case2".equals(u)){
                    String  newname=request.getParameter("newname");
                    
                    
                                try {
                    try {
                        Class.forName("com.mysql.cj.jdbc.Driver");
                    } catch (ClassNotFoundException ex) {
                        Logger.getLogger(signupsignup.class.getName()).log(Level.SEVERE, null, ex);
                    }
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/db", "root", "mani1234");
            // Here dsnname- mydsn,user id- system(for oracle 10g),password is pintu.
            Statement stmt = conn.createStatement();
             stmt.executeUpdate("update pb_signup set name='"+newname+"' where email='"+email+"' ");
            request.setAttribute("msg","signup successfully");
            request.getRequestDispatcher("/profilesetting.jsp").forward(request, response);
               } 
             catch(SQLException e){
//            request.setAttribute("msg_err","signup failed");
//            request.getRequestDispatcher("/index.jsp").forward(request, response);
out.println(e);
            }}
                   else if("case3".equals(u)){
                    String  newphoneno=request.getParameter("newphoneno");
                    
                    
                                try {
                    try {
                        Class.forName("com.mysql.cj.jdbc.Driver");
                    } catch (ClassNotFoundException ex) {
                        Logger.getLogger(signupsignup.class.getName()).log(Level.SEVERE, null, ex);
                    }
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/db", "root", "mani1234");
            // Here dsnname- mydsn,user id- system(for oracle 10g),password is pintu.
            Statement stmt = conn.createStatement();
             stmt.executeUpdate("update pb_signup set phoneno='"+newphoneno+"' where email='"+email+"' ");
            request.setAttribute("msg","signup successfully");
            request.getRequestDispatcher("/profilesetting.jsp").forward(request, response);
               } 
             catch(SQLException e){
//            request.setAttribute("msg_err","signup failed");
//            request.getRequestDispatcher("/index.jsp").forward(request, response);
out.println(e);
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
