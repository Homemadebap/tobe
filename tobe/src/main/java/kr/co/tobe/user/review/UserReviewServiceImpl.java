package kr.co.tobe.user.review;

import java.util.List;

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
	public List<ReviewVO> getSelectReviewNo (ReviewVO rvo){
		return mapper.selectReviewNo(rvo);
	}

}
