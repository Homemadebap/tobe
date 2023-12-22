package kr.co.tobe.user.course;

import java.util.List;
import java.util.Map;

import kr.co.tobe.vo.CourseVO;
import kr.co.tobe.vo.CqnaVO;
import kr.co.tobe.vo.QnaVO;

public interface UserCourseService {
	List<CourseVO> getLectureList(CourseVO CVO);
	int cQnaInsert(CqnaVO vo);//, MultipartFile file, HttpServletRequest request);
	int cQnaUpdate(CqnaVO vo);//, MultipartFile file, HttpServletRequest request);
	int cQnaDelete(CqnaVO vo);//, HttpServletRequest request);
	CourseVO getSelectCourse(int no);
	List<CourseVO> getComplexSelect(CourseVO CVO);
	List<CqnaVO> cqnaDetailList(int courseNo);
	CourseVO getlectureDetail(int courseNo);
}
