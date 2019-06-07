package kr.co.wp.service;


import kr.co.wp.domain.User;

public interface MemberService {
	
	User login(User user);
	boolean register(User user);
	User find(String loginId);
	User survey(User user);
}