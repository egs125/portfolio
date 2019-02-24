package com.home.myPortfolio.user.vo;

import java.io.Serializable;

public class UsrVO implements Serializable {

	private String usrId;
	private String usrPwd;
	private String usrNm;
	
	public UsrVO () {}
	
	public UsrVO(String id, String nm) {
		this.usrId = id;
		this.usrNm = nm;
	}

	public String getUsrId() {
		return usrId;
	}

	public void setUsrId(String usrId) {
		this.usrId = usrId;
	}

	public String getUsrPwd() {
		return usrPwd;
	}

	public void setUsrPwd(String usrPwd) {
		this.usrPwd = usrPwd;
	}

	public String getUsrNm() {
		return usrNm;
	}

	public void setUsrNm(String usrNm) {
		this.usrNm = usrNm;
	}
	
}
