package com.javassem.domain;



import java.time.LocalDateTime;
import java.util.Date;

public class BoardVO {
/*
 BOARD_NO                                  NOT NULL NUMBER(8)
 LOC_CAT_NO                                NOT NULL NUMBER(8)
 JOBTYPE_SCAT_NO                           NOT NULL NUMBER(8)
 USER_NO                                   NOT NULL NUMBER(8)
 BOARD_CAT_NO                              NOT NULL NUMBER(8)
 BOARD_TITLE                               NOT NULL VARCHAR2(512)
 BOARD_CONTENT                             NOT NULL VARCHAR2(1024)
 BOARD_DATE                                NOT NULL DATE
 BOARD_VIEWS                               NOT NULL NUMBER(8)
 BOARD_PICTURE                                      VARCHAR2(100)

 */
	private int BOARD_NO;
	private int LOC_CAT_NO;
	private int JOBTYPE_SCAT_NO ;
	private int USER_NO;
	private int BOARD_CAT_NO;
	private String BOARD_TITLE;
	private String BOARD_CONTENT;
	private LocalDateTime BOARD_DATE;
	private String BOARD_VIEWS;
	private String BOARD_PICTURE;
	
	private String BOARD_IMG;
	
	
	public int getBOARD_NO() {
		return BOARD_NO;
	}
	public void setBOARD_NO(int bOARD_NO) {
		BOARD_NO = bOARD_NO;
	}
	public int getLOC_CAT_NO() {
		return LOC_CAT_NO;
	}
	public void setLOC_CAT_NO(int lOC_CAT_NO) {
		LOC_CAT_NO = lOC_CAT_NO;
	}
	public int getJOBTYPE_SCAT_NO() {
		return JOBTYPE_SCAT_NO;
	}
	public void setJOBTYPE_SCAT_NO(int jOBTYPE_SCAT_NO) {
		JOBTYPE_SCAT_NO = jOBTYPE_SCAT_NO;
	}
	public int getUSER_NO() {
		return USER_NO;
	}
	public void setUSER_NO(int uSER_NO) {
		USER_NO = uSER_NO;
	}
	public int getBOARD_CAT_NO() {
		return BOARD_CAT_NO;
	}
	public void setBOARD_CAT_NO(int bOARD_CAT_NO) {
		BOARD_CAT_NO = bOARD_CAT_NO;
	}
	public String getBOARD_TITLE() {
		return BOARD_TITLE;
	}
	public void setBOARD_TITLE(String bOARD_TITLE) {
		BOARD_TITLE = bOARD_TITLE;
	}
	public String getBOARD_CONTENT() {
		return BOARD_CONTENT;
	}
	public void setBOARD_CONTENT(String bOARD_CONTENT) {
		BOARD_CONTENT = bOARD_CONTENT;
	}

	public String getBOARD_VIEWS() {
		return BOARD_VIEWS;
	}
	public void setBOARD_VIEWS(String bOARD_VIEWS) {
		BOARD_VIEWS = bOARD_VIEWS;
	}
	public String getBOARD_PICTURE() {
		return BOARD_PICTURE;
	}
	public void setBOARD_PICTURE(String bOARD_PICTURE) {
		BOARD_PICTURE = bOARD_PICTURE;
	}
	public LocalDateTime getBOARD_DATE() {
		return BOARD_DATE;
	}
	public void setBOARD_DATE(LocalDateTime bOARD_DATE) {
		BOARD_DATE = bOARD_DATE;
	}
	public String getBOARD_IMG() {
		return BOARD_IMG;
	}
	public void setBOARD_IMG(String bOARD_IMG) {
		BOARD_IMG = bOARD_IMG;
	}
	
	
	
}
