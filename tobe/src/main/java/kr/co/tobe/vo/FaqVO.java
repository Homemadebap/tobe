package kr.co.tobe.vo;

import java.sql.Timestamp;

import lombok.Data;

@Data
public class FaqVO {

	private int faq_no;
	private String f_title;
	private String f_content;
	
	private int startIdx;
	private int page;
}
