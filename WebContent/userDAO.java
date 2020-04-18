package user;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import detail.detailDTO;

public class userDAO {
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;

	public userDAO() {
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

	public int login(String User_ID, String User_PW) {

		String SQL = "SELECT User_PW, User_member FROM signup WHERE User_ID = ?";

		try {

			pstmt = conn.prepareStatement(SQL);

			pstmt.setString(1, User_ID);
			
			rs = pstmt.executeQuery();

			if (rs.next()) {
				if (rs.getString(1).equals(User_PW)) {
					return 1;
					
				}
					

				else {
					
				}

					return 0;

			}

			return -1;

		} catch (Exception e) {

			e.printStackTrace();

		}

		return -2;

	}
	public userDTO grade(String User_ID) {

		String SQL = "SELECT User_member FROM signup WHERE User_ID = ?";

		try {

			pstmt = conn.prepareStatement(SQL);

			pstmt.setString(1, User_ID);
			
			rs = pstmt.executeQuery();

			if (rs.next()) {
				userDTO dto = new userDTO();
				dto.setUser_member(rs.getString(1));
				return dto;
			}
		} catch (Exception e) {

			e.printStackTrace();

		}

		return null;

	}
	
	public int sign(String User_ID, String User_PW, String User_Name, String User_year, String User_month,
			String User_day, String User_Email, String User_phone1, String User_phone2, String User_phone3) {

		String SQL = "INSERT INTO signup(User_ID, User_PW, User_Name, User_year, User_month, User_day, User_Email, User_phone1, User_phone2, User_phone3, User_member) VALUES(?,?,?,?,?,?,?,?,?,?,?)";

		try {

			pstmt = conn.prepareStatement(SQL);

			pstmt.setString(1, User_ID);

			pstmt.setString(2, User_PW);

			pstmt.setString(3, User_Name);

			pstmt.setString(4, User_year);

			pstmt.setString(5, User_month);

			pstmt.setString(6, User_day);

			pstmt.setString(7, User_Email);

			pstmt.setString(8, User_phone1);

			pstmt.setString(9, User_phone2);

			pstmt.setString(10, User_phone3);
			
			pstmt.setString(11, "MEMBER");

			return pstmt.executeUpdate();

		} catch (Exception e) {

			e.printStackTrace();

		}
		return -1;

	}

	public ArrayList<userDTO> memberList() {

		ArrayList<userDTO> list = new ArrayList<userDTO>();

		try {

			String sql = "select * from signup";

			pstmt = conn.prepareStatement(sql);

			rs = pstmt.executeQuery();

			while (rs.next()) {

				userDTO dto = new userDTO();
				dto.setUser_Name(rs.getString("User_Name"));
				dto.setUser_ID(rs.getString("User_ID"));
				dto.setUser_PW(rs.getString("User_PW"));
				dto.setUser_year(rs.getString("User_year"));
				dto.setUser_month(rs.getString("User_month"));
				dto.setUser_day(rs.getString("User_day"));
				dto.setUser_phone1(rs.getString("User_phone1"));
				dto.setUser_phone2(rs.getString("User_phone2"));
				dto.setUser_phone3(rs.getString("User_phone3"));
				dto.setUser_Email(rs.getString("User_Email"));
				list.add(dto);

			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	public int update(String User_ID, String User_PW, String User_Name, String User_Email, String User_phone1, String User_phone2,
			String User_phone3) {
		String SQL = "UPDATE signup SET User_PW=?, User_Name=?, User_Email=?, User_phone1=?, User_phone2=?, User_phone3=? WHERE User_ID = ?";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, User_PW);
			pstmt.setString(2, User_Name);
			pstmt.setString(3, User_Email);
			pstmt.setString(4, User_phone1);
			pstmt.setString(5, User_phone2);
			pstmt.setString(6, User_phone3);
			pstmt.setString(7, User_ID);

			return pstmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1;
	}
	
	public userDTO get(String userID) {
		String SQL = "SELECT * FROM signup WHERE User_ID = ?";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, userID);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				userDTO dto = new userDTO();
				dto.setUser_ID(rs.getString(1));
				dto.setUser_PW(rs.getString(2));
				dto.setUser_Name(rs.getString(3));
				dto.setUser_year(rs.getString(4));
				dto.setUser_month(rs.getString(5));
				dto.setUser_day(rs.getString(6));
				dto.setUser_Email(rs.getString(7));
				dto.setUser_phone1(rs.getString(8));
				dto.setUser_phone2(rs.getString(9));
				dto.setUser_phone3(rs.getString(10));
				return dto;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
}
