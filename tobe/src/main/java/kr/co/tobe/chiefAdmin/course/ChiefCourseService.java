package kr.co.tobe.chiefAdmin.course;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.multipart.MultipartFile;

import kr.co.tobe.vo.CourseVO;
import kr.co.tobe.vo.MemberVO;

public interface ChiefCourseService {

	boolean insert(CourseVO vo, MultipartFile file, HttpServletRequest request);
	int update(CourseVO vo);
	CourseVO modcourse(int no);
	
	//
	Map<String, Object> courseListS(CourseVO vo);

}
