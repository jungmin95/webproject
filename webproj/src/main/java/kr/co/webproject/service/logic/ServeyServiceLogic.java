package kr.co.webproject.service.logic;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.webproject.domain.Servey;
import kr.co.webproject.service.ServeyService;
import kr.co.webproject.store.ServeyStore;

@Service
public class ServeyServiceLogic implements ServeyService{

	@Autowired
	private ServeyStore store;
	
	@Override
	public void set(Servey servey) {	
		
		store.set(servey);
	}

	@Override
	public boolean exist(String userId) {
		
		if(store.read(userId)==null) {
			return false;
		}
		return true;
	}

	
}