package dms.ykl.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import dms.ykl.DBtool.DBCon;
import dms.ykl.model.Build;

public class BuildDao {
	public void modifyBuildById(Build build) {
		Connection conn = DBCon.getCon();
		String sql = "UPDATE build_info SET build_name=?,build_type=? WHERE build_id=?";
		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, build.getName());
			ps.setString(2, build.getType());
			ps.setLong(3, build.getId());
			ps.executeUpdate();
			ps.close();
			DBCon.closeCon();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
