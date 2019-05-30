package kr.co.wp.store;

import kr.co.wp.domain.Survey;

public interface SurveyStore {

	boolean set(Survey survey);
	Survey read(String UserId);

}
