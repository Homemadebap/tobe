package kr.co.tobe.chiefAdmin.email;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ChiefEmailServiceImpl implements ChiefEmailService {

	@Autowired
	ChiefEmailMapper mapper;
}
