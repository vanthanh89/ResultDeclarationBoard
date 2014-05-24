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
        <title>View Re-evaluation</title>
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

                        <div style="color: blue">${requestScope.info}</div>
                        <jsp:useBean id="dao" class="hibernate.dao.AcademicDepartmentDAO" scope="session"></jsp:useBean>
                        <c:set var="lstReevaluation" value="${dao.getAllReevaluation()}"></c:set>
                        <c:if test="${not empty lstReevaluation}">
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

                                    <c:forEach var="re" items="${lstReevaluation}">
                                        <html:form action="action">
                                        <input type="hidden"  name="ree" value="${re.reEvaluationId}" />
                                        <tr>

                                            <td>${re.marks.student.studentId}</td>
                                            <td>${re.marks.subjects.subjectName}</td>
                                            <td>${re.marks.mark}</td>
                                            <td>${re.marks.isPassed}</td>
                                            <td>${re.isUpdated}</td>
                                            <td><html:submit property="button" value="Edit"></html:submit></td>
                                            </tr>
                                    </html:form>
                                </c:forEach>


                                </tbody>

                            </table>
                        </c:if>
                        <c:if test="${empty dao.getAllReevaluation()}">
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
                                    <tr>
                                        <td colspan="6">don't have re-evaluation</td>
                                        
                                    </tr>
                                </tbody>

                            </table>
                        </c:if>
                    </center>
                </div>
            </div>
            <div id="footer"></div>
        </div>
    </body>
</html>
