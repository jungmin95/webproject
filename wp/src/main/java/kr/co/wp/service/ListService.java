package kr.co.wp.service;

import java.util.List;

import kr.co.wp.domain.Tourlist;
import kr.co.wp.page.Criteria;

public interface ListService {


	Tourlist find(int list_num);
	Tourlist findDetail(int list_num);
	List<Tourlist> findByName(String list_name);
	List<Tourlist> findAll();
	List<Tourlist> findTop10();
	List<Tourlist> findBySeoul(Criteria cri);
	List<Tourlist> findByGyeonggi(Criteria cri);
	List<Tourlist> findByIncheon(Criteria cri);
	List<Tourlist> findByGangwon(Criteria cri);
	List<Tourlist> findByChungbuk(Criteria cri);
	List<Tourlist> findByChungnam(Criteria cri);
	List<Tourlist> findByBusan(Criteria cri);
	List<Tourlist> findByGyeongbuk(Criteria cri);
	List<Tourlist> findByGyeongnam(Criteria cri);
	List<Tourlist> findByJeonbuk(Criteria cri);
	List<Tourlist> findByJeonnam(Criteria cri);
	List<Tourlist> findByJeju(Criteria cri);
	List<Tourlist> findByActivity(Criteria cri);
	List<Tourlist> findByYolo(Criteria cri);
	List<Tourlist> findByHistory(Criteria cri);
	List<Tourlist> findByHealing(Criteria cri);
	
	List<Tourlist> findByActivity_9();
	List<Tourlist> findByYolo_9();
	List<Tourlist> findByHistory_9();
	List<Tourlist> findByHealing_9();
	boolean register(Tourlist list);
	void remove(int list_num);
}
