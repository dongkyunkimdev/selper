package com.javassem.domain;

import java.util.Date;

public class ReplyVO {
/*insert into comment_info(comment_no, user_no, board_no, comment_content, comment_date)
 values(1,1, 1120, '댓글내용', sysdate);*/
	
	private int COMMENT_NO;
	private int USER_NO;
	private int BOARD_NO;
	private String COMMENT_CONTENT;
	private Date COMMENT_DATE;
	public int getCOMMENT_NO() {
		return COMMENT_NO;
	}
	public void setCOMMENT_NO(int cOMMENT_NO) {
		COMMENT_NO = cOMMENT_NO;
	}
	public int getUSER_NO() {
		return USER_NO;
	}
	public void setUSER_NO(int uSER_NO) {
		USER_NO = uSER_NO;
	}
	public int getBOARD_NO() {
		return BOARD_NO;
	}
	public void setBOARD_NO(int bOARD_NO) {
		BOARD_NO = bOARD_NO;
	}
	public String getCOMMENT_CONTENT() {
		return COMMENT_CONTENT;
	}
	public void setCOMMENT_CONTENT(String cOMMENT_CONTENT) {
		COMMENT_CONTENT = cOMMENT_CONTENT;
	}
	public Date getCOMMENT_DATE() {
		return COMMENT_DATE;
	}
	public void setCOMMENT_DATE(Date cOMMENT_DATE) {
		COMMENT_DATE = cOMMENT_DATE;
	}

}
