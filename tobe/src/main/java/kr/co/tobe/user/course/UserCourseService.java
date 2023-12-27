package kr.co.tobe.user.course;

import java.util.List;
import java.util.Map;

import kr.co.tobe.vo.CourseVO;
import kr.co.tobe.vo.CqnaVO;
import kr.co.tobe.vo.QnaVO;
import kr.co.tobe.vo.ReviewVO;

public interface UserCourseService {
	List<CourseVO> getLectureList(CourseVO CVO);
	int cQnaInsert(CqnaVO vo);//, MultipartFile file, HttpServletRequest request);
	int cQnaUpdate(CqnaVO vo);//, MultipartFile file, HttpServletRequest request);
	int cQnaDelete(CqnaVO vo);//, HttpServletRequest request);
	CourseVO getSelectCourse(int no);
	List<CourseVO> getComplexSelect(CourseVO CVO);
	
	/*강좌 상세 문의*/
	List<CqnaVO> getCqnaDetailList(int course_no, int startIdx, int itemsPerPage);
    int getCqnaCount(int course_no);
	CourseVO getlectureDetail(int course_no);
//	List<ReviewVO> ReviewList(int course_no);
	
	/*강좌 상세 후기*/
	List<ReviewVO> getReviewList(int course_no, int startIdx, int itemsPerPage);
    int getreviewCount(int course_no);
    
    CqnaVO cqnaDetail(CqnaVO vo);
}
