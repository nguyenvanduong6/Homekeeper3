package connect;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DBConnect {

    public static Connection getConnection() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
	public DBConnect(){
		
	}
	public static Connection getConnect(){
		Connection connection = null;
		try {
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			connection=DriverManager.getConnection("jdbc:sqlserver://localhost:1433;databaseName=housekeeper;user=sa;password=123456");
			System.out.println("Connect success");
		} catch (SQLException | ClassNotFoundException e) {
			System.out.println("Error when you connect to database!Error is: "+e.getMessage());
		}
		return connection;
	}
	public static void main(String[] args) {
		System.out.println(getConnect());
	}
        //phuong thuc thuc hien truy van
	public  void excuteSql(String sql) throws Exception{
		Connection connect =getConnect();
		PreparedStatement stmt =   (PreparedStatement) connect.createStatement();
		stmt.executeUpdate(sql);
	}
      
        
        //Phuong thuc select data
	public ResultSet selectData(String sql) throws Exception{
		Connection connect =getConnect();
		PreparedStatement stmt =   (PreparedStatement) connect.createStatement();
		ResultSet rs=	stmt.executeQuery(sql);
		return rs;
	}


    private Connection connect() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
}
