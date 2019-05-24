package kr.co.webproject.store;

import kr.co.webproject.domain.Servey;

public interface ServeyStore {

	boolean set(Servey servey);
	Servey read(String UserId);
}
