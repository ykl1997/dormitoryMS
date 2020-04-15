package dms.ykl.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import dms.ykl.Interface.DbAccessInter;

public class StudentDb implements DbAccessInter {
	private Connection con;
	private Statement stmt;
	private ResultSet rs;

	public void connection() throws ClassNotFoundException, SQLException {
		Class.forName("com.mysql.jdbc.Driver");
		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/dormdb", "root", "123456");
		stmt = con.createStatement();
	}

	public String selectByname(String name) throws SQLException {
		rs = stmt.executeQuery("SELECT * FROM student_login  where name='" + name + "'");
		rs.next();
		return rs.getString("password");
	}

	public boolean isEmptyResult() throws SQLException {
		if (rs.getRow() == 0)
			return true;
		else
			return false;

	}

	public void close() throws SQLException {
		rs.close();
		stmt.close();
		con.close();
	}
}
