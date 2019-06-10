package com.wenr.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.wenr.model.User;
import com.wenr.util.DBUtil;

public class UserDao {
	
	public boolean exist(String username) {
		Connection conn = null;
		PreparedStatement pstmt = null; 
		ResultSet rs = null;
		
		try {
			conn = DBUtil.getConnection();
			String sql = "select count(*) count from user where username=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, username);
			rs = pstmt.executeQuery();
			if (rs != null && rs.next()) {
				return rs.getInt("count")>0;
			} else {
				return false;
			}
		} catch (SQLException ex) {
			ex.printStackTrace();
		} finally {
			if (pstmt != null) {
				try {
					pstmt.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			if (rs != null) {
				try {
					rs.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		
		return false;
	}

	public User get(String username) {
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		User user=null;
		try {
			conn = DBUtil.getConnection();
			String sql = "select id,name,username,password from user where username = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,username);
			rs = pstmt.executeQuery();
			if (rs != null && rs.next()) {
				 user = new User();
				user.setId(rs.getInt(1));
				user.setName(rs.getString(2));
				user.setUsername(rs.getString(3));
				user.setPassword(rs.getString(4));
				return user;
			}
		} catch (SQLException ex) {
			ex.printStackTrace();
		} finally {
			if (pstmt != null) {
				try {
					pstmt.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			if (rs != null) {
				try {
					rs.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		
		return user;
	}
	
	public void add(User user) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = DBUtil.getConnection();
			String sql = "insert into user(username,name,password) values(?,?,?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, user.getUsername());
			pstmt.setString(2, user.getName());
			pstmt.setString(3, user.getPassword());
			pstmt.executeUpdate();
		} catch (SQLException ex) {
			ex.printStackTrace();
		} finally {
			if (pstmt != null) {
				try {
					pstmt.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
	}
	
//	public static void main(String[] args) {
//		UserDao dao = new UserDao();
//		User user = new User();
//		user.setSid(100000000);
//		user.setSpwd("1");
//		dao.isValid(user);
//		System.out.println(user.getSname());
//
//		ArrayList<Course> list = dao.getSelectedCourse(user);
//		for (Course course: list) {
//			System.out.println(course.getCname() + "," + course.getCredit() + "," + course.getScore());
//		}
//
//		dao.deleteCourse(user, 100000003);
//
//	}
}
