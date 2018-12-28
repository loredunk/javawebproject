package DAO;

import java.io.UnsupportedEncodingException;
import java.sql.Connection;
import java.sql.SQLException;

import org.apache.commons.dbutils.QueryRunner;

import DBUtil.DataSourceUtils;
import POJO.Member;

public class RegisterDao {

	public void regis(Member m) throws SQLException {
		// TODO Auto-generated method stub
			QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource()) ;
			String sql = "insert into member(name,sex,age,classId,dorm,birthday,tel,username,password) values(?,?,?,?,?,?,?,?,?)" ;
				qr.update(sql,m.getName(),m.getSex(),m.getAge(),m.getClassId(),m.getDorm(),m.getBirthday(),m.getTel(),m.getUsername(),m.getPassword()) ;
			
	}

}
