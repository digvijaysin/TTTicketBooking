package com.ttn.ticketApp;

import java.util.List;

import com.ttn.ticketApp.User;

public interface UserList {
	Integer save(User user);

	List<User> get();

	void update(User user);

	User findByID(Integer id);

	User findByUserNameAndPass(String userName, String password);
}
