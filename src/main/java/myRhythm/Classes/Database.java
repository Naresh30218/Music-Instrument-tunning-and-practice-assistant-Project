package myRhythm.Classes;

import java.sql.*;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

public class Database {

    private Connection con;

    public Database() throws SQLException, ClassNotFoundException {
        establishConnecion();
    }

    private void establishConnecion() throws ClassNotFoundException, SQLException {
        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/rhythmdb","root","admin");
    }

    public ArrayList getAllUsers() {
        ArrayList list = new ArrayList();
        User user = null;
        PreparedStatement pstm;
        try {
            pstm = con.prepareStatement("Select * from usertb");
            ResultSet rs = pstm.executeQuery();
            while (rs.next()) {
                user = new User(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5));
                list.add(user);
            }
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());

        }
        return list;
    }

    public int getUserId(String userName) {
        int str = 0;
        PreparedStatement pstm;
        try {
            pstm = con.prepareStatement("Select * from usertb where uname=?");
            pstm.setString(1, userName);
            ResultSet rs = pstm.executeQuery();
            while (rs.next()) {
                str = rs.getInt("uid");
            }
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());

        }
        return str;
    }

    public User getUserDetails(String userId) {
        User userDetails = null;

        try {
            String sql = "SELECT * from users where user_id=?";
            PreparedStatement pstm = con.prepareStatement(sql);
            pstm.setString(1, userId);
            ResultSet rs = pstm.executeQuery();
            while (rs.next()) {
                userDetails = new User(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4)
                        , rs.getString(5));
            }
            pstm.close();
        } catch (SQLException ex) {
            Logger.getLogger(Database.class.getName()).log(Level.SEVERE, null, ex);
        }
        return userDetails;
    }

    public void addNewUser(String uName,String email,String pass, String mInsmt ){
        try {
            String sql="INSERT into rhythmdb.usertb(uname,upassword,email,musicin) "
                    + "Values(?,?,?,?)";

            PreparedStatement pstm=con.prepareStatement(sql);
            pstm.setString(1,uName );
            pstm.setString(2,pass );
            pstm.setString(3,email );
            pstm.setString(4,mInsmt );

            int i = pstm.executeUpdate();

        } catch (Exception ex) {
            Logger.getLogger(Database.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public boolean loginValidate(String userName, String userPass) throws SQLException{
        boolean status=false;

        String sql="SELECT * FROM usertb\n"
                + "WHERE uname=?";
        PreparedStatement pstm=con.prepareStatement(sql);
        pstm.setString(1,userName);
        ResultSet rs=pstm.executeQuery();
        String uname;
        String pass;
        while(rs.next()){
            uname=rs.getString("uname");
            pass=rs.getString("upassword");

            if( pass.equals(userPass)){
                return true;
            }
        }//end while
        return false;

    }

}

