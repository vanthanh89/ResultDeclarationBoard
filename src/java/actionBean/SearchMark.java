/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package actionBean;

import ActionFormBean.ActionFormBean;
import hibernate.dao.AcademicDepartmentDAO;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

/**
 *
 * @author thanh
 */
public class SearchMark extends org.apache.struts.action.Action {

    /* forward name="success" path="" */
    private static final String SUCCESS = "success";
    
    private static final String Fail = "fail";
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
        boolean flag =true;
        if(dao.checknull(afb.getStrStudentId()))
        {
            flag = false;
            request.setAttribute("error", "studentID must is not null!");
            return mapping.findForward(Fail);
        }
        if(!dao.checkNumber(afb.getStrStudentId()))
        {
            flag = false;
            request.setAttribute("error", "studentID must is number!");
            return mapping.findForward(Fail);
        }
        if(!dao.checkStudentId(Integer.parseInt(afb.getStrStudentId())))
        {
            flag = false;
            request.setAttribute("error", "studentID not exist!");
            return mapping.findForward(Fail);
        }
        if(flag)
        {
            
            List lstMark = dao.getMarkByStudentId(Integer.parseInt(afb.getStrStudentId()));
            request.setAttribute("lstMark", lstMark);
            request.setAttribute("studentId", afb.getStrStudentId());
            return mapping.findForward(SUCCESS);
        }
        return mapping.findForward(Fail);
    }
}
