package kr.co.wp.store;

import java.util.List;

import kr.co.wp.domain.Tourlist;
import kr.co.wp.domain.User;


public interface ListStore {
	Tourlist read(int list_num);
	Tourlist readDetail(int list_num);
	List<Tourlist> readByName(String list_name);
	List<Tourlist> readAll();
	List<Tourlist> Top10();
	List<Tourlist> readBySeoul();
	List<Tourlist> readByGyeonggi();
	List<Tourlist> readByIncheon();
	List<Tourlist> readByGangwon();
	List<Tourlist> readByChungbuk();
	List<Tourlist> readByChungnam();
	List<Tourlist> readByBusan();
	List<Tourlist> readByGyeongbuk();
	List<Tourlist> readByGyeongnam();
	List<Tourlist> readByJeonbuk();
	List<Tourlist> readByJeonnam();
	List<Tourlist> readByJeju();
	List<Tourlist> readByActivity();
	List<Tourlist> readByYolo();
	List<Tourlist> readByHistory();
	List<Tourlist> readByHealing();
	
	List<Tourlist> readByActivity_9();
	List<Tourlist> readByYolo_9();
	List<Tourlist> readByHistory_9();
	List<Tourlist> readByHealing_9();
	boolean create(Tourlist list);
	void delete(int list_num);

}
