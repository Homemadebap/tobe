package kr.co.tobe.admin.common;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AdCommonServiceImpl implements AdCommonService {

	@Autowired
	AdCommonMapper mapper;
}
