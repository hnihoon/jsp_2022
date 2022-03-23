package day02.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import day01.OracleConnectUtil;
import day02.vo.Member;
import day02.vo.SaleSum;

public class TemplateDao {		//dao 만들때마다 참고하세요
	
	private static TemplateDao dao = new TemplateDao(); 
	private TemplateDao() { }
	public static TemplateDao getCustomDao() {
		return dao;
	}
	
	public void insert(Member vo) {
		Connection conn = OracleConnectUtil.connect();
		String sql = ""; 
		
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
		
			
			pstmt.execute();
			System.out.println("회원 등록이 완료 되었습니다.");
			pstmt.close();
		}catch (SQLException e) {
			System.out.println("SQL 실행 오류 : " +  e.getMessage());
		}
		OracleConnectUtil.close(conn);	
	}
	
	public void update(Member vo) {
		Connection conn = OracleConnectUtil.connect();
		String sql = ""; 
		
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
		
			
			pstmt.execute();
			System.out.println("회원 수정이 완료 되었습니다.");
			pstmt.close();
		}catch (SQLException e) {
			System.out.println("SQL 실행 오류 : " +  e.getMessage());
		}
		OracleConnectUtil.close(conn);	
	}
	
	//데이터의 삭제는 대체로 기본키값을 조건으로 삭제합니다 -> 기본키값을 메소드 인자로 합니다.
		public void delete(int cust_no) {
			Connection conn = OracleConnectUtil.connect();
			String sql="delete from member_tbl_02 where custno=?";
			
			try {
				PreparedStatement pstmt = conn.prepareStatement(sql);
				//?매개변수 전달
				pstmt.setInt(1, cust_no);
				pstmt.execute();
				System.out.println("삭제가 완료되었습니다.");
				pstmt.close();
			}catch(SQLException e){
				System.out.println("SQL 실행 오류 : " +  e.getMessage());
			}
			
			OracleConnectUtil.close(conn);
		}
	
	public List<Member> selectMemberAll() {
		Connection conn = OracleConnectUtil.connect();
		String sql="";
		PreparedStatement pstmt = null;
		ResultSet rs= null;		
		List<Member> members = new ArrayList<>();
		try {
			pstmt = conn.prepareStatement(sql);
			rs=pstmt.executeQuery();	//select 
			
			while(rs.next()) {
			}
			pstmt.close();
			
		}catch (SQLException e) {
			System.out.println("SQL 실행 오류 : " + e.getMessage());
		
		}
		
		OracleConnectUtil.close(conn);
		return members;
	}
	
	public Member selectMember(int cust_no) {
		
		Connection conn = OracleConnectUtil.connect();
		ResultSet rs = null;
		String sql="";
		Member member=null;
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				
			}
			
		}catch (SQLException e) {
			System.out.println("SQL 실행 오류 : " + e.getMessage());
		
		}
		return member;
	}
}	
	
		
