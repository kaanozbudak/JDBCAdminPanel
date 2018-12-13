package data;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DBConn {
    private static String serverID, serverIP, serverPassword;
    private static Connection con;
    private static Statement stat;
    private static ResultSet rs;
    private static PreparedStatement ps;
    public void make_DBConn(String ip, String id, String password) {
        this.serverIP = ip;
        this.serverID = id;
        this.serverPassword = password;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://"+ this.serverIP + ":/?useUnicode=true&useLegacyDatetimeCode=false&serverTimezone=Turkey",
                    this.serverID, this.serverPassword);

        }catch(Exception e) {
            System.out.println("Have a problem while connecting DB server");
        }
    }
    public void closeStat() {
        try {
            stat.close();
        } catch (SQLException e) {
            System.out.println("Have a problem closing Statement: " + e.getLocalizedMessage());
        }
    }
    public void closeConn() {
        try {
            con.close();
        } catch (SQLException e) {
            System.out.println("Have a problem closing connection: " + e.getLocalizedMessage());
        }
    }
    public ResultSet executeQuerry(String qry) {
        try {
            stat = con.createStatement();
            rs = stat.executeQuery(qry);
        }catch(SQLException e) {
            System.out.println("Have a problem while executing querry: " + qry);
        }
        return rs;
    }
    public void updateQuerry(String databaseName, String tableName,
                             String changingColumnName, String changingValue, String primaryKeyColumnName, String primaryKeyValue) {
        try {
            ps = con.prepareStatement("update "+databaseName+"."+tableName +" set "+ changingColumnName +"=? where "+ primaryKeyColumnName +"=?");
            ps.setString(1, changingValue);
            ps.setString(2, primaryKeyValue);
            System.out.println(ps);
            ps.executeUpdate();
        } catch (SQLException e) {
            System.out.println("Have a problem while executing an update: " + e.getMessage());
        }
    }

}
