package com.ttn.ticketApp;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;

import com.ttn.ticketApp.HibernateSetFactory;
import com.ttn.ticketApp.User;


public  class UserListImplementation implements UserList{

	@Override
	public Integer save(User user) {
		Session session = HibernateSetFactory.getSessionFactory().openSession();
		session.beginTransaction();
		session.save(user);
		session.getTransaction().commit();
		session.close();
		System.out.println("Successfully created " + user.toString());
		return null;
	}

	@Override
	public List<User> get() {
		Session session = HibernateSetFactory.getSessionFactory().openSession();
		@SuppressWarnings("unchecked")
		List<User> Users = session.createQuery("FROM User").list();
		session.close();
		System.out.println("Found " + Users.size() + " Users");
		return Users;
	}

	@Override
	public void update(User user) {
		
	}

	@Override
	public User findByID(Integer id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public User findByUserNameAndPass(String userName, String password) {
		Query query= HibernateSetFactory.getSessionFactory().openSession().
		        createQuery("from User where userName=:userName and password=:password");
		query.setParameter("userName", userName);
		query.setParameter("password", password);
		User user = (User) query.uniqueResult();
		return user;
	
	}
	

}
