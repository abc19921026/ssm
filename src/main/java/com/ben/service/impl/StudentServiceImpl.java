package com.ben.service.impl;

import com.ben.dao.StudentMapper;
import com.ben.model.Student;
import com.ben.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class StudentServiceImpl implements StudentService {

    @Autowired
    private StudentMapper studentMapper;

    public Student selectById(int id) {
        return studentMapper.selectById(id);
    }

    public List<Student> selectList() {
        return studentMapper.selectList();
    }

    public int insertStudent(Student student) {
        return studentMapper.insert(student);
    }

    public int updateStudent(Student student) {
        return studentMapper.update(student);
    }

    public int deleteStudent(int id) {
        return studentMapper.delete(id);
    }
}
