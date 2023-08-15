package myRhythm.Classes;

import java.sql.*;

public class Test {
    public static void main(String[] args) {
        String userName = "sumitsg";
        String password = "sumitsg";

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/rhythmdb","root","admin");
            String query = "select * from rhythmdb.admintb where adname=? and password=?";
            PreparedStatement pst = con.prepareStatement(query);
            pst.setString(1, userName);
            pst.setString(2, password);

            ResultSet rs=pst.executeQuery();

            if (rs.next()){
                System.out.println("True");
            }
            else {
                System.out.println("False");
            }

        } catch (ClassNotFoundException | SQLException e) {
            System.out.println(e);

        }
    }
}
