<%-- 
    Document   : viewreevaluation
    Created on : May 21, 2014, 9:23:15 PM
    Author     : thanh
--%>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/academicCss.css" type="text/css" rel="stylesheet" />
        <title>Update Re-evaluation</title>
    </head>
    <body>


        <div id="main">
            <div id="header"></div>
            <div id="content">
                <div id="content_left">
                    <div><a href="insertmark.jsp">Upload Mark</a></div>
                    <div><a href="viewreevaluation.jsp">View Re-evaluation</a></div>
                </div>
                <div id="content_right">
                    <center>
                        <h1>Re-evaluation List</h1>

                        <div style="color: red">${requestScope.infor}</div>
                        <table border="1">
                            <thead>
                                <tr>
                                    <th>Student ID</th>
                                    <th>Subject Name</th>
                                    <th>Mark</th>
                                    <th>IsPassed</th>
                                    <th>Status</th>
                                    <th>Update</th>
                                </tr>
                            </thead>

                            <tbody>
                                <jsp:useBean id="dao" class="hibernate.dao.AcademicDepartmentDAO" scope="session"></jsp:useBean>
                                <c:set var="lstReevaluation" value="${dao.getAllReevaluation()}"></c:set>
                                <c:if test="${not empty lstReevaluation}">
                                    <html:form action="update">
                                        <c:forEach var="re" items="${lstReevaluation}">
                                            <c:if test="${re.reEvaluationId == requestScope.reEvaluation}">
                                                <tr>
                                                    
                                                     <html:hidden property="reEvaluationId" value="${re.reEvaluationId}"></html:hidden>
                                                    <td>${re.marks.student.studentId}</td>
                                                    <html:hidden property="studentId" value="${re.marks.student.studentId}"></html:hidden>
                                                    <td>${re.marks.subjects.subjectName}</td>
                                                    <html:hidden property="subjectId" value="${re.marks.subjects.subjectId}"></html:hidden>
                                                    <td><html:text property="mark" value="${re.marks.mark}"></html:text></td>
                                                    
                                                    <td>${re.marks.isPassed}</td>
                                                    <td>${re.isUpdated}</td>
                                                    <td>
                                                        <html:submit property="button" value="Update"></html:submit>
                                                        </td>
                                                    </tr>
                                            </c:if>
                                        </c:forEach>
                                    </html:form>
                                </c:if>
                                <c:if test="${empty dao.getAllReevaluation()}">
                                    <tr>${"dont have re-evaluation!"}</tr>
                                </c:if>
                            </tbody>

                        </table>
                        <html:form action="update">
                            <html:submit property="button" value="Back"></html:submit>
                        </html:form>
                    </center>
                </div>
            </div>
            <div id="footer"></div>
        </div>
    </body>
</html>
