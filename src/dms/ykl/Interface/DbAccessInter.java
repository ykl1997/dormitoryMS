package dms.ykl.Interface;

import java.sql.SQLException;

public interface DbAccessInter {
	public void connection() throws ClassNotFoundException, SQLException;

	public String selectByname(String name) throws SQLException;

	public boolean isEmptyResult() throws SQLException;

	public void close() throws SQLException;
}
