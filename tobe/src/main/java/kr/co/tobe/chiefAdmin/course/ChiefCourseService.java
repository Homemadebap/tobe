package kr.co.tobe.chiefAdmin.course;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.multipart.MultipartFile;

import kr.co.tobe.vo.CourseVO;

public interface ChiefCourseService {

	boolean insert(CourseVO vo, MultipartFile file, HttpServletRequest request);
}
