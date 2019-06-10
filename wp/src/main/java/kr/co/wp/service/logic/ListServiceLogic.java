package kr.co.wp.service.logic;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.wp.domain.Tourlist;
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
	public List<Tourlist> findBySeoul() {

		return store.readBySeoul();
	}

	@Override
	public List<Tourlist> findByGyeonggi() {

		return store.readByGyeonggi();
	}

	@Override
	public List<Tourlist> findByIncheon() {

		return store.readByIncheon();
	}

	@Override
	public List<Tourlist> findByGangwon() {

		return store.readByGangwon();
	}

	@Override
	public List<Tourlist> findByChungbuk() {

		return store.readByChungbuk();
	}

	@Override
	public List<Tourlist> findByChungnam() {

		return store.readByChungnam();
	}

	@Override
	public List<Tourlist> findByBusan() {

		return store.readByBusan();
	}

	@Override
	public List<Tourlist> findByGyeongbuk() {

		return store.readByGyeongbuk();
	}

	@Override
	public List<Tourlist> findByGyeongnam() {

		return store.readByGyeongnam();
	}

	@Override
	public List<Tourlist> findByJeonbuk() {

		return store.readByJeonbuk();
	}

	@Override
	public List<Tourlist> findByJeonnam() {

		return store.readByJeonnam();
	}

	@Override
	public List<Tourlist> findByJeju() {

		return store.readByJeju();
	}

	@Override
	public List<Tourlist> findByActivity() {

		return store.readByActivity();
	}

	@Override
	public List<Tourlist> findByYolo() {

		return store.readByYolo();
	}

	@Override
	public List<Tourlist> findByHistory() {

		return store.readByHistory();
	}

	@Override
	public List<Tourlist> findByHealing() {

		return store.readByHealing();
	}
}
