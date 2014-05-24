/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package actionBean;

import ActionFormBean.ActionFormBean;
import hibernate.dao.AcademicDepartmentDAO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

/**
 *
 * @author thanh
 */
public class insertmark extends org.apache.struts.action.Action {

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

        ActionFormBean im = (ActionFormBean) form;
        String stuId = request.getParameter("studentId");
        String strmark = request.getParameter("mark");
        AcademicDepartmentDAO academic = new AcademicDepartmentDAO();
        request.setAttribute("studentErr", "");
        request.setAttribute("markErr", "");
        boolean flag = true;
        if (academic.checknull(stuId)) {
            flag = false;
            request.setAttribute("studentErr", "studentId must is not null");
            return mapping.findForward(SUCCESS);
        } else if (!academic.checkNumber(stuId)) {
            flag = false;
            request.setAttribute("studentErr", "studentId must is number");
            return mapping.findForward(SUCCESS);
        }else if (!academic.checkStudentId(Integer.parseInt(stuId))) {
            flag = false;
            request.setAttribute("studentErr", "studentId not exist");
            return mapping.findForward(SUCCESS);
        }
        if (academic.checknull(strmark)) {
            flag = false;
            request.setAttribute("markErr", "mard must is not null");
            return mapping.findForward(SUCCESS);
        } else if (!academic.checkNumber(strmark)) {
            flag = false;
            request.setAttribute("markErr", "mark must is number");
            return mapping.findForward(SUCCESS);
        }
        if(academic.checkStudentwithSubject(Integer.parseInt(stuId), im.getSubjectId()))
        {
            flag = false;
            request.setAttribute("studentErr", "student is exist this subject mark");
            return mapping.findForward(SUCCESS);
        }
        if(Integer.parseInt(strmark) > 25)
        {
            flag = false;
            request.setAttribute("markErr", "mark is max <=25");
            return mapping.findForward(SUCCESS);
        }
        if (flag) {
            
            int studentId = Integer.parseInt(stuId);
            int subjectId = im.getSubjectId();
            int mark = Integer.parseInt(strmark);
            academic.uploadMark(studentId, subjectId, mark);
            request.setAttribute("info", "success");
            return mapping.findForward(SUCCESS);
        }
        return mapping.findForward(SUCCESS);
    }
}
