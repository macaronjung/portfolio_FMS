package detail;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class detailDAO {

	private Connection conn;
	private ResultSet rs;

	public detailDAO() {

		try {
			String jdbcURL = "jdbc:mysql://parksion0213.cafe24.com:3306/parksion0213?serverTimezone=Asia/Seoul";
			String dbID="parksion0213";
			String dbPW="as02130314love^^";
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(jdbcURL, dbID, dbPW);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public detailDTO get(int pnum) {
		String SQL = "SELECT * FROM p_detail WHERE pnum = ?";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, pnum);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				detailDTO dto = new detailDTO();
				dto.setPnum(rs.getInt(1));
				dto.setPfile(rs.getString(2));
				dto.setPprice(rs.getString(3));
				dto.setPname(rs.getString(4));
				dto.setPcontent1(rs.getString(5));
				dto.setPcontent2(rs.getString(6));
				dto.setPcontent3(rs.getString(7));
				dto.setPcontent4(rs.getString(8));
				dto.setPcontent5(rs.getString(9));
				return dto;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
}
