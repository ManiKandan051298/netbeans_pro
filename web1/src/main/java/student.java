/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import java.io.IOException;
import java.io.PrintWriter;
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
/**
 *
 * @author ELCOT
 */
@WebServlet(urlPatterns = {"/student"})
public class student extends HttpServlet {
   static Connection conn;

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
            throws ServletException, IOException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
                       // int regno=Integer.parseInt(request.getParameter("regno"));
                      
            int regno=Integer.parseInt(request.getParameter("regno"));

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/db", "root", "mani1234");
            // Here dsnname- mydsn,user id- system(for oracle 10g),password is pintu.
            Statement stmt = conn.createStatement();
           
             ResultSet rs=stmt.executeQuery("select * from student where regno="+regno+"");
            while (rs.next()) 
             { 
               String fathername = rs.getString("fathername");  
                 String name = rs.getString("name");  
                 String dob = rs.getString("dob");  
                 int mobilenumber =Integer.parseInt( rs.getString("mobilenumber"));  
            
         out.println("<!doctype html>\n" +
"<html lang=\"en\">\n" +
"  <head>\n" +
"    <title>web - student </title>\n" +
"    <!-- Required meta tags -->\n" +
"    <meta charset=\"utf-8\">\n" +
"    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\n" +
"\n" +
"    <!-- Bootstrap CSS -->\n" +
//"    <link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css\" integrity=\"sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T\" crossorigin=\"anonymous\">\n" +
"  </head>\n" +
"  <body style=\"background-color:whitesmoke;\">\n" +
"  <div class=\"container my-5\" style=\"width:400px;\">\n" +
"        <h1>ANNA UNIVERSITY</h1>\n" +
"      </div>\n" +
"      \n" +
"\n" +
"      <div class=\"container \"  style=\"background-color: white; width:400px;\">\n" +
"      <div class=\" mt-5\" style=\"width:400px;\">\n" +
"        <h3>Student Result:</h3>\n" +
"      </div>\n" +
"            <div class=\"row\">\n" +
"                <div class=\"col\">\n" +
"                    Your Register Number: \n" +
"                </div>\n" +
"                <div class=\"col\">\n" +
"                 "+regno+"\n" +
"                </div>\n" +
"            </div>\n" +
"            <div class=\"row\">\n" +
"                <div class=\"col\">\n" +
"Your name:                </div>\n" +
"                <div class=\"col\">\n" +
"                 "+name+"\n" +
"                </div>\n" +
"            </div>\n" +
"            <div class=\"row\">\n" +
"                <div class=\"col\">\n" +
"                       Your father name               \n" +
"                    </div>\n" +
"                <div class=\"col\">\n" +
"                 "+fathername+"\n" +
"                </div>\n" +
"            </div><div class=\"row\">\n" +
"                <div class=\"col\">\n" +
"Your Date of birth:                </div>\n" +
"                <div class=\"col\">\n" +
"                 "+dob+"\n" +
"                </div>\n" +
"            </div><div class=\"row\">\n" +
"                <div class=\"col\">\n" +
"Your Mobile number                </div>\n" +
"                <div class=\"col\">\n" +
"                 "+mobilenumber+"\n" +
"                </div>\n" +
"            </div>\n" +
"    </div>\n" +
"    <!-- Optional JavaScript -->\n" +
"    <!-- jQuery first, then Popper.js, then Bootstrap JS -->\n" +
"    <script src=\"https://code.jquery.com/jquery-3.3.1.slim.min.js\" integrity=\"sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo\" crossorigin=\"anonymous\"></script>\n" +
"    <script src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js\" integrity=\"sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1\" crossorigin=\"anonymous\"></script>\n" +
"    <script src=\"https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js\" integrity=\"sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM\" crossorigin=\"anonymous\"></script>\n" +
"  </body>\n" +
"</html>");
             }
          
        
        } catch (ClassNotFoundException ex) {
           Logger.getLogger(student_details.class.getName()).log(Level.SEVERE, null, ex);
       } finally {
            out.close();
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
