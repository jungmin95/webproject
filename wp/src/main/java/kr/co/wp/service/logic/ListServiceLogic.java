package kr.co.wp.service.logic;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.wp.domain.Tourlist;
import kr.co.wp.service.ListService;
import kr.co.wp.store.ListStore;

@Service
public class ListServiceLogic implements ListService{

	@Autowired
	private ListStore store;
	
	@Override
	public Tourlist find(int list_num) {
		
		return store.read(list_num);
	}

	@Override
	public List<Tourlist> findByName(String list_name) {
		
		return store.readByName(list_name);
	}

	@Override
	public List<Tourlist> findAll() {
		
		return store.readAll();
	}

}
