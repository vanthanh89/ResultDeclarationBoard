package hibernate.entity;
// Generated May 15, 2014 10:06:42 PM by Hibernate Tools 3.6.0


import java.util.HashSet;
import java.util.Set;

/**
 * Student generated by hbm2java
 */
public class Student  implements java.io.Serializable {


     private Integer studentId;
     private Classs classs;
     private String studentName;
     private Set<Marks> marks = new HashSet<Marks>(0);

    public Student() {
    }

    public Student(Classs classs, String studentName, Set<Marks> marks) {
       this.classs = classs;
       this.studentName = studentName;
       this.marks = marks;
    }
   
    public Integer getStudentId() {
        return this.studentId;
    }
    
    public void setStudentId(Integer studentId) {
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
    public Set<Marks> getMarks() {
        return this.marks;
    }
    
    public void setMarks(Set<Marks> marks) {
        this.marks = marks;
    }




}


