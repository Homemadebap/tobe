package kr.co.tobe.vo;

import java.sql.Timestamp;

import lombok.Data;

@Data
public class EmailVO {

	private int email_no;
	private int admin_no;
	private int member_no;
	private int e_type;
	private String e_content;
	private Timestamp e_senddate;
	
	private int startIdx;
	private int page;
}
