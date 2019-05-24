package kr.co.webproject.service;

import javax.servlet.http.HttpServletResponse;

import kr.co.webproject.domain.User;

public interface MemberService {
	
	public void check_id(String id, HttpServletResponse response) throws Exception;
	
	public void check_pw(String pw, HttpServletResponse response) throws Exception;

	public void check_email(String email, HttpServletResponse response) throws Exception;
	
	public int check_sex(String sex, HttpServletResponse response) throws Exception;

	public int check_age(User age, HttpServletResponse response) throws Exception;
}