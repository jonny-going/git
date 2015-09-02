package priv.gzz.web.search.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import priv.gzz.web.search.bean.BBSContent;
import priv.gzz.web.search.util.StringUtil;

public class MysqlDao {
	private static final String DB_URL = "jdbc:mysql://192.168.0.40:3306/gong?user=gong&password=going&useUnicode=true&&characterEncoding=utf8&autoReconnect=true";
	private static final String DB_USER = "gong";
	private static final String DB_PASSWORD = "going";

	public static boolean saveBBS(BBSContent bbs) {
		Connection conn = null;
		PreparedStatement stmt = null;
		boolean result = false;
		String sql = null;
		try {
			conn = openConn();
			sql = "insert into bbscontent values(?,?,?,?,?,?,?)";
			stmt = conn.prepareStatement(sql);
			stmt.setLong(1, bbs.getDID());
			stmt.setString(2, bbs.getUrl());
			stmt.setString(3, bbs.getTime());
			stmt.setString(4, bbs.getTitle());
			stmt.setString(5, bbs.getAuthor());
			stmt.setString(6, StringUtil.subString(bbs.getContent(), 0, 255));
			stmt.setString(7, bbs.getSnapshot());
			result = stmt.execute();
		} catch (SQLException e) {
			System.out.println("数据操作错误");
			e.printStackTrace();
		}
		try {
			closeConn(conn);
			if (stmt != null) {
				stmt.close();
				stmt = null;
			}
		} catch (Exception e) {
			System.out.println("释放数据库资源出错");
			e.printStackTrace();
		}
		return result;
	}

	public static List<BBSContent> queryBbsList(List<Long> didList) {
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		StringBuilder sql = new StringBuilder();
		List<BBSContent> bbsList = new ArrayList<BBSContent>();
		try {
			conn = openConn();
			sql.append("select * from bbscontent where did in (");
			for (Long did : didList) {
				sql.append(did).append(",");
			}
			sql.deleteCharAt(sql.length() - 1);
			sql.append(")");
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql.toString());
			while (rs.next()) {
				BBSContent bbs = new BBSContent();
				bbs.setAuthor(rs.getString("author"));
				bbs.setTitle(rs.getString("title"));
				bbs.setDID(rs.getLong("did"));
				bbs.setTime(rs.getString("time"));
				bbs.setUrl(rs.getString("url"));
				bbs.setContent(StringUtil.subString(rs.getString("content"), 0, 200));
				bbs.setSnapshot(rs.getString("snapshot"));
				bbsList.add(bbs);
			}
		} catch (SQLException e) {
			System.out.println("数据操作错误");
			e.printStackTrace();
		}
		try {
			closeConn(conn);
			if (rs != null) {
				rs.close();
				rs = null;
			}
			if (stmt != null) {
				stmt.close();
				stmt = null;
			}
		} catch (Exception e) {
			System.out.println("释放数据库资源出错");
			e.printStackTrace();
		}
		return bbsList;
	}

	public static BBSContent queryBbsByDid(Long did) {
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		String sql = null;
		BBSContent bbs = new BBSContent();
		try {
			conn = openConn();
			sql = "select * from bbscontent where did=?";
			stmt = conn.prepareStatement(sql);
			stmt.setLong(1, did);
			rs = stmt.executeQuery();
			while (rs.next()) {
				bbs.setAuthor(rs.getString("author"));
				bbs.setTitle(rs.getString("title"));
				bbs.setDID(rs.getLong("did"));
				bbs.setTime(rs.getString("time"));
				bbs.setUrl(rs.getString("url"));
				bbs.setSnapshot(rs.getString("snapshot"));
			}
		} catch (SQLException e) {
			System.out.println("数据操作错误");
			e.printStackTrace();
		}
		try {
			closeConn(conn);
			if (rs != null) {
				rs.close();
				rs = null;
			}
			if (stmt != null) {
				stmt.close();
				stmt = null;
			}
		} catch (Exception e) {
			System.out.println("释放数据库资源出错");
			e.printStackTrace();
		}
		return bbs;
	}

	public static Connection openConn() {
		Connection conn = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
		} catch (SQLException e) {
			System.out.println("数据库链接错误");
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			System.out.println("驱动加载错误");
			e.printStackTrace();
		}
		return conn;
	}

	public static void closeConn(Connection conn) {
		// 关闭数据库
		try {
			if (conn != null) {
				conn.close();
				conn = null;
			}
		} catch (Exception e) {
			System.out.println("数据库关闭错误");
			e.printStackTrace();
		}
	}
}
