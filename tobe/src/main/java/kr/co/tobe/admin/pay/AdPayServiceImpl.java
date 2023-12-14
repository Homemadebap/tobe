package kr.co.tobe.admin.pay;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AdPayServiceImpl implements AdPayService {

	@Autowired
	AdPayMapper mapper;
}
