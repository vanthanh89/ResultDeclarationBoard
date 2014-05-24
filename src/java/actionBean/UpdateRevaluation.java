/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package actionBean;

import ActionFormBean.ActionFormBean;
import hibernate.dao.AcademicDepartmentDAO;
import hibernate.entity.MarksId;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

/**
 *
 * @author thanh
 */
public class UpdateRevaluation extends org.apache.struts.action.Action {

    /* forward name="success" path="" */
    private static final String SUCCESS = "success";
    
    private static final String Error = "error";
    

    /**
     * This is the action called from the Struts framework.
     *
     * @param mapping The ActionMapping used to select this instance.
     * @param form The optional ActionForm bean for this request.
     * @param request The HTTP Request we are processing.
     * @param response The HTTP Response we are processing.
     * @throws java.lang.Exception
     * @return
     */
    @Override
    public ActionForward execute(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {

        ActionFormBean afb = (ActionFormBean) form;
        
        if (afb.getButton().equalsIgnoreCase("Update")) {
            AcademicDepartmentDAO academic = new AcademicDepartmentDAO();

            boolean flag = true;
            if (academic.checknull(afb.getMark())) {
                flag = false;
                request.setAttribute("reEvaluation", afb.getReEvaluationId());
                request.setAttribute("infor", "Mark must is not null");
                return mapping.findForward(Error);
            } else if (!academic.checkNumber(afb.getMark())) {
                
                flag = false;
                request.setAttribute("reEvaluation", afb.getReEvaluationId());
                request.setAttribute("infor", "Mark must is number");
                return mapping.findForward(Error);
            }

            if (Integer.parseInt(afb.getMark()) > 25) {
                flag = false;
                request.setAttribute("reEvaluation", afb.getReEvaluationId());
                request.setAttribute("infor", "mark is max <=25");
                return mapping.findForward(Error);
            }
            if (flag) {

                academic.updateReevaluation(afb.getReEvaluationId());
                MarksId marsId = new MarksId(afb.getStudentId(),afb.getSubjectId());
                academic.updateMark(marsId, Integer.parseInt(afb.getMark()));
                request.setAttribute("info", "success");
                return mapping.findForward(SUCCESS);
            }
        }
        if (afb.getButton().equalsIgnoreCase("Back")) {
            return mapping.findForward(SUCCESS);
        }
        return mapping.findForward(SUCCESS);
    }
}
