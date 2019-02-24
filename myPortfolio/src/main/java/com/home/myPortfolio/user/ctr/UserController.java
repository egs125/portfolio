package com.home.myPortfolio.user.ctr;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.home.myPortfolio.user.svc.UserSvc;
import com.home.myPortfolio.user.vo.UsrVO;


@Controller
public class UserController {
	
	private static final Logger logger = LoggerFactory.getLogger(UserController.class);
	
	@Autowired
	private UserSvc userSvc;
	
	@RequestMapping(value="/login")
	public String getLoginView(Model model) {
		return "login";
	}
	
	@RequestMapping(value="/userLogin")
	public String userLogin(HttpSession session, 
			Model model, HttpServletRequest request, 
			@RequestParam("id") String id,
			@RequestParam("pwd") String pwd) {

		String result = "";
		
		Map<String, String> param = new HashMap<String, String>();
		param.put("id", id);
		param.put("pwd", pwd);
		
		String loginUsr = userSvc.userLogin(param);
		if(loginUsr != null) {
			UsrVO user = new UsrVO(id, loginUsr);
			session.setAttribute("user", user);
			result = "home";
		}else {
			result = "fail";
		}
		
		return result;
	}
	
	@RequestMapping(value="/userLogout")
	public String userLogout(HttpSession session, HttpServletRequest request) {
		session = request.getSession(false);		
		if(session != null) {
			session.invalidate();
		}
		return "home";
	}
	
}
