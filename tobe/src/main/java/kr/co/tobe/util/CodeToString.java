package kr.co.tobe.util;

public class CodeToString {
	public static String educationToStirng (int i) {
		if(i ==1) {
			return "해커스";
		}else if(i== 2) {
			return "파고다";
		}else if(i== 3) {
			return "YBM";
		}
		return null;
	}
	
	public static String areaToStirng (int i) {
		if(i ==1) {
			return "서울";
		}else if(i== 32) {
			return "인천";
		}else if(i== 51) {
			return "부산";
		}else if(i== 53) {
			return "대구";
		}
		return null;
	}
	
	public static String branchToStirng (int i) {
		if(i ==1) {
			return "강남";
		}else if(i== 2) {
			return "종로";
		}else if(i== 3) {
			return "종로e4u";
		}else if(i== 4) {
			return "신촌";
		}else if(i== 5) {
			return "건대";
		}else if(i== 6) {
			return "대구동성로";
		}else if(i== 7) {
			return "서면";
		}else if(i== 8) {
			return "부산대";
		}else if(i== 9) {
			return "대연";
		}else if(i== 10) {
			return "부산광복";
		}else if(i== 11) {
			return "인천센터";
		}
		return null;
	}
	
	public static String subjectToStirng (int i) {
		if(i ==1) {
			return "토익";
		}else if(i== 2) {
			return "토스";
		}else if(i== 3) {
			return "토플";
		}else if(i== 4) {
			return "아이엘츠";
		}else if(i== 5) {
			return "텝스";
		}else if(i== 6) {
			return "오픽";
		}else if(i== 7) {
			return "gre";
		}else if(i== 8) {
			return "g-telp";
		}
		return null;
	}

	public static String levelToStirng (int i) {
		return Integer.toString(i).substring(1);
	}
	
	public static String genderToStirng (int i) {
		if(i ==1) {
			return "남자";
		}else if(i== 2) {
			return "여자";
		}
		return null;
	}
}
