package kr.co.wp.service;

import javax.servlet.http.HttpServletResponse;

import kr.co.wp.domain.User;

public interface MemberService {
	
	User login(User user);
	boolean register(User user);
	User find(String loginId);
}