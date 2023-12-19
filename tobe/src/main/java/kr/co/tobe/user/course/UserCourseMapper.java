package kr.co.tobe.user.course;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.co.tobe.vo.CourseVO;
import kr.co.tobe.vo.CqnaVO;

@Mapper
public interface UserCourseMapper {
	List<CourseVO> lectureSelect(CourseVO CVO);
	int qnaUpdate(CqnaVO vo);
	int qnaDelete(int no);
	int qnaInsert(CqnaVO vo);
	int updateGno(int no);
}
