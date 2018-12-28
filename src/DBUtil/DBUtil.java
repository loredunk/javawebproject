package DBUtil;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;

public class DBUtil {
	private static String driverClass;
	private static String url;
	private static String user;
	private static String password;
	private static Properties prop=new Properties();
	  static{
		  InputStream is=DBUtil.class.getClassLoader().getResourceAsStream("DBUtil/config.properties");
		  try {
			prop.load(is);
			driverClass=prop.getProperty("driverClass").trim();
			url=prop.getProperty("url").trim();
			user=prop.getProperty("user").trim();
			password=prop.getProperty("password").trim();
			Class.forName(driverClass);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	  }
	public  static Connection getConnection(){
		Connection conn=null;
		try {
			
			//连接数据库
			conn=DriverManager.getConnection(url, user, password);
			System.out.print(DBUtil.class.getClassLoader().getResource(""));
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return conn;
	}
	
	public static boolean closeConnection(Connection conn){
		if(conn!=null){
			try {
				conn.close();
				return true;
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				return false;
			}
		}else{
			return true;
		}
		
		
	}
}
