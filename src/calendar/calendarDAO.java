package calendar;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import calendar.calendarDTO;

public class calendarDAO {
	private Connection conn;
	private ResultSet rs;

	public calendarDAO() {
		try {
			String jdbcURL = "jdbc:mysql://parksion0213.cafe24.com:3306/parksion0213?serverTimezone=Asia/Seoul";
			String dbID="parksion0213";
			String dbPassword="as02130314love^^";

			Class.forName("com.mysql.jdbc.Driver");

			conn = DriverManager.getConnection(jdbcURL, dbID, dbPassword);
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	public int Next() {
		String SQL = "SELECT calendar_Num FROM calendar ORDER BY calendar_Num DESC";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				return rs.getInt(1) + 1;
			}
			return 1;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1;
	}

	public int write(String calendar_T, String calendar_S, String calendar_E) {
		String SQL = "INSERT INTO calendar VALUES(?,?,?,?)";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, Next());
			pstmt.setString(2, calendar_T);
			pstmt.setString(3, calendar_S);
			pstmt.setString(4, calendar_E);
			return pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1;
	}

	public ArrayList<calendarDTO> List() {
		String SQL = "SELECT * FROM calendar";
		ArrayList<calendarDTO> list = new ArrayList<calendarDTO>();
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				calendarDTO calendar = new calendarDTO();
				calendar.setCalendar_Num(rs.getInt(1));
				calendar.setCalendar_T(rs.getString(2));
				calendar.setCalendar_S(rs.getString(3));
				calendar.setCalendar_E(rs.getString(4));
				list.add(calendar);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	public int delete(String calendar_Num) {
		String SQL = "DELETE FROM calendar WHERE calendar_Num = ?";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, calendar_Num);
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1;
	}

}