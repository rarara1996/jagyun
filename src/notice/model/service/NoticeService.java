 package projectDiagram.notice.model.service;

import static projectDiagram.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import projectDiagram.notice.model.dao.NoticeDao;
import projectDiagram.notice.model.vo.Notice;
public class NoticeService {

	public int deleteNotice(int nno) {
		Connection conn = getConnection();
		int result = new NoticeDao().deleteNotice(conn,nno);
		return result;
	}

	public Notice selectNotice(int nno) {
		Connection conn = getConnection();
		Notice notice = new NoticeDao().selectNotice(conn,nno);
		return notice;
	}

	public int insertNotice(Notice n) {
		Connection conn = getConnection();
		int result = new NoticeDao().insertNotice(conn,n);
		return result;
	}

	public ArrayList<Notice> selectList() {
		Connection conn = getConnection();
		ArrayList<Notice> list = new NoticeDao().selectList(conn);
		return list;
	}

	public Notice updateNotice(Notice n) {
		Connection conn = getConnection();
		int result = new NoticeDao().updateNotice(conn,n);
		Notice notice = null;
		return notice;
	}

}
