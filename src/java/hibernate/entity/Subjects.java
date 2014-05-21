package hibernate.entity;
// Generated May 21, 2014 5:40:05 PM by Hibernate Tools 3.6.0


import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

/**
 * Subjects generated by hbm2java
 */
public class Subjects  implements java.io.Serializable {


     private int subjectId;
     private Semester semester;
     private String subjectName;
     private Integer minMark;
     private Integer maxMark;
     private Integer cost;
     private Set<Marks> markses = new HashSet<Marks>(0);

    public Subjects() {
    }

	
    public Subjects(int subjectId, String subjectName) {
        this.subjectId = subjectId;
        this.subjectName = subjectName;
    }
    public Subjects(int subjectId, Semester semester, String subjectName, Integer minMark, Integer maxMark, Integer cost, Set<Marks> markses) {
       this.subjectId = subjectId;
       this.semester = semester;
       this.subjectName = subjectName;
       this.minMark = minMark;
       this.maxMark = maxMark;
       this.cost = cost;
       this.markses = markses;
    }
   
    public int getSubjectId() {
        return this.subjectId;
    }
    
    public void setSubjectId(int subjectId) {
        this.subjectId = subjectId;
    }
    public Semester getSemester() {
        return this.semester;
    }
    
    public void setSemester(Semester semester) {
        this.semester = semester;
    }
    public String getSubjectName() {
        return this.subjectName;
    }
    
    public void setSubjectName(String subjectName) {
        this.subjectName = subjectName;
    }
    public Integer getMinMark() {
        return this.minMark;
    }
    
    public void setMinMark(Integer minMark) {
        this.minMark = minMark;
    }
    public Integer getMaxMark() {
        return this.maxMark;
    }
    
    public void setMaxMark(Integer maxMark) {
        this.maxMark = maxMark;
    }
    public Integer getCost() {
        return this.cost;
    }
    
    public void setCost(Integer cost) {
        this.cost = cost;
    }
    public Set<Marks> getMarkses() {
        return this.markses;
    }
    
    public void setMarkses(Set<Marks> markses) {
        this.markses = markses;
    }




}


