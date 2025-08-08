package UserPackage;

public class UserModel5414 {
    private int userID;
    private String name;
    private String username;
    private String password;
    private String gmail;
    private String phone;

    // Constructor including name and phone
    public UserModel5414(int userID, String name, String username, String password, String gmail, String phone) {
        super();
        this.userID = userID;
        this.name = name;
        this.username = username;
        this.password = password;
        this.gmail = gmail;
        this.phone = phone;
    }

    // Getter and Setter methods
    public int getUserID() {
        return userID;
    }

    public void setUserID(int userID) {
        this.userID = userID;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getGmail() {
        return gmail;
    }

    public void setGmail(String gmail) {
        this.gmail = gmail;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }
}
