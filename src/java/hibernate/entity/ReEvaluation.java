package hibernate.entity;
// Generated May 21, 2014 5:40:05 PM by Hibernate Tools 3.6.0


import java.io.Serializable;

/**
 * ReEvaluation generated by hbm2java
 */
public class ReEvaluation  implements java.io.Serializable {


     private int reEvaluationId;
     private Marks marks;
     private String isUpdated;

    public ReEvaluation() {
    }

	
    public ReEvaluation(int reEvaluationId) {
        this.reEvaluationId = reEvaluationId;
    }
    public ReEvaluation(int reEvaluationId, Marks marks, String isUpdated) {
       this.reEvaluationId = reEvaluationId;
       this.marks = marks;
       this.isUpdated = isUpdated;
    }
   
    public int getReEvaluationId() {
        return this.reEvaluationId;
    }
    
    public void setReEvaluationId(int reEvaluationId) {
        this.reEvaluationId = reEvaluationId;
    }
    public Marks getMarks() {
        return this.marks;
    }
    
    public void setMarks(Marks marks) {
        this.marks = marks;
    }
    public String getIsUpdated() {
        return this.isUpdated;
    }
    
    public void setIsUpdated(String isUpdated) {
        this.isUpdated = isUpdated;
    }




}


