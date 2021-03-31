/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author ELCOT
 */
@WebServlet(urlPatterns = {"/login1"})
public class login1 extends HttpServlet {

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
           String  email=request.getParameter("email");
          String  password=request.getParameter("password");

                     try {
                    try {
                        Class.forName("com.mysql.cj.jdbc.Driver");
                    } catch (ClassNotFoundException ex) {
                        Logger.getLogger(signupsignup.class.getName()).log(Level.SEVERE, null, ex);
                    }
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/db", "root", "mani1234");
            // Here dsnname- mydsn,user id- system(for oracle 10g),password is pintu.
            Statement stmt = conn.createStatement();
            String str="select * from pb_signup where email= '"+email+"' ";
            ResultSet rs= stmt.executeQuery(str); 
            
              while(rs.next()){
                    if(password.equals(rs.getString("password"))){
                        
                    int id=Integer.parseInt(rs.getString("id"));
                         String name=rs.getString("name");
                             HttpSession session=request.getSession();
                 session.setAttribute("email",email);  
                 session.setAttribute("id",id); 
                 
                 session.setAttribute("name",name); 
                    request.getRequestDispatcher("/index.jsp").forward(request, response);
                    }
                    else{
                   
                    request.setAttribute("msg_err","login  failed");
            request.getRequestDispatcher("/login.jsp").forward(request, response);
                    }
                    
                }
               } 
             catch(SQLException e){
            request.setAttribute("msg_err","login  failed");
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
