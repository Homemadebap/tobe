package kr.co.tobe.user.pay;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserPayServiceImpl implements UserPayService {

	@Autowired
	UserPayMapper mapper;
}
