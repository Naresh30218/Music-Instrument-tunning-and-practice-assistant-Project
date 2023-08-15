package myRhythm.Classes;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

@WebServlet(name = "Practice", value = "/Practice")
public class Practice extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String minst = request.getParameter("inst");
        String trackn = request.getParameter("track");
        Statement st;
        String loc = null;
        PrintWriter pw=null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/rhythmdb", "root", "admin");
            String query = "select * from rhythmdb.tracktb where t_name = '" + trackn +"'" ;
            st=con.createStatement();
            ResultSet rs = st.executeQuery(query);


            while (rs.next()) {
                loc = rs.getString("t_location");
            }
//            System.out.println(loc);

            request.setAttribute("location", loc);
            RequestDispatcher rd=getServletConfig().getServletContext().getRequestDispatcher("/Practice.jsp");
            rd.forward(request,response);

        } catch (SQLException e) {
            throw new RuntimeException(e);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
    }
}
