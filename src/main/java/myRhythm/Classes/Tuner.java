package myRhythm.Classes;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.sql.*;

@WebServlet(name = "Tuner", value = "/Tuner")
public class Tuner extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String sc = request.getParameter("scale");
        Statement st;
        String loc = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/rhythmdb", "root", "admin");
            String query = "select * from rhythmdb.tunertb where scale = '" + sc +"'" ;
            st=con.createStatement();
            ResultSet rs = st.executeQuery(query);


            while (rs.next()) {
                loc = rs.getString("location");
            }

            request.setAttribute("location", loc);

        } catch (SQLException e) {
            throw new RuntimeException(e);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
    }
}
