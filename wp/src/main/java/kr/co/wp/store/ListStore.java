package kr.co.wp.store;

import java.util.List;

import kr.co.wp.domain.Tourlist;
import kr.co.wp.domain.User;
import kr.co.wp.page.Criteria;


public interface ListStore {
	Tourlist read(int list_num);
	Tourlist readDetail(int list_num);
	List<Tourlist> readByName(String list_name);
	List<Tourlist> readAll();
	List<Tourlist> Top10();
	List<Tourlist> readBySeoul(Criteria cri);
	List<Tourlist> readByGyeonggi(Criteria cri);
	List<Tourlist> readByIncheon(Criteria cri);
	List<Tourlist> readByGangwon(Criteria cri);
	List<Tourlist> readByChungbuk(Criteria cri);
	List<Tourlist> readByChungnam(Criteria cri);
	List<Tourlist> readByBusan(Criteria cri);
	List<Tourlist> readByGyeongbuk(Criteria cri);
	List<Tourlist> readByGyeongnam(Criteria cri);
	List<Tourlist> readByJeonbuk(Criteria cri);
	List<Tourlist> readByJeonnam(Criteria cri);
	List<Tourlist> readByJeju(Criteria cri);
	List<Tourlist> readByActivity(Criteria cri);
	List<Tourlist> readByYolo(Criteria cri);
	List<Tourlist> readByHistory(Criteria cri);
	List<Tourlist> readByHealing(Criteria cri);
	
	List<Tourlist> readByActivity_9();
	List<Tourlist> readByYolo_9();
	List<Tourlist> readByHistory_9();
	List<Tourlist> readByHealing_9();
	boolean create(Tourlist list);
	void delete(int list_num);

}
