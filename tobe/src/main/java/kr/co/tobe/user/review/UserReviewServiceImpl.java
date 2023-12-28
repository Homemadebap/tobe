package kr.co.tobe.user.review;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.tobe.vo.ReviewVO;

@Service
public class UserReviewServiceImpl implements UserReviewService {

	@Autowired
	UserReviewMapper mapper;

	@Override
	public int insertReview(ReviewVO rvo) {
		return mapper.insert(rvo);
	}

	@Override
	public double selectCourseRating(int no) {
		return mapper.selectCourse(no);
	}

	@Override
	public int updateCourseRating(String no, String rating) {
		return mapper.updateCouse(no, rating);
	}
	
	@Override
	public List<Map<String,Object>> getSelectReviewNo (){
		return mapper.selectReviewNo();
	}

	@Override
	public ReviewVO getReviewDetail(int reviewNo) {
		return mapper.ReviewDetail(reviewNo);
	}

}
