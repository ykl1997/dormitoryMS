package dms.ykl.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import dms.ykl.DBtool.DBCon;
import dms.ykl.model.Student;

public class StudentDao {
	public Student findStudentBySno(String sno) throws SQLException {
		Student student = new Student();
		Connection con = DBCon.getCon();
		Statement stmt = con.createStatement();
		ResultSet rs = stmt.executeQuery("select * from student_info where sno='" + sno + "'");
		if (rs.next()) {
			student.setSno(rs.getString("sno"));
			student.setName(rs.getString("name"));
			student.setSex(rs.getString("sex"));
			student.setClass1(rs.getString("class"));
			student.setPhone(rs.getString("phone"));
			student.setBuild(rs.getString("build"));
			student.setRoom(rs.getString("room"));
			student.setState(rs.getString("state"));
			rs.close();
			stmt.close();
			DBCon.closeCon();
			return student;
		}
		rs.close();
		stmt.close();
		DBCon.closeCon();
		return null;
	}

	public List<Student> findStudentByBuild(String build) throws SQLException {
		List<Student> students = new ArrayList<Student>();
		Connection con = DBCon.getCon();
		Statement stmt = con.createStatement();
		ResultSet rs = stmt.executeQuery("select * from student_info where build='" + build + "'");
		while (rs.next()) {
			Student student = new Student();
			student.setSno(rs.getString("sno"));
			student.setName(rs.getString("name"));
			student.setSex(rs.getString("sex"));
			student.setClass1(rs.getString("class"));
			student.setPhone(rs.getString("phone"));
			student.setBuild(rs.getString("build"));
			student.setRoom(rs.getString("room"));
			student.setState(rs.getString("state"));
			students.add(student);
		}
		rs.close();
		stmt.close();
		DBCon.closeCon();
		return students;

	}

	public void addStudent(Student student) throws SQLException {
		Connection con = DBCon.getCon();
		String sql = "INSERT INTO student_info (sno,name,sex,class,phone,build,room,state,gmt_created,gmt_modified)"
				+ "VALUES(?,?,?,?,?,?,?,?,now(),now())";
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setString(1, student.getSno());
		ps.setString(2, student.getName());
		ps.setString(3, student.getSex());
		ps.setString(4, student.getClass1());
		ps.setString(5, student.getPhone());
		ps.setString(6, student.getBuild());
		ps.setString(7, student.getRoom());
		ps.setString(8, student.getState());
		ps.executeUpdate();
		ps.close();
		DBCon.closeCon();

	}

	public void modifyStudentBySno(Student student) throws SQLException {
		Connection con = DBCon.getCon();
		String sql = "UPDATE student_info SET name=?,sex=?,class=?,phone=?,build=?,room=?,state=?,gmt_modified=now()"
				+ "where sno=?";
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setString(1, student.getName());
		ps.setString(2, student.getSex());
		ps.setString(3, student.getClass1());
		ps.setString(4, student.getPhone());
		ps.setString(5, student.getBuild());
		ps.setString(6, student.getRoom());
		ps.setString(7, student.getState());
		ps.setString(8, student.getSno());
		ps.executeUpdate();
		ps.close();
		DBCon.closeCon();
	}

	public void deleteStudent(String sno) throws SQLException {
		Connection con = DBCon.getCon();
		String sql = "DELETE FROM student_info WHERE sno=" + sno;
		Statement stmt = con.createStatement();
		stmt.executeUpdate(sql);
		stmt.close();
		DBCon.closeCon();

	}

}
