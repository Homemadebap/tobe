package kr.co.tobe.vo;

import java.sql.Timestamp;

import lombok.Data;

@Data
public class ReviewVO {
	
	private int review_no;
	private String member_no;
	private int course_no;
	private String r_title;
	private String r_content;
	private Timestamp r_writedate;
	private int r_rating;
	
	private int startIdx;
	private int page;
	
}
