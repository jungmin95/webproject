package kr.co.wp.service.logic;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.wp.domain.Tourlist;
import kr.co.wp.page.Criteria;
import kr.co.wp.service.ListService;
import kr.co.wp.store.ListStore;

@Service
public class ListServiceLogic implements ListService {

	@Autowired
	private ListStore store;

	@Override
	public Tourlist find(int list_num) {

		return store.read(list_num);
	}
	   @Override
	   public Tourlist findDetail(int list_num) {
	      System.out.println("222222222222222222222");
	      return store.readDetail(list_num);
	   }

	   @Override
	   public void remove(int list_num) {
	      System.out.println("remove 1");
	      store.delete(list_num);
	   }

	@Override
	public List<Tourlist> findByName(String list_name) {

		return store.readByName(list_name);
	}

	@Override
	public List<Tourlist> findAll() {

		return store.readAll();
	}

	@Override
	public List<Tourlist> findTop10() {

		return store.Top10();
	}

	@Override
	public boolean register(Tourlist list) {

		return store.create(list);
	}

	@Override
	public List<Tourlist> findBySeoul(Criteria cri) {

		return store.readBySeoul(cri);
	}

	@Override
	public List<Tourlist> findByGyeonggi(Criteria cri) {

		return store.readByGyeonggi(cri);
	}

	@Override
	public List<Tourlist> findByIncheon(Criteria cri) {

		return store.readByIncheon(cri);
	}

	@Override
	public List<Tourlist> findByGangwon(Criteria cri) {

		return store.readByGangwon(cri);
	}

	@Override
	public List<Tourlist> findByChungbuk(Criteria cri) {

		return store.readByChungbuk(cri);
	}

	@Override
	public List<Tourlist> findByChungnam(Criteria cri) {

		return store.readByChungnam(cri);
	}

	@Override
	public List<Tourlist> findByBusan(Criteria cri) {

		return store.readByBusan(cri);
	}

	@Override
	public List<Tourlist> findByGyeongbuk(Criteria cri) {

		return store.readByGyeongbuk(cri);
	}

	@Override
	public List<Tourlist> findByGyeongnam(Criteria cri) {

		return store.readByGyeongnam(cri);
	}

	@Override
	public List<Tourlist> findByJeonbuk(Criteria cri) {

		return store.readByJeonbuk(cri);
	}

	@Override
	public List<Tourlist> findByJeonnam(Criteria cri) {

		return store.readByJeonnam(cri);
	}

	@Override
	public List<Tourlist> findByJeju(Criteria cri) {

		return store.readByJeju(cri);
	}

	@Override
	public List<Tourlist> findByActivity(Criteria cri) {

		return store.readByActivity(cri);
	}

	@Override
	public List<Tourlist> findByYolo(Criteria cri) {

		return store.readByYolo(cri);
	}

	@Override
	public List<Tourlist> findByHistory(Criteria cri) {

		return store.readByHistory(cri);
	}

	@Override
	public List<Tourlist> findByHealing(Criteria cri) {

		return store.readByHealing(cri);
	}
	@Override
	public List<Tourlist> findByActivity_9() {
		
		return store.readByActivity_9();
	}
	@Override
	public List<Tourlist> findByYolo_9() {
		
		return store.readByYolo_9();
	}
	@Override
	public List<Tourlist> findByHistory_9() {
		
		return store.readByHistory_9();
	}
	@Override
	public List<Tourlist> findByHealing_9() {
		
		return store.readByHealing_9();
	}
}
