package hibernate.entity;
// Generated May 21, 2014 5:40:05 PM by Hibernate Tools 3.6.0


import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

/**
 * Curriculum generated by hbm2java
 */
public class Curriculum  implements java.io.Serializable {


     private int curriculumId;
     private String curriculumName;
     private Set<Semester> semesters = new HashSet<Semester>(0);

    public Curriculum() {
    }

	
    public Curriculum(int curriculumId, String curriculumName) {
        this.curriculumId = curriculumId;
        this.curriculumName = curriculumName;
    }
    public Curriculum(int curriculumId, String curriculumName, Set<Semester> semesters) {
       this.curriculumId = curriculumId;
       this.curriculumName = curriculumName;
       this.semesters = semesters;
    }
   
    public int getCurriculumId() {
        return this.curriculumId;
    }
    
    public void setCurriculumId(int curriculumId) {
        this.curriculumId = curriculumId;
    }
    public String getCurriculumName() {
        return this.curriculumName;
    }
    
    public void setCurriculumName(String curriculumName) {
        this.curriculumName = curriculumName;
    }
    public Set<Semester> getSemesters() {
        return this.semesters;
    }
    
    public void setSemesters(Set<Semester> semesters) {
        this.semesters = semesters;
    }




}


