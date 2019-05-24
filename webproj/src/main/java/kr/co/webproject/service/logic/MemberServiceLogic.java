package kr.co.webproject.service.logic;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.webproject.domain.User;
import kr.co.webproject.service.MemberService;
import kr.co.webproject.store.MemberStore;


@Service
public class MemberServiceLogic implements MemberService{

	@Override
	public User login(User user) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean register(User user) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public User find(String loginId) {
		// TODO Auto-generated method stub
		return null;
	}

}
