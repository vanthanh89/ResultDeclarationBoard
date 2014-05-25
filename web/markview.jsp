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
                <div class="box_container"><div style="text-align: left;font-size: 20px; margin-left: 10px;">Tra cứu kết quả học tập</div></div>
                <div class="box_container"><a href="results.jsp"><input type="submit" value="Back" /></a></div>
                <div class="box_container"><h1>Kết quả học tập của sinh viên</h1></div>
                <div class="box_container">
                    <div><span style="color: #0000ff;">chú ý: chỉ được phúc tra điểm trong vòng 1 tuần kể từ ngày có điểm </span></div>
                    <div><span style="color: #00cc00;">${requestScope.info} </span></div>
                </div>
                <div class="box_container">
                    <div class="result_content">
                        <div class="text">Student ID :</div>
                        <div class="value">${requestScope.studentId}</div>
                        <div class="clear"></div>
                        <c:set var="lstMark" value="${requestScope.lstMark}"></c:set>
                        <c:if test="${not empty lstMark}">
                            <jsp:useBean id="now" class="java.util.Date"/>
                            <div class="table">

                                <div class="text_header">Subject</div>
                                <div class="text_header">Mark</div>
                                <div class="text_header">Max Mark</div>
                                <div class="text_header">Date Released</div>
                                <div class="text_header">Result</div>
                                <div class="text_header">Re-evaluation</div>
                                <c:forEach var="mark" items="${lstMark}">
                                    <html:form action="reevaluation">
                                       
                                    <html:hidden property="studentId" value="${mark.student.studentId}"></html:hidden>
                                    <html:hidden property="subjectId" value="${mark.subjects.subjectId}"></html:hidden>
                                   
                                    <div class="value_table">
                                        <div class="value_row">${mark.subjects.subjectName}</div>
                                    </div>
                                    <div class="value_table">
                                        <div class="value_row">${mark.mark}</div>
                                    </div>
                                    <div class="value_table">
                                        <div class="value_row">${mark.subjects.maxMark}</div>
                                    </div>
                                    <div class="value_table">
                                        <div class="value_row">${mark.testDate}</div>
                                    </div>
                                    <div class="value_table">
                                        <div class="value_row">${mark.isPassed}</div>
                                    </div>
                                    <div class="value_table">
                                        <fmt:formatDate var="yearnow" pattern="yyyy" value="${now }"></fmt:formatDate>
                                        <fmt:formatDate var="yeartest" pattern="yyyy" value="${mark.testDate}"></fmt:formatDate>
                                        <fmt:formatDate var="daynow" pattern="DD" value="${now }"></fmt:formatDate>
                                        <fmt:formatDate var="daytest" pattern="DD" value="${mark.testDate}"></fmt:formatDate>
                                        <c:choose>
                                            <c:when test="${ (yearnow == yeartest) &&((daynow - daytest) < 7) && (mark.isReevaluated == 'notReevaluated') }">
                                                <div class="value_row"><html:submit  value="re-evaluation" ></html:submit></div>
                                            </c:when>
                                            <c:otherwise>
                                                <div class="value_row"><html:submit disabled="true" value="re-evaluation" ></html:submit></div>
                                            </c:otherwise>
                                        </c:choose>
                                    </div>
                                   </html:form>
                                </c:forEach>
                            </div>
                        </c:if>
                        <c:if test="${empty lstMark}">
                            <div class="table">

                                <div class="text_header">Subject</div>
                                <div class="text_header">Mark</div>
                                <div class="text_header">Max Mark</div>
                                <div class="text_header">Date Released</div>
                                <div class="text_header">Result</div>
                                <div class="text_header">Re-evaluation</div>
                                <center>you don't have mark</center>
                            </div>
                        </c:if>
                    </div>
                    <div class="mg10px"></div>
                </div>
            </div>
        </div>
    </body>
</html>
