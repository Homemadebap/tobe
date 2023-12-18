package kr.co.tobe.user.common;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserCommonServiceImpl implements UserCommonService {

	@Autowired
	UserCommonMapper mapper;

	@Override
	public int cartDelete(int cno) {
		return mapper.delete(cno);
	}

	@Override
	public Map<String, Object> cartList(int no) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("list",mapper.list(no) );
		map.put("total",mapper.count(no));
		return map;
	}
}
