<%-- 
    Document   : newjsp
    Created on : May 18, 2014, 4:14:04 PM
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
        <title>Insert Mark</title>
    </head>
    <body>
        <div id="main">
            <div id="header"></div>
            <div id="content">
                <div id="content_left">
                    <div><a href="insertmark.jsp">Upload Mark</a></div>
                    <div><a href="insertmark.jsp">Upload Mark</a></div>
                </div>
                <div id="content_right">
                    <center>
                        <h1>Insert Mark</h1>
                        <h2 style="color: blue">${requestScope.info}</h2>
                        <html:form  action="insert">
                            <table border="0">
                                <tbody>
                                    <tr>
                                        <td>Student ID:</td>
                                        <td><input type="text" name="studentId" value="" /></td>
                                        <td><span style="color: red">${requestScope.studentErr}</span></td>
                                    </tr>
                                    <tr>
                                        <td>Subject Name:</td>
                                        <td> 
                                            <jsp:useBean id="dao" class="hibernate.dao.AcademicDepartmentDAO" scope="session"></jsp:useBean>
                                            <html:select property="subjectId" value="">
                                                <c:forEach var="sub" items="${dao.getAllSubject()}" >
                                                    <html:option value="${sub.subjectId}">${sub.subjectName}</html:option>
                                                </c:forEach>
                                            </html:select>
                                        </td>
                                        
                                    </tr>
                                    <tr>
                                        <td>Mark :</td>
                                        <td><input type="text" name="mark" value="" /> </td>
                                        <td><span style="color: red">${requestScope.markErr}</span></td>
                                    </tr>
                                     <tr>
                                        <td></td>
                                        <td><html:submit value="submit"></html:submit></td>
                                        <td></td>
                                    </tr>
                                </tbody>
                            </table>
                        </html:form>
                    </center>
                </div>
            </div>
            <div id="footer"></div>
        </div>
    </body>
</html>
