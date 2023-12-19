package kr.co.tobe.admin.common;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.tobe.vo.AdminVO;

@Service
public class AdCommonServiceImpl implements AdCommonService {

	@Autowired
	AdCommonMapper mapper;
	
	@Override
	public AdminVO login(AdminVO vo) {
		return mapper.login(vo);
	}
}
