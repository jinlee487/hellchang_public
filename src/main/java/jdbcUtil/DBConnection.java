package jdbcUtil;

import java.sql.*;

public class DBConnection {
	// Connection 생성 method
	public static Connection getConnection() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			String url="jdbc:mysql://hellchang.csddfvc4uyqc.ap-northeast-2.rds.amazonaws.com:3306/hellchang_schema_test?serverTimezone=UTC&autoReconnect=true&useSSL=false"; 

			return DriverManager.getConnection(url,"admin","hellchang");
		} catch (Exception e) {
			System.out.println("getConnection Exception =>"+e.toString());
			System.out.println("** DB Connection 실패 ~~~ ");
			return null;
		}
	} // getConnection()
	
	// Connection 종료 method
	// => 사용한 JDBC 객체들을 종료
	// => 생성의 역순으로 해야 함
	public static void close(ResultSet rs,PreparedStatement pst,Statement st,Connection cn) {
		try {
			if (rs != null) {
				rs.close();
			}
			if (pst != null) {
				pst.close();
			}
			if (st != null) {
				st.close();
			}
			if (cn != null) {
				cn.close();
			}
			
		} catch (Exception e) {
			System.out.println("close Exception => "+e.toString());
		}
	} // close()
} // class
