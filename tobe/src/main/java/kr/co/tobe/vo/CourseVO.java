package kr.co.tobe.vo;

import java.sql.Date;
import java.sql.Timestamp;

import kr.co.tobe.util.CodeToString;
import lombok.Data;
import lombok.ToString;

@Data
@ToString
public class CourseVO {

	private int course_no;
	private int ad_no;
	private int education;
	private int area;
	private int branch;
	private int subject;
	private int level;
	private int timezone;
	private int mon;
	private int tue;
	private int wed;
	private int thu;
	private int fri;
	private int sat;
	private int sun;
	private String teacher1;
	private String teacher2;
	private String startday;
	private String endday;
	private Timestamp postday;
	private String cname;
	private String detail;
	private String time;
	private int price_org;
	private int price_sale;
	private int price;
	private String teacher_img_org;
	private String teacher_img_real;
	private double course_rating; 
	
	
}