package kr.co.tobe.chiefAdmin.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ChiefMemberServiceImpl implements ChiefMemberService {

	@Autowired
	ChiefMemberMapper mapper;
}
