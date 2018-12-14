package com.loginex.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.loginex.dto.DTO;

public class DAO {
	
	public static final int USERINFO_JOIN_SUCCESS = 1;
	public static final int USERINFO_NONEXISTENT = 0;
	public static final int USERINFO_EXISTENT = 1;
	
	
//	싱글톤 패턴(생성자가 여러 차례 호출되더라도 실제로 생성되는 객체는 하나이고 최초 생성 이후에 호출된 생성자는 최초의 생성자가 생성한 객체를 리턴)
//	출처: https://en.wikipedia.org/wiki/Singleton_pattern
	
	private static DAO instance;
	
	//Singleton_pattern
	public static DAO getInstance() {
		if(instance == null)
			instance = new DAO();
		return instance;
	}
	
	public int insert(DTO dto) {
		int ri = 0;
		
		String driver = "oracle.jdbc.driver.OracleDriver";
		String url ="jdbc:oracle:thin:@localhost:1521:xe";
		String dbid = "scott";
		String dbpw = "tiger";
		
		Connection conn= null;
		PreparedStatement pstmt = null;
		
		String query = "insert into userinfo values (?,?,?,?)";
		
		try {
			Class.forName(driver);
			conn = DriverManager.getConnection(url, dbid, dbpw);
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, dto.getName());
			pstmt.setString(2, dto.getId());
			pstmt.setString(3, dto.getPw());
			pstmt.setString(4, dto.getPwconfig());
			pstmt.executeQuery();
			ri = DAO.USERINFO_JOIN_SUCCESS;
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(pstmt != null) pstmt.close();
				if(conn != null) conn.close();
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
		
		return ri;
	}
	
	public int findId(String id) {
		int ri = 0;
		
		String driver = "oracle.jdbc.driver.OracleDriver";
		String url ="jdbc:oracle:thin:@localhost:1521:xe";
		String dbid = "scott";
		String dbpw = "tiger";
		
		Connection conn= null;
		PreparedStatement pstmt = null;
		ResultSet res = null;
		
		String query = "select id from userinfo where id = ?";
		
		try {
			Class.forName(driver);
			conn = DriverManager.getConnection(url, dbid, dbpw);
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, id);
			res = pstmt.executeQuery();
			if(res.next()) {
				ri = DAO.USERINFO_EXISTENT;
			}else {
				ri = DAO.USERINFO_NONEXISTENT;
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(res != null) res.close();
				if(pstmt != null) pstmt.close();
				if(conn != null) conn.close();
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
		return ri;
		
	}
}
