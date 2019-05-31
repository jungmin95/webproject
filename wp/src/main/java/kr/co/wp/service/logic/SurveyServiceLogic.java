//package kr.co.wp.service.logic;
//
//import org.springframework.beans.factory.annotation.Autowired;
//
//import kr.co.wp.domain.Survey;
//import kr.co.wp.service.SurveyService;
//import kr.co.wp.store.SurveyStore;
//
//public class SurveyServiceLogic implements SurveyService {
//
//	@Autowired
//	private SurveyStore store;
//	
//	@Override
//	public void set(Survey survey, int r1, int r2, int r3, int r4, int r5, int r6, int r7, int r8) {	
//
//		survey.setSurvey(r1, 0);
//		survey.setSurvey(r2, 1);
//		survey.setSurvey(r3, 2);
//		survey.setSurvey(r4, 3);
//		survey.setSurvey(r5, 4);
//		survey.setSurvey(r6, 5);
//		survey.setSurvey(r7, 6);
//		survey.setSurvey(r8, 7);
//		
//		store.set(survey);
//	}
//
//	@Override
//	public boolean exist(String userId) {
//		
//		if(store.read(userId)==null) {
//			return false;
//		}
//		return true;
//	}
//
//	
//
//	
//}
