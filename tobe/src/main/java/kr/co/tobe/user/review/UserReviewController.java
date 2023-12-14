package kr.co.tobe.user.review;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

@Controller
public class UserReviewController {

	@Autowired
	UserReviewService service;
}
