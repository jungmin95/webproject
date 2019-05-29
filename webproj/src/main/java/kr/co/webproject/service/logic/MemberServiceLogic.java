package kr.co.webproject.service.logic;

import javax.servlet.http.HttpServletResponse;

import kr.co.webproject.domain.User;
import kr.co.webproject.service.MemberService;

public class MemberServiceLogic implements MemberService{

	@Override
	public void check_id(String id, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void check_pw(String pw, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void check_email(String email, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public int check_sex(String sex, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int check_age(User age, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

}
