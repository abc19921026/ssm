package com.ben.controller;

import com.ben.model.Student;
import com.ben.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/student")
public class StudentController {

    @Autowired
    private StudentService studentService;

    @RequestMapping("/allStudent")
    public String list(Model model) {
        List<Student> list = studentService.selectList();
        model.addAttribute("list", list);
        return "allStudent";
    }

    @RequestMapping("/toAddStudent")
    public String toAddPaper() {
        return "addStudent";
    }

    @RequestMapping("/addStudent")
    public String addPaper(Student student) {
        studentService.insertStudent(student);
        return "redirect:/student/allStudent";
    }

    @RequestMapping("/toUpdateStudent")
    public String toUpdateBook(Model model, int id) {
        Student student = studentService.selectById(id);
        model.addAttribute("student", student);
        return "updateStudent";
    }

    @RequestMapping("/updateStudent")
    public String updateBook(Model model, Student student) {
        studentService.updateStudent(student);
        return "redirect:/student/allStudent";
    }

    @RequestMapping("/deleteStudent")
    public String deleteBook(int id) {
        studentService.deleteStudent(id);
        return "redirect:/student/allStudent";
    }

}
