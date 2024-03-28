package com.jspider.medishope_online_dukan.serviceImplementation;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;

import com.jspider.medishope_online_dukan.dto.User;
import com.jspider.medishope_online_dukan.service.UserService;

public class UserServiceImplementation implements UserService {

	EntityManager em = Persistence.createEntityManagerFactory("medishope").createEntityManager();
	
	EntityTransaction et = em.getTransaction();
	
	@Override
	public User saveUserService(User user) {
		et.begin();
		em.persist(user);
		et.commit();
		return null;
	}

	@Override
	public User getUserByIdService(int userId) {
		
		return null;
	}
	
}
