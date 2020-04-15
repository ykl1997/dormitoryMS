package dms.ykl.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import dms.ykl.DBtool.DBCon;

public class AlterPassDao {
	public boolean checkPass(String table, String name, String oldpass) {
		try {
			Statement stmt = DBCon.getCon().createStatement();
			ResultSet rs = stmt.executeQuery("select * from " + table + " where name='" + name + "'");
			rs.next();
			rs.getString("password");
			if (rs.getString("password").equals(oldpass))
				return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}

	public void updatePass(String table, String name, String newpass) {

		try {
			Statement stmt = DBCon.getCon().createStatement();
			stmt.executeUpdate("UPDATE " + table + " SET password='" + newpass + "' where name='" + name + "'");
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}
}
