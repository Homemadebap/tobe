package kr.co.tobe.user.course;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import kr.co.tobe.vo.CourseVO;
import kr.co.tobe.vo.CqnaVO;
import kr.co.tobe.vo.QnaVO;
import kr.co.tobe.vo.ReviewVO;

@Mapper
public interface UserCourseMapper {
	List<CourseVO> lectureSelect(CourseVO CVO);
	int qnaUpdate(CqnaVO vo);
	int qnaDelete(int no);
	int qnaInsert(CqnaVO vo);
	int updateGno(int no);
	CourseVO courseSelect(int no);
	List<CourseVO> complexSelect(CourseVO CVO);
	int complexCount(CourseVO CVO);
	
	/*강좌 상세 문의*/
	List<CqnaVO> cqnaDetailList(Map<String, Object> params);
	int cqnaCount(Map<String, Object> params);
	
//	int cqnaCount(int courseNo);
	CourseVO lectureDetail(int course_no);
//	List<ReviewVO> ReviewList(int course_no);
	
	/*강좌 상세 후기*/
	List<ReviewVO> ReviewList(Map<String, Object> params);
	int reviewCount(Map<String, Object> params);
	
	CqnaVO cqnaDetail(int no);
	
//	CqnaVO view(CqnaVO vo);
	CqnaVO view(int cqna_no);
	
	
	CourseVO selectInfoByCourse(int course_no);

	CourseVO courseDetail(int course_no);
}
