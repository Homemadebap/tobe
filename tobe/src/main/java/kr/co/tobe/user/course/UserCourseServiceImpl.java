package kr.co.tobe.user.course;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.tobe.vo.CourseVO;
import kr.co.tobe.vo.CqnaVO;

@Service
public class UserCourseServiceImpl implements UserCourseService {

	@Autowired
	UserCourseMapper mapper;
	
	public List<CourseVO> getLectureList(CourseVO CVO) {
		return mapper.lectureSelect(CVO);
	}

	@Override
	public int cQnaInsert(CqnaVO vo) {
		int r = mapper.qnaInsert(vo);
		if (r > 0) mapper.updateGno(vo.getCqna_no());
		return r;
	}

	@Override
	public int cQnaUpdate(CqnaVO vo) {
		int r = mapper.qnaUpdate(vo);
		return r;
	}

	@Override
	public int cQnaDelete(CqnaVO vo) {
		return mapper.qnaDelete(vo.getCqna_no());
	}
		
}
