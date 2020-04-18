package board_faq;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class BoardDAO2 {

	private Connection conn;
	private ResultSet rs;
	
	public BoardDAO2() {
		try {
			String jdbcURL = "jdbc:mysql://parksion0213.cafe24.com:3306/parksion0213?serverTimezone=Asia/Seoul";
			String dbID="parksion0213";
			String dbPassword="as02130314love^^";
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(jdbcURL, dbID, dbPassword);
		}catch (Exception e) {
			e.printStackTrace();
			
		}
	}
	
	public String getDate() {
		String SQL = "SELECT NOW()";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				return rs.getString(1);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "";
	}

	public int getNext() {
		String SQL = "SELECT boardNum FROM board_faq ORDER BY boardNum DESC";
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

	public int write(String boardTitle, String boardContent) {
		String SQL = "INSERT INTO board_faq VALUES(?,?,?,?,?,?)";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, getNext());
			pstmt.setString(2, boardTitle);
			pstmt.setString(3, boardContent);
			pstmt.setInt(4, 1);
			pstmt.setString(5, getDate());
			pstmt.setInt(6, 1);
			return pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1;
	}

	public ArrayList<BoardDTO2> getList(int pageNumber) {
		String SQL = "SELECT * FROM board_faq WHERE boardNum < ? AND boardView = 1 ORDER BY boardNum DESC LIMIT 10";
		ArrayList<BoardDTO2> list = new ArrayList<BoardDTO2>();
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, getNext() - (pageNumber - 1) * 10);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				BoardDTO2 board = new BoardDTO2();
				board.setBoardNum(rs.getInt(1));
				board.setBoardTitle(rs.getString(2));
				board.setBoardContent(rs.getString(3));
				board.setBoardView(rs.getInt(4));
				board.setBoardDate(rs.getString(5));
				board.setBoardAvailable(rs.getInt(6));
				list.add(board);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	public BoardDTO2 getBbs(int boardNum) {
		String SQL = "SELECT * FROM board_faq WHERE boardNum = ?";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, boardNum);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				BoardDTO2 board = new BoardDTO2();
				board.setBoardNum(rs.getInt(1));
				board.setBoardTitle(rs.getString(2));
				board.setBoardContent(rs.getString(3));
				board.setBoardView(rs.getInt(4));
				board.setBoardDate(rs.getString(5));
				board.setBoardAvailable(rs.getInt(6));
				return board;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	public int count() {
		String SQL = "select count(*) as cnt from board_faq where boardView = 1";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				return rs.getInt(1);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1;
	}
    
    public int update(int boardNum, String boardTitle, String boardContent) {
           String SQL = "UPDATE board_faq SET boardTitle=?, boardContent=? WHERE boardNum=?";

    	   try {
   			PreparedStatement pstmt = conn.prepareStatement(SQL);

   			pstmt.setString(1, boardTitle);
   			pstmt.setString(2, boardContent);
   			pstmt.setInt(3, boardNum);
   			
    	    return pstmt.executeUpdate();
    	      
    	   } catch (SQLException e) {
    	      e.printStackTrace();
    	   } 
    	   return -1;
    	}
    
	public int delete(int boardNum) {
		String SQL = "UPDATE board_faq SET boardView = 0 WHERE boardNum = ?";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, boardNum);
			return pstmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1;
	}
	
	public int getSeq() {
        int result = 1;
        
        try {
            // 시퀀스 값을 가져온다.
            StringBuffer SQL = new StringBuffer();
            SQL.append("SELECT boardNum.NEXTVAL FROM board_faq");
            PreparedStatement pstmt = conn.prepareStatement(SQL.toString());
            rs = pstmt.executeQuery();
            
            if(rs.next())
            	
            result = rs.getInt(1);
 
        } catch (Exception e) {
            throw new RuntimeException(e.getMessage());
        }
        return result;    
    } // end getSeq

	
}

