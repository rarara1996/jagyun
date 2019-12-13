package projectDiagram.notice.model.dao;

import java.sql.Connection;
import java.util.ArrayList;

import projectDiagram.notice.model.vo.Notice;

public class NoticeDao {

	public int deleteNotice(Connection conn, int nno) {
		int result=0;
		return result;
	}

	public Notice selectNotice(Connection conn, int nno) {
		Notice notice = null;
		return notice;
	}

	public int insertNotice(Connection conn, Notice n) {
		int result = 0;
		return result;
	}

	public ArrayList<Notice> selectList(Connection conn) {
		ArrayList<Notice> list = new ArrayList<>();
		return list;
	}

	public int updateNotice(Connection conn, Notice n) {
		int result = 0;
		return result;
	}

}
