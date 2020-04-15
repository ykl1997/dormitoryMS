package dms.ykl.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import dms.ykl.DBtool.DBCon;
import dms.ykl.model.Dormitory;

public class DormitoryDao {
	private List<Dormitory> dormitorys = new ArrayList<Dormitory>();

	public List<Dormitory> findDormitoryBybuild(String build) {
		Connection connection = DBCon.getCon();
		try {
			Statement stmtStatement = connection.createStatement();
			ResultSet rs = stmtStatement
					.executeQuery("SELECT b.build_name,d.sushez,d.dormitory_type,d.dormitory_name,d.tel "
							+ "FROM dormitory d,build_info b WHERE d.building=build_id and build_name='" + build + "'");
			while (rs.next()) {
				Dormitory dormitory = new Dormitory();
				dormitory.setBuilding(rs.getString("b.build_name"));
				dormitory.setSushez(rs.getString("d.sushez"));
				dormitory.setDormitory_type(rs.getString("d.dormitory_type"));
				dormitory.setDormitory_name(rs.getString("d.dormitory_name"));
				dormitory.setTel(rs.getString("d.tel"));
				dormitorys.add(dormitory);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return dormitorys;
	}

}
