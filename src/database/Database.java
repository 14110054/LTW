package database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;


public class Database {
	private Connection conn =null;
	private final String driver ="com.mysql.jdbc.Driver" ;
	private final String url = "jdbc:mysql://localhost:3306/ao_an";
	private final String user = "root";
	private final String password = "6796";
	
	
	
	public int updateData(String sql) throws ClassNotFoundException, SQLException{
		int result =0;
		openConnect();
		Statement sta = conn.createStatement();
		result = sta.executeUpdate(sql);
		closeConnect();
		return result;
	}
	
	public ResultSet getData(String sql) throws SQLException, ClassNotFoundException{
		ResultSet rs = null;
		openConnect();
		Statement sta = conn.createStatement();
		rs = sta.executeQuery(sql);
		return rs;
	}
	
	public void openConnect() throws ClassNotFoundException, SQLException{
		
		try {
			if(conn == null){
				Class.forName(driver);
				conn = DriverManager.getConnection(url, user, password);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public void closeConnect() throws SQLException{
		if(conn != null ){
			conn.close();
		}
	}
	
}
