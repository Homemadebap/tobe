package kr.co.tobe.user.review;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserReviewServiceImpl implements UserReviewService {

	@Autowired
	UserReviewMapper mapper;
}
