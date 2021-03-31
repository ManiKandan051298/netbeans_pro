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
@WebServlet(urlPatterns = {"/signupsignup"})
public class signupsignup extends HttpServlet {

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
             String  email=request.getParameter("email");
             String  name=request.getParameter("name");
           long phoneno=Long.parseLong(request.getParameter("phoneno"));
                int doorno=Integer.parseInt(request.getParameter("doorno"));
        String  streetname=request.getParameter("streetname");
             String  areaname=request.getParameter("areaname");
             String  landmark=request.getParameter("landmark");
           
                      int pincode=Integer.parseInt(request.getParameter("pincode"));
                        String  password=request.getParameter("password");
                  String  cpassword=request.getParameter("cpassword");
   if(  password.equals(cpassword)){             
               try {
                    try {
                        Class.forName("com.mysql.cj.jdbc.Driver");
                    } catch (ClassNotFoundException ex) {
                        Logger.getLogger(signupsignup.class.getName()).log(Level.SEVERE, null, ex);
                    }
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/db", "root", "mani1234");
            // Here dsnname- mydsn,user id- system(for oracle 10g),password is pintu.
            Statement stmt = conn.createStatement();
             stmt.executeUpdate("insert into pb_signup(email,name, phoneno,doorno,streetname,areaname,landmark,pincode,password) values('"+email+"','"+name+"','"+phoneno+"',"+doorno+",'"+streetname+"','"+areaname+"','"+landmark+"',"+pincode+",'"+password+"' )");
            request.setAttribute("msg","signup successfully");
            request.getRequestDispatcher("/login.jsp").forward(request, response);
               } 
             catch(SQLException e){
            request.setAttribute("msg_err","signup failed");
            request.getRequestDispatcher("/login.jsp").forward(request, response);
            }
    }
   else{
              request.setAttribute("msg_err","password incorect");
            request.getRequestDispatcher("/login.jsp").forward(request, response);
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
