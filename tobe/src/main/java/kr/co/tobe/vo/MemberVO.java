package kr.co.tobe.vo;

import java.sql.Timestamp;

import lombok.Data;

@Data
public class MemberVO {

	private int memberNo;
	private String name;
	private String id;
	private String pwd;
	private String email;
	private int gender;
	private String birthday;
	private String hp;
	private Timestamp registdate;
	private String zipcode;
	private String addr1;
	private String addr2;
	private int point;
	private boolean emailAgree;
	private boolean userValidity;
	
	private int startIdx;
	private int page;
}
