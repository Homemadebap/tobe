package kr.co.tobe.vo;

import java.sql.Timestamp;

import lombok.Data;

@Data
public class CqnaVO {

	private int cqna_no;
	private int course_no;
	private int member_no;
	private String cq_title;
	private String cq_content;
	private Timestamp cq_writedate;
	private int gno;
	private int ono;
	private int nested;
	
	private int startIdx;
	private int page;
	private String searchType;
	private String searchWord;
	
	private String member_name;
	   
	public CqnaVO() {
		this.page = 1;
	}
	public int getStartIdx() {
		return (page-1) * 10;
	}
}
