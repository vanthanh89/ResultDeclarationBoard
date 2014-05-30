/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package ActionFormBean;

import hibernate.entity.Marks;
import hibernate.entity.ReEvaluation;
import javax.servlet.http.HttpServletRequest;
import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;

/**
 *
 * @author thanh
 */
public class ActionFormBean extends org.apache.struts.action.ActionForm {
    
    private int subjectId;
    private String button;
    
    private String mark;
    
    private int studentId;
    private String strStudentId;
    private int reEvaluationId;
    private String markOld;
    private int semesterId;

    public int getSemesterId() {
        return semesterId;
    }

    public void setSemesterId(int semesterId) {
        this.semesterId = semesterId;
    }
    
    public String getMarkOld() {
        return markOld;
    }

    public void setMarkOld(String markOld) {
        this.markOld = markOld;
    }
   
    public String getStrStudentId() {
        return strStudentId;
    }

    

    public void setStrStudentId(String strStudentId) {
        this.strStudentId = strStudentId;
    }

    public int getReEvaluationId() {
        return reEvaluationId;
    }

    public void setReEvaluationId(int reEvaluationId) {
        this.reEvaluationId = reEvaluationId;
    }
    
    public int getStudentId() {
        return studentId;
    }

    public void setStudentId(int studentId) {
        this.studentId = studentId;
    }
 
    public String getMark() {
        return mark;
    }

    public void setMark(String mark) {
        this.mark = mark;
    }
    

    
    public String getButton() {
        return button;
    }

    public void setButton(String button) {
        this.button = button;
    }
    
    public int getSubjectId() {
        return subjectId;
    }

    public void setSubjectId(int subjectId) {
        this.subjectId = subjectId;
    }
    
    public ActionFormBean() {
        super();
        // TODO Auto-generated constructor stub
    }

    /**
     * This is the action called from the Struts framework.
     *
     * @param mapping The ActionMapping used to select this instance.
     * @param request The HTTP Request we are processing.
     * @return
     */
    public ActionErrors validate(ActionMapping mapping, HttpServletRequest request) {
        ActionErrors errors = new ActionErrors();
       
        return errors;
    }
}
