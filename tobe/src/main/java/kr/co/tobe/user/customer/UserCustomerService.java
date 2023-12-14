package kr.co.tobe.user.customer;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.multipart.MultipartFile;

import kr.co.tobe.vo.NoticeVO;

public interface UserCustomerService {
	
	int insert(NoticeVO vo, MultipartFile file, HttpServletRequest request);
}
