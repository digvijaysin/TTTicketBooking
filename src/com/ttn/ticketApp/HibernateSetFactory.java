package com.ttn.ticketApp;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class HibernateSetFactory {
	private static SessionFactory sessionFactory = null;

	static {
		sessionFactory = buildSessionFactory();
	}

	private HibernateSetFactory() {

	}

	public static SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public static void closeSession(Session session) {
		if (session != null && session.isOpen()) {
			session.close();
		}
	}

	@SuppressWarnings("deprecation")
	private static SessionFactory buildSessionFactory() {
		try {
			Configuration configuration = new Configuration().configure();
			return (configuration.buildSessionFactory());
		} catch (Throwable t) {
			System.err.println("SessionFactory creation failed.");
			throw new ExceptionInInitializerError(t);
		}
	}


}
