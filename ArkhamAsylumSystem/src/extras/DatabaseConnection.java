package extras;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class DatabaseConnection {
	
	private Connection conn;
	private Statement statement;
	private static final String HOST="localhost:3306";
	private static final String USER="root";
	private static final String PASSWORD="";
	private static final String DATABASE="EPL362";
	
	public DatabaseConnection(){
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager
					.getConnection("jdbc:mysql://"+HOST+"/"+DATABASE,USER, PASSWORD);
			statement = conn.createStatement();
			
			if (conn == null){
				System.out.println("adsasa");
			}	
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	
	public Statement getStatement(){
		return statement;
	}
	

	public void CloseConnection(){
		try {
			statement.close();
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}
	
	

}
