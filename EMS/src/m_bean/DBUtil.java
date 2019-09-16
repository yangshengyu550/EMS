package m_bean;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class DBUtil {
	private Connection con = null;
	private PreparedStatement pstm = null;
	private ResultSet rs = null;
	
	public int updateSQL(String sql){
		int n = -1;
		try {
			con = DBConnection.getDBConnection();
			pstm = con.prepareStatement(sql);
			n = pstm.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		DBConnection.closeDB(con, pstm, rs);
		return n;
	}
	
	public ResultSet querySQL(String sql){
		try {
			con = DBConnection.getDBConnection();
			pstm = con.prepareStatement(sql);
			rs = pstm.executeQuery();
			return rs;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
}
