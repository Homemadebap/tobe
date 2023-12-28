package kr.co.tobe.chiefAdmin.course;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.co.tobe.vo.CourseVO;

@Mapper
public interface ChiefCourseMapper {
	
	int insert(CourseVO vo);
	int courseUpdate (CourseVO vo);
	CourseVO modcourse(int no);
	
	//
	int courseCount(CourseVO vo);
	List<CourseVO> courseList(CourseVO vo);
}
