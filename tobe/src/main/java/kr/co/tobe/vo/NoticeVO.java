package kr.co.tobe.vo;

import java.sql.Timestamp;

import lombok.Data;

@Data
public class NoticeVO {

	private int notice_no;
	private String n_title;
	private String n_content;
	private Timestamp n_writedate;
	
	private int startIdx;
	private int page;
}
