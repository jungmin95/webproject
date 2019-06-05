package kr.co.wp.store;

import java.util.List;

import kr.co.wp.domain.Tourlist;


public interface ListStore {
	Tourlist read(int list_num);
	List<Tourlist> readByName(String list_name);
	List<Tourlist> readAll();
}
