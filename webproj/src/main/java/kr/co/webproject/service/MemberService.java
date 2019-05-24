package kr.co.webproject.service;

import kr.co.webproject.domain.User;

public interface MemberService {
	
	User login(User user);
	boolean register(User user);
	User find(String loginId);
	
}