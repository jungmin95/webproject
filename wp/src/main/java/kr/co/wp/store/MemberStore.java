package kr.co.wp.store;

import kr.co.wp.domain.User;

public interface MemberStore{
	
	boolean create(User user);
	User read(String id);

}
