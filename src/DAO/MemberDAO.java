package DAO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;

import DBUtil.DBUtil;
import DBUtil.DataSourceUtils;
import POJO.Member;


public class MemberDAO {

	public void delete(int id) throws SQLException {
		// TODO Auto-generated method stub
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource()) ;//创建QueryRunner,连接数据库
		String sql = "delete from member where id = ?" ;//编写sql
		qr.update(sql,id) ;//执行sql
	}

	public void update(Member m) throws SQLException {
		// TODO Auto-generated method stub
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource()) ;
		String sql = "update member set  password = ? ,tel = ? ,hobby = ? , email = ? where id = ?" ;
		qr.update(sql,m.getPassword(),m.getTel(),m.getHobby(),m.getEmail(),m.getId()) ;
		
	}
	public void adminupdate(Member m) throws SQLException {
		// TODO Auto-generated method stub
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource()) ;
		String sql = "update member set  name=?,age=?,birthday=?,classId=?,dorm=?,password = ? ,tel = ? ,hobby = ? , email = ? where id = ?" ;
		qr.update(sql,m.getName(),m.getAge(),m.getBirthday(),m.getClassId(),m.getDorm(),m.getPassword(),m.getTel(),m.getHobby(),m.getEmail(),m.getId()) ;
		
	}

	public Member getMemberById(Integer mid) throws SQLException {
		// TODO Auto-generated method stub
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource()) ;
		String sql = "select * from member where id = ?" ;
		return qr.query(sql, new BeanHandler(Member.class),mid) ;
	}
		
	}


