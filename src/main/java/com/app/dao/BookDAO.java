      package com.app.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.query.Query;

import com.app.model.Book;

public class BookDAO {

	private static SessionFactory sessionFactory = null;

	private static Session session = null;

	public static SessionFactory getSessionFactory() {
		sessionFactory = new Configuration().configure("hibernate.cfg.xml").addAnnotatedClass(Book.class)
				.buildSessionFactory();

		return sessionFactory;
	}

	public List<Book> getAllBooks() {

		sessionFactory = getSessionFactory();

		session = sessionFactory.openSession();

		List<Book> list = null;

		Query<Book> quary = session.createQuery("from Book");

		list = quary.getResultList();

		return list;
	}

	public void saveBook(Book book) {

		sessionFactory = getSessionFactory();

		session = sessionFactory.openSession();

		Transaction tr = session.beginTransaction();

		session.save(book);

		tr.commit();

	}

	public Book getBookById(int id) {
		Session session = getSessionFactory().openSession();
		Book book = session.get(Book.class, id);
		session.close();
		return book;
	}

	public void updateBook(Book book) {
		SessionFactory sessionFactory = getSessionFactory();
		Session session = sessionFactory.openSession();
		Transaction tx = session.beginTransaction();

		session.update(book);

		tx.commit();
		session.close();
	}

	public void deleteBook(int id) {

		SessionFactory sessionFactory = getSessionFactory();
		Session session = sessionFactory.openSession();

		Transaction tx = session.beginTransaction();

		Book book = session.get(Book.class, id); // Load book
		if (book != null) {
			session.delete(book);
		}

		tx.commit();
		session.close();
	}

}
