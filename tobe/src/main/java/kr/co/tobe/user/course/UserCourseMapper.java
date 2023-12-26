package kr.co.tobe.user.course;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import kr.co.tobe.vo.CourseVO;
import kr.co.tobe.vo.CqnaVO;
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
	List<CqnaVO> cqnaDetailList(Map<String, Object> params);
	int cqnaCount(Map<String, Object> params);
//	int cqnaCount(int courseNo);
	CourseVO lectureDetail(int course_no);
	List<ReviewVO> ReviewList(int course_no);
}
