package DAO;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import DBUtil.DataSourceUtils;
import POJO.Member;

public class LoginDao {

	/** 登录管理员
	 * @param m
	 * @return
	 * @throws SQLException
	 */
	public Member loginAdmin(Member m) throws SQLException {
		// TODO Auto-generated method stub
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource()) ;
		String sql = "select * from member where admin = ? and adminpsd = ?" ;
		return qr.query(sql,new BeanHandler(Member.class), m.getUsername(),m.getPassword());
	}

	/** 登录用户注册 找到成员
	 * @param m
	 * @return
	 * @throws SQLException
	 */
	public Member loginNormal(Member m) throws SQLException {
		// TODO Auto-generated method stub
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource()) ;
		String sql = "select * from member where username = ? and password = ?" ;
		return qr.query(sql,new BeanHandler(Member.class), m.getUsername(),m.getPassword()) ;
	}

	/** 管理员找到所有的普通用户
	 * @return
	 * @throws SQLException
	 */
	public List<Member> findNormalUser() throws SQLException {
		// TODO Auto-generated method stub
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource()) ;
		String sql = "select * from member where status = 0" ;
		return qr.query(sql, new BeanListHandler(Member.class)) ;
	}

}
