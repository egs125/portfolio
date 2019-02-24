package com.home.myPortfolio.user.dao;

import java.util.ArrayList;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.home.myPortfolio.common.dao.AbstractDAO;

@Repository
public class UserDao extends AbstractDAO {

	@Autowired private SqlSession sql;
	
	private static final String NAMESPACE = "userMapper.";

	public String userLogin(Map<String, String> param) {
		return sql.selectOne(NAMESPACE + "userLogin", param);
	}
}
