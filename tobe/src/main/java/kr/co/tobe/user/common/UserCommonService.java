package kr.co.tobe.user.common;

import java.util.Map;

import org.springframework.stereotype.Service;

@Service
public interface UserCommonService {
	int cartDelete(int cno); //cno= 강좌 pk
	Map<String, Object> cartList(int no);	//no = 회원 pk
}
