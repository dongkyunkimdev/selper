package com.javassem.domain;

import java.util.Date;

public class messageVO {
	private int message_no;
	private int message_user1;
	private int message_user2;
	private String message_title;
	private String message_content;
	private Date message_sdate;
	private Date message_rdate;
	private String message_ck;
	
	public String getMessage_ck() {
		return message_ck;
	}
	public void setMessage_ck(String message_ck) {
		this.message_ck = message_ck;
	}
	public int getMessage_no() {
		return message_no;
	}
	public void setMessage_no(int message_no) {
		this.message_no = message_no;
	}
	public int getMessage_user1() {
		return message_user1;
	}
	public void setMessage_user1(int message_user1) {
		this.message_user1 = message_user1;
	}
	public int getMessage_user2() {
		return message_user2;
	}
	public void setMessage_user2(int message_user2) {
		this.message_user2 = message_user2;
	}
	public String getMessage_title() {
		return message_title;
	}
	public void setMessage_title(String message_title) {
		this.message_title = message_title;
	}
	public String getMessage_content() {
		return message_content;
	}
	public void setMessage_content(String message_content) {
		this.message_content = message_content;
	}
	public Date getMessage_sdate() {
		return message_sdate;
	}
	public void setMessage_sdate(Date message_sdate) {
		this.message_sdate = message_sdate;
	}
	public Date getMessage_rdate() {
		return message_rdate;
	}
	public void setMessage_rdate(Date message_rdate) {
		this.message_rdate = message_rdate;
	}

}
