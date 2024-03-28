package com.jspider.medishope_online_dukan.daoImplementation;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;

import com.jspider.medishope_online_dukan.dao.UserDao;
import com.jspider.medishope_online_dukan.dto.User;

public class UserDaoImplementation implements UserDao {
	EntityManager em = Persistence.createEntityManagerFactory("medishope").createEntityManager();
	
	EntityTransaction et = em.getTransaction();

	@Override
	public User saveUserDao(User user) {
		et.begin();
		em.persist(user);
		et.commit();
		
		return user;
	}

	@Override
	public User getUserByIdDao(int id) {
		// TODO Auto-generated method stub
		return null;
	}
	
}
