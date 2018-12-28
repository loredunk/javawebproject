package DAO;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import DBUtil.DataSourceUtils;
import POJO.Member;

public class DormDAO {
	public List<Member> findDorm(int dorm) throws SQLException {
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource()) ;
		String sql = "select username,name,sex,age,classId,tel from member where dorm=?" ;
		return qr.query(sql, new BeanListHandler(Member.class),dorm) ;
	}
	}

