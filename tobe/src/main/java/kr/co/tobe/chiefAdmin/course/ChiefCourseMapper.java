package kr.co.tobe.chiefAdmin.course;

import org.apache.ibatis.annotations.Mapper;

import kr.co.tobe.vo.CourseVO;

@Mapper
public interface ChiefCourseMapper {
	
	int insert(CourseVO vo);
}
