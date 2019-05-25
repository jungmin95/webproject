package kr.co.webproject.store;

import kr.co.webproject.domain.User;

public interface MemberStore{
	
	boolean create(User user);
	User read(String id);

}
