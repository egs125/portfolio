package com.home.myPortfolio.impl;

import java.util.ArrayList;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.home.myPortfolio.user.dao.UserDao;
import com.home.myPortfolio.user.svc.UserSvc;

@Service
public class UserSvcImpl implements UserSvc{

	@Autowired
	private UserDao userDao;

	@Override
	public String userLogin(Map<String, String> param) {
		return userDao.userLogin(param);
	}
	
}
