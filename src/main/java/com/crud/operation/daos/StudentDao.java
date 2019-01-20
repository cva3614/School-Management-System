package com.crud.operation.daos;

import java.util.List;

import com.crud.operation.models.Student;

public interface StudentDao {
	public void addStudent(Student s);
	public void deleteStudent(int id);
	public void updateStudent(Student s);
	public Student getById(int id);
	public List<Student> getAllStudent(); 

}
