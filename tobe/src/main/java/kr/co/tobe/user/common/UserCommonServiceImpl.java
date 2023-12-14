package kr.co.tobe.user.common;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserCommonServiceImpl implements UserCommonService {

	@Autowired
	UserCommonMapper mapper;
}
