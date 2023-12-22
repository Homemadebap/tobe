package kr.co.tobe.user.course;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

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
	List<CqnaVO> cqnaDetailList(int courseNo);
//	int cqnaCount(int courseNo);
	CourseVO lectureDetail(int courseNo);
}
