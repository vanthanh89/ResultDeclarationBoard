package hibernate.entity;
// Generated May 14, 2014 9:49:53 PM by Hibernate Tools 3.6.0


import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

/**
 * Student generated by hbm2java
 */
public class Student  implements java.io.Serializable {


     private int studentId;
     private Classs classs;
     private String studentName;
     private Set<Mark> marks = new HashSet<Mark>(0);

    public Student() {
    }

	
    public Student(int studentId) {
        this.studentId = studentId;
    }
    public Student(int studentId, Classs classs, String studentName, Set<Mark> marks) {
       this.studentId = studentId;
       this.classs = classs;
       this.studentName = studentName;
       this.marks = marks;
    }
   
    public int getStudentId() {
        return this.studentId;
    }
    
    public void setStudentId(int studentId) {
        this.studentId = studentId;
    }
    public Classs getClasss() {
        return this.classs;
    }
    
    public void setClasss(Classs classs) {
        this.classs = classs;
    }
    public String getStudentName() {
        return this.studentName;
    }
    
    public void setStudentName(String studentName) {
        this.studentName = studentName;
    }
    public Set<Mark> getMarks() {
        return this.marks;
    }
    
    public void setMarks(Set<Mark> marks) {
        this.marks = marks;
    }




}


