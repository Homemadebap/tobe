package kr.co.tobe.chiefAdmin.course;

import org.apache.ibatis.annotations.Mapper;

import kr.co.tobe.vo.CourseVO;
import kr.co.tobe.vo.MemberVO;

@Mapper
public interface ChiefCourseMapper {
	
	int insert(CourseVO vo);
	int courseUpdate (CourseVO vo);
	CourseVO courseModDetail(int no);
}
