package com.crud.operation.daos;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.crud.operation.models.Student;
import com.crud.operation.daos.StudentDao;

@Repository
public class StudentDaoImpl implements StudentDao{

	@Resource
	private SessionFactory sessionFactory;
	
	
	@Transactional
	public void addStudent(Student s) {
		Session session = sessionFactory.getCurrentSession();
		session.save(s);
		
	}
	
	

	@Transactional
	public void deleteStudent(int id) {
		Session session = sessionFactory.getCurrentSession();
		Student s = (Student)session.get(Student.class, id);
		session.delete(s);
	}

	
	@Transactional
	public void updateStudent(Student s) {
		Session session = sessionFactory.getCurrentSession();
		session.update(s);
	}
	
	

	@Transactional
	public Student getById(int id) {
		
		Session session = sessionFactory.getCurrentSession();
		Student s = (Student)session.get(Student.class, id);
		 
		return s;
	}

	public List<Student> getAllStudent() {
		
		Session session = sessionFactory.openSession();
		
		Criteria crt =session.createCriteria(Student.class);
		
		@SuppressWarnings("unchecked")
		List<Student> slist = crt.list();
		
		session.close();
		
		return slist;
	}
	
	

}