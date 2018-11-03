package pandora.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class ManagerDao {
	private static ManagerDao instance = new ManagerDao();
	private ManagerDao()	{	}
	public static ManagerDao getInstance()	{
		return instance;
	}
	private Connection getConnection() {
		Connection conn = null;
		try {
			Context ctx = new InitialContext();
			DataSource ds = (DataSource)
					ctx.lookup("java:comp/env/jdbc/OracleDB");
			conn = ds.getConnection();
		}catch(Exception e) {
			System.out.println("연결에러 : "+e.getMessage());
		}
		return conn;
	}
	 public int managerCheck(String id, String passwd) {
			Connection conn = null;   PreparedStatement pstmt = null;
			ResultSet rs= null;       String dbpasswd="";		int x=-1;        
			try { conn = getConnection();            
	            pstmt = conn.prepareStatement(
	            	"select managerPasswd from manager where managerId=?");
	            pstmt.setString(1, id);            
	            rs= pstmt.executeQuery();
				if(rs.next()){
					dbpasswd= rs.getString("managerPasswd"); 
					if(dbpasswd.equals(passwd))		x= 1; //인증 성공
					else			x= 0; //비밀번호 틀림
				}else				x= -1;//해당 아이디 없음			
	        } catch(Exception e) {System.out.println(e.getMessage());
	        } finally {
				if (rs != null) try { rs.close(); } catch(SQLException ex) {}
	            if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
	            if (conn != null) try { conn.close(); } catch(SQLException ex) {}
	        }
			return x;
		}
}
