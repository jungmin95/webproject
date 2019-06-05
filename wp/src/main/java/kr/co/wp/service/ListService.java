package kr.co.wp.service;

import java.util.List;

import kr.co.wp.domain.Tourlist;

public interface ListService {


	Tourlist find(int list_num);
	List<Tourlist> findByName(String list_name);
	List<Tourlist> findAll();
}
