package myRhythm.Classes;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

@WebServlet(name = "Register", value = "/Register")
public class Register extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String uName = request.getParameter("name");
        String pass = request.getParameter("password");
        String email = request.getParameter("email");
        String mInst = request.getParameter("mInstrument");
        PrintWriter pw=response.getWriter();

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/rhythmdb","root","admin");
            String sql="INSERT into rhythmdb.usertb(uname,upassword,email,musicin) "
                    + "Values(?,?,?,?)";

            PreparedStatement pstm=con.prepareStatement(sql);
            pstm.setString(1,uName );
            pstm.setString(2,pass );
            pstm.setString(3,email );
            pstm.setString(4,mInst );

            int rowcnt = pstm.executeUpdate();
            if (rowcnt>0){
                response.sendRedirect("Login.jsp");
            }

        }catch (ClassNotFoundException e){
            e.printStackTrace();
        }catch (SQLException e){
            e.printStackTrace();
        }
    }
}
