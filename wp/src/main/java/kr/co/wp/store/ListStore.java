package kr.co.wp.store;

import java.util.List;

import kr.co.wp.domain.Tourlist;


public interface ListStore {
	Tourlist read(int id);
	List<Tourlist> readByName(String name);
	List<Tourlist> readAll();
}
