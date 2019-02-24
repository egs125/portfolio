package com.home.myPortfolio.vo;

import java.io.Serializable;

public class NoteVO implements Serializable {

	private String noteNo;
	private String upperNoteNo;
	private String title;
	private String contents;
	private String writer;
	private String pwd;
	private String rgsDt;
	private String updDt;
	
	public String getNoteNo() {
		return noteNo;
	}
	public void setNoteNo(String noteNo) {
		this.noteNo = noteNo;
	}
	public String getUpperNoteNo() {
		return upperNoteNo;
	}
	public void setUpperNoteNo(String upperNoteNo) {
		this.upperNoteNo = upperNoteNo;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getRgsDt() {
		return rgsDt;
	}
	public void setRgsDt(String rgsDt) {
		this.rgsDt = rgsDt;
	}
	public String getUpdDt() {
		return updDt;
	}
	public void setUpdDt(String updDt) {
		this.updDt = updDt;
	}
	
	
}
