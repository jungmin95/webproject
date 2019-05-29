package kr.co.webproject.service;

import kr.co.webproject.domain.Servey;

public interface ServeyService {

	void set(Servey servey);
	boolean exist(String userId);
}
