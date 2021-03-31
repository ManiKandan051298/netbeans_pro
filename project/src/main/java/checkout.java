/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Date;
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
@WebServlet(urlPatterns = {"/checkout"})
public class checkout extends HttpServlet {

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
                    String email=request.getParameter("email");
         

                     try {
                    try {
                        Class.forName("com.mysql.cj.jdbc.Driver");
                    } catch (ClassNotFoundException ex) {
                        Logger.getLogger(signupsignup.class.getName()).log(Level.SEVERE, null, ex);
                    }
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/db", "root", "mani1234");
            // Here dsnname- mydsn,user id- system(for oracle 10g),password is pintu.
            Statement stmt = conn.createStatement();
               String str= "select * from backup right join cart on backup.id=cart.id where email='"+email+"' ";
                   ResultSet rs= stmt.executeQuery(str); 
// request.getRequestDispatcher("/index.jsp").forward(request, response);
Statement st = conn.createStatement();
                    while(rs.next()){
                        String id=rs.getString("id");
                        String price=rs.getString("price");                       
                        String title=rs.getString("title");         
                        String update="payment pending";
                    Date date = new Date();                                                
                        String dateno=date.toString();
                                 st.executeUpdate("insert into myorder( email,title,date,price,updates,id) values('"+email+"','"+title+"','"+dateno+"','"+price+"','"+update+"','"+id+"' )");
                }
                    
                                                     st.executeUpdate("delete from cart where email='"+email+"'");
 request.getRequestDispatcher("/myorder.jsp").forward(request, response);
                    
               } 
             catch(SQLException e){
            request.setAttribute("msg","login  failed");
            request.getRequestDispatcher("/cart.jsp").forward(request, response);
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
