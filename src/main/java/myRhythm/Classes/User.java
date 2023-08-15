package myRhythm.Classes;

public class User {
    private int userId;
    private String userName,password,email,mInst;
    public User(){

    }
    public User(int userId, String userName, String email, String password, String mInst){
        this.userId = userId;
        this.userName = userName;
        this.password = password;
        this.email=email;
        this.mInst = mInst;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getFirstName() {
        return userName;
    }

    public void setFirstName(String firstName) {
        this.userName = firstName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getMInstrument() {
        return mInst;
    }

    public void setMInstruents(String email) {
        this.mInst = mInst;
    }
}
