package myRhythm.Classes;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

@WebServlet(name = "Login", value = "/Login")
public class Login extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String userName = request.getParameter("username");
        String password = request.getParameter("pass");
        PrintWriter pw = response.getWriter();

        HttpSession session=request.getSession();
        session.setAttribute("uname",userName);


       if (userName.equals("sumitsg")){
           try {
               Class.forName("com.mysql.cj.jdbc.Driver");
               Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/rhythmdb","root","admin");
               String query = "select * from rhythmdb.admintb where adname=? and password=?";
               PreparedStatement pst = con.prepareStatement(query);
               pst.setString(1, userName);
               pst.setString(2, password);

               ResultSet rs=pst.executeQuery();

               if (rs.next()){
                   response.sendRedirect("HomeAdmin.jsp");

               }
               else {
                   request.setAttribute("errorMessage", "Wrong admin credentials");
                   RequestDispatcher rd = request.getRequestDispatcher("Login.jsp");
                   rd.forward(request,response);
                   response.sendRedirect("Login.jsp");
               }

           } catch (ClassNotFoundException | SQLException e) {
               throw new RuntimeException(e);

           }

       }
       else {
           try {
               Class.forName("com.mysql.cj.jdbc.Driver");
               Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/rhythmdb","root","admin");
               String query = "select * from rhythmdb.usertb where uname=? and upassword=?";
               PreparedStatement pst = con.prepareStatement(query);
               pst.setString(1, userName);
               pst.setString(2, password);

               ResultSet rs=pst.executeQuery();

               if (rs.next()){
                   response.sendRedirect("Home.jsp");
               }
               else {
                   request.setAttribute("errorMessage", "Wrong user credentials");
                   RequestDispatcher rd = request.getRequestDispatcher("Login.jsp");
                   rd.forward(request,response);
                   response.sendRedirect("Login.jsp");
               }

           } catch (ClassNotFoundException | SQLException e) {
               throw new RuntimeException(e);

           }
       }

    }

}
