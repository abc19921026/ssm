package com.ben.service;

import com.ben.model.Student;

import java.util.List;

public interface StudentService {

    Student selectById(int id);

    List<Student> selectList();

    int insertStudent(Student student);

    int updateStudent(Student student);

    int deleteStudent(int id);
}
