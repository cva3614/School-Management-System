package com.crud.operation.daos;

import javax.annotation.Resource;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.crud.operation.models.User;

@Repository
public class UserDaoImpl implements UserDao{
	
	@Resource
	private SessionFactory sessionFactory;
	
	@Override
	@Transactional
	public void signup(User u) {
		
		Session session = sessionFactory.getCurrentSession();
		session.save(u);	
	}
	
	@Override
	@Transactional
	public boolean login(String un, String psw) {
		Session session = sessionFactory.openSession();
		Criteria crt = session.createCriteria(User.class);
		
		crt.add(Restrictions.eq("username", un)).add(Restrictions.eq("password", psw));
		
		User u = (User) crt.uniqueResult();
		
		if(u!=null)
			return true;
		return false;
	}


}
