package kr.co.tobe.user.course;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.tobe.vo.CourseVO;
import kr.co.tobe.vo.CqnaVO;
import kr.co.tobe.vo.NoticeVO;
import kr.co.tobe.vo.QnaVO;
import kr.co.tobe.vo.ReviewVO;

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

	@Override
	public CourseVO getSelectCourse(int no) {
		return mapper.courseSelect(no);
	}
	
	@Override
	public List<CourseVO> getComplexSelect(CourseVO CVO) {
		return mapper.complexSelect(CVO);
	}
	
//	@Override
//	public Map<String, Object> cqnaList(CqnaVO param) {
//		int count = mapper.cqnaCount(param); //총개수
//        int totalPage = count / 10; //총 페이지
//        if (count % 10 > 0) totalPage++;
//        System.out.println(param.getPage());
//        System.out.println(param.getStartIdx());
//        List<CqnaVO> list = mapper.cqnaList(param); //목록
//        
//        Map<String, Object> map = new HashMap<>();
//        map.put("count", count);
//        map.put("totalPage", totalPage);
//        map.put("list", list);
//        
//        //페이징
//        int endPage = (int)(Math.ceil(param.getPage()/10.0)*10);
//        int startPage = endPage - 9;
//        if (endPage > totalPage) endPage = totalPage;
//        boolean prev = startPage > 1;
//        boolean next = endPage < totalPage;
//        map.put("endPage", endPage);
//        map.put("startPage", startPage);
//        map.put("prev", prev);
//        map.put("next", next);
//		return map;
//	}
	
	@Override
	public CqnaVO cqnaDetailList(int courseNo) {
		System.out.println("여기");
		return mapper.cqnaDetailList(courseNo);
	}
	
}
