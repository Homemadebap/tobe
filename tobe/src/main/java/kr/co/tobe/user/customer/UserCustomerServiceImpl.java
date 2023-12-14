package kr.co.tobe.user.customer;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import kr.co.tobe.vo.NoticeVO;

@Service
public class UserCustomerServiceImpl implements UserCustomerService {

	@Autowired
	UserCustomerMapper mapper;
	
	@Override
	public int insert(NoticeVO vo, MultipartFile file, HttpServletRequest request) {
		// TODO Auto-generated method stub
		return 0;
	}
}
