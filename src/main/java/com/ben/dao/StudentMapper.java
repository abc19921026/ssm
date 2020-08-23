package com.ben.dao;

import com.ben.model.Student;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface StudentMapper extends BaseMapper<Student>{

    List<Student> selectList();
}
