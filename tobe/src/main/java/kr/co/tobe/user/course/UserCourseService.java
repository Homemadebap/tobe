package kr.co.tobe.user.course;

import java.util.List;

import kr.co.tobe.vo.CourseVO;
import kr.co.tobe.vo.CqnaVO;

public interface UserCourseService {
	List<CourseVO> getLectureList(CourseVO CVO);
	int cQnaInsert(CqnaVO vo);//, MultipartFile file, HttpServletRequest request);
	int cQnaUpdate(CqnaVO vo);//, MultipartFile file, HttpServletRequest request);
	int cQnaDelete(CqnaVO vo);//, HttpServletRequest request);
	CourseVO getSelectCourse(int no);
	List<CourseVO> getComplexSelect(CourseVO CVO);
}
