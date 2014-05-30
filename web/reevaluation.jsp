<%-- 
    Document   : markview
    Created on : May 24, 2014, 9:30:02 PM
    Author     : thanh
--%>



<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %> 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Mark View</title>
        <link href="css/markview.css" type="text/css" rel="stylesheet"/>
    </head>
    <body>
        <div id="main">
            <div id="content">
                <div class="box_container"><div style="text-align: left;font-size: 20px; margin-left: 10px;">phúc tra phúc khảo điểm thi</div></div>

                <div class="box_container"><h1>Chi tiết phúc tra phúc khảo</h1></div>
                <div class="box_container"><span style="color: blue;">Chú ý: phải trả phí phúc tra trong vòng 7 ngày kể từ ngày đăng kí nếu không đơn sẽ bị hủy </span></div>
                <div class="box_container">
                    <div class="result_content">
                        <center>
                            <div class="content_reevaludtion">

                                <c:set var="mark" value="${requestScope.mark}"></c:set>
                                <jsp:useBean id="now" class="java.util.Date"/>
                                <html:form action="insertReevaluation" >
                                    <html:hidden property="studentId" value="${mark.student.studentId}"></html:hidden>
                                    <html:hidden property="subjectId" value="${mark.subjects.subjectId}"></html:hidden>
                                    <html:hidden property="mark" value="${mark.mark}"></html:hidden>
                                        <table border="0">
                                            <tbody>
                                                <tr>
                                                    <td>Student ID:</td>
                                                    <td>${mark.student.studentId}</td>
                                            </tr>
                                            <tr>
                                                <td>Subject Name:</td>
                                                <td>${mark.subjects.subjectName}</td>
                                            </tr>
                                            <tr>
                                                <td>Mark :</td>
                                                <td>${mark.mark}</td>
                                            </tr>
                                            <tr>
                                                <td>Charge :</td>
                                                <td>${mark.subjects.cost} $</td>
                                            </tr>
                                            <tr>
                                                <fmt:formatDate var="date" pattern="yyyy-MM-dd" value="${now }"></fmt:formatDate>
                                                    <td>Date Register :</td>
                                                    <td>${date} </td>
                                            </tr>
                                            <tr>
                                                <td><html:submit property="button" value="Submit" ></html:submit></td>
                                                <td><html:submit property="button" value="Cancel" ></html:submit></td>
                                                </tr>
                                            </tbody>
                                        </table>
                                </html:form>

                            </div>

                        </center>
                        <div class="mg10px"></div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
