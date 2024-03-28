package com.jspider.medishope_online_dukan.dao;

import com.jspider.medishope_online_dukan.dto.User;

public interface UserDao {
	public User saveUserDao(User user);
	
	public User getUserByIdDao(int id);
}
