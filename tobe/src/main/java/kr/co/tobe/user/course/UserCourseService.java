package kr.co.tobe.user.course;

import java.util.List;

import kr.co.tobe.vo.CourseVO;

public interface UserCourseService {
	List<CourseVO> getLectureList(CourseVO CVO);
}
