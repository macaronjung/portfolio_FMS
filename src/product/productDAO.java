package product;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class productDAO {

	private Connection conn;
	private ResultSet rs;

	public productDAO() {
		
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
	
	public ArrayList<productDTO> List(){
		String SQL = "SELECT * FROM store";
		ArrayList<productDTO> list = new ArrayList<productDTO>();
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			rs= pstmt.executeQuery();
			while (rs.next()) {
				productDTO product = new productDTO();
				product.setPnum(rs.getInt(1));
				product.setPname(rs.getString(2));
				product.setPprice(rs.getString(3));
				product.setPinfo(rs.getString(4));
				product.setPfile(rs.getString(5));
				list.add(product);
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
}
