package kr.co.wp.store;

import kr.co.wp.domain.Servey;

public interface ServeyStore {

	boolean set(Servey servey);
	Servey read(String UserId);
}
