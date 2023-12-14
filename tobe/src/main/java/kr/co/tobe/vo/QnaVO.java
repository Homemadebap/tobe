package kr.co.tobe.vo;

import java.sql.Timestamp;

import lombok.Data;

@Data
public class QnaVO {

	private int qna_no;
	private int course_no;
	private int member_no;
	private String q_title;
	private String q_content;
	private String q_filename_org;
	private String q_filename_real;
	private Timestamp q_writedate;
	private int gno;
	private int ono;
	private int nested;
	
	private int startIdx;
	private int page;
}
