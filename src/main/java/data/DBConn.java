package data;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DBConn {
	private static String serverID, serverIP, serverPassword;
	private static Connection con;
	private static Statement stat;
	private static ResultSet rs;
	
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
	
}
