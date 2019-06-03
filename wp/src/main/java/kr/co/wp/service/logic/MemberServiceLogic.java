package kr.co.wp.service.logic;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.wp.store.MemberStore;
import kr.co.wp.domain.User;
import kr.co.wp.service.MemberService;

@Service
public class MemberServiceLogic implements MemberService{


	@Autowired
	private MemberStore store;

	@Override
	public User login(User user) {
		//
//		User readedUser = null;
//		if (validate(user)) {
//			readedUser = store.login(user.getId());
////		}
//		readedUser = store.login(user.getId());
//		if(user == readedUser) {
//			return readedUser;
//		}
//		
		return store.login(user.getId());
	}
	

	@Override
	public boolean register(User user) {
		//
		if (!validate(user)) {
			return false;
		} else if (store.read(user.getId()) != null) {
			return false;
		}
		return store.create(user);
	}

	@Override
	public User find(String loginId) {
		//
		return store.read(loginId);
	}

	private boolean validate(User user) {
		//
		if (user == null) {
			throw new RuntimeException("회원이 아닙니다.");
		} else if (user.getId() == null || user.getId().isEmpty()) {
			throw new RuntimeException("ID가 틀립니다.");
		} else if (user.getPw() == null || user.getPw().isEmpty()) {
			throw new RuntimeException("PW가 틀립니다.");
		}
		return true;
	}
}
