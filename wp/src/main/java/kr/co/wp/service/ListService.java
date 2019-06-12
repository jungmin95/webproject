package kr.co.wp.service;

import java.util.List;

import kr.co.wp.domain.Tourlist;

public interface ListService {


	Tourlist find(int list_num);
	Tourlist findDetail(int list_num);
	List<Tourlist> findByName(String list_name);
	List<Tourlist> findAll();
	List<Tourlist> findTop10();
	List<Tourlist> findBySeoul();
	List<Tourlist> findByGyeonggi();
	List<Tourlist> findByIncheon();
	List<Tourlist> findByGangwon();
	List<Tourlist> findByChungbuk();
	List<Tourlist> findByChungnam();
	List<Tourlist> findByBusan();
	List<Tourlist> findByGyeongbuk();
	List<Tourlist> findByGyeongnam();
	List<Tourlist> findByJeonbuk();
	List<Tourlist> findByJeonnam();
	List<Tourlist> findByJeju();
	List<Tourlist> findByActivity();
	List<Tourlist> findByYolo();
	List<Tourlist> findByHistory();
	List<Tourlist> findByHealing();
	boolean register(Tourlist list);
	void remove(int list_num);
}
