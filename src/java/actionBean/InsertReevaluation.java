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
public class InsertReevaluation extends org.apache.struts.action.Action {

    /* forward name="success" path="" */
    private static final String SUCCESS = "success";

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
        ActionFormBean afb = (ActionFormBean)form;
        AcademicDepartmentDAO dao = new AcademicDepartmentDAO();
        MarksId mid = new MarksId(afb.getStudentId(), afb.getSubjectId());
        dao.insertReevaluation(afb.getStudentId(), afb.getSubjectId());
        dao.updateMark(mid,Integer.parseInt(afb.getMark()));
        request.setAttribute("info", "reevaluation success!");
        return mapping.findForward(SUCCESS);
    }
}
