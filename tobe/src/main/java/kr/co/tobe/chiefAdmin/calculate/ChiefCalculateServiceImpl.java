package kr.co.tobe.chiefAdmin.calculate;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ChiefCalculateServiceImpl implements ChiefCalculateService {

	@Autowired
	ChiefCalculateMapper mapper;
}
