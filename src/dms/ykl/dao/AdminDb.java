package dms.ykl.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import dms.ykl.Interface.DbAccessInter;

public class AdminDb implements DbAccessInter {
	private Connection con;
	private Statement stmt;
	private ResultSet rs;

	@Override
	public void connection() throws ClassNotFoundException, SQLException {
		Class.forName("com.mysql.jdbc.Driver");
		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/dormdb", "root", "123456");
		stmt = con.createStatement();
	}

	@Override
	public String selectByname(String name) throws SQLException {
		rs = stmt.executeQuery("SELECT * FROM admin_login where name=" + name);
		rs.next();
		return rs.getString("password");
	}

	@Override
	public boolean isEmptyResult() throws SQLException {
		if (rs.getRow() == 0)
			return true;
		else
			return false;
	}

	@Override
	public void close() throws SQLException {
		rs.close();
		stmt.close();
		con.close();
	}

}
