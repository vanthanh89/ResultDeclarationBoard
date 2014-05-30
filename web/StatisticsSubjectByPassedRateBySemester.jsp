<%-- 
    Document   : index
    Created on : May 27, 2014, 9:03:31 PM
    Author     : ThangCao
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %> 
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>IN ADMIN PANEL</title>
        <link rel="stylesheet" type="text/css" href="style.css" />
        <link rel="stylesheet" type="text/css" href="css/reevaluationStyle.css" />
        <script type="text/javascript" src="js/clockp.js"></script>
        <script type="text/javascript" src="js/clockh.js"></script> 
        <script type="text/javascript" src="js/jquery.min.js"></script>
        <script type="text/javascript" src="js/ddaccordion.js"></script>
        <script type="text/javascript">
            ddaccordion.init({
                headerclass: "submenuheader", //Shared CSS class name of headers group
                contentclass: "submenu", //Shared CSS class name of contents group
                revealtype: "click", //Reveal content when user clicks or onmouseover the header? Valid value: "click", "clickgo", or "mouseover"
                mouseoverdelay: 200, //if revealtype="mouseover", set delay in milliseconds before header expands onMouseover
                collapseprev: true, //Collapse previous content (so only one open at any time)? true/false 
                defaultexpanded: [], //index of content(s) open by default [index1, index2, etc] [] denotes no content
                onemustopen: false, //Specify whether at least one header should be open always (so never all headers closed)
                animatedefault: false, //Should contents open by default be animated into view?
                persiststate: true, //persist state of opened contents within browser session?
                toggleclass: ["", ""], //Two CSS classes to be applied to the header when it's collapsed and expanded, respectively ["class1", "class2"]
                togglehtml: ["suffix", "<img src='images/plus.gif' class='statusicon' />", "<img src='images/minus.gif' class='statusicon' />"], //Additional HTML added to the header when it's collapsed and expanded, respectively  ["position", "html1", "html2"] (see docs)
                animatespeed: "fast", //speed of animation: integer in milliseconds (ie: 200), or keywords "fast", "normal", or "slow"
                oninit: function(headers, expandedindices) { //custom code to run when headers have initalized
                    //do nothing
                },
                onopenclose: function(header, index, state, isuseractivated) { //custom code to run whenever a header is opened or closed
                    //do nothing
                }
            });
        </script>

        <script type="text/javascript" src="js/jconfirmaction.jquery.js"></script>
        <script type="text/javascript">

            $(document).ready(function() {
                $('.ask').jConfirmAction();
            });

        </script>
        <script language="javascript" type="text/javascript" src="js/niceforms.js"></script>
        <link rel="stylesheet" type="text/css" media="all" href="niceforms-default.css" />
    </head>
    <body>
        <div id="main_container">

            <div class="header">
                <div class="logo"><a href="#"><img src="images/logo.gif" alt="" title="" border="0" /></a></div>
                <div id="clock_a"></div>
            </div>
            <div class="main_content">

                <div class="menu">
                    <ul>
                        <li><a  href="insertmark.jsp">Academic Home</a></li>                    
                        <li><a  href="viewreevaluationunpaid.jsp">Manage Re-evaluation<!--[if IE 7]><!--></a></li>
                        <li><a class="current" href="StatisticsSubjectByFailedNumberBySemester.jsp">Statistic<!--[if IE 7]><!--></a></li>
                    </ul>
                </div> 
                <div class="center_content">  
                    <div class="left_content">    
                        <div class="sidebar_search">
                            <form>
                                <input type="text" name="" class="search_input" value="search keyword"  />
                                <input type="image" class="search_submit" src="images/search.png" />
                            </form>            
                        </div>    
                        <div class="sidebarmenu">            
                            <a class="menuitem " href="StatisticsSubjectByFailedNumberBySemester.jsp" title="Subject By Failed Number By Semester">Subject By Failed Number By Semester</a> 
                            <a class="menuitem " href="StatisticStudentByMarksInSemesterTop5.jsp" title="Top 5 student by marks in a semester">Top 5 student by marks in a semester</a>
                            <a class="menuitem " href="StatisticsSubjectByPassedRateBySemester.jsp" title="Subject By Passed Rate By Semester">Subject By Passed Rate By Semester</a>
                            <a class="menuitem " href="StatisticsStudentByMarksInSubjectOfSemester.jsp" title="Student By Marks In Subject Of Semester">Student By Marks In Subject Of Semester</a>
                        </div>            
                    </div>  

                    <div class="right_content">            
                        <center>
                            <h2>Statistic Subject by rate of passed student by Semester </h2>
                            <html:form action="sp_SubjectByPassedRateBySemester">
                                <jsp:useBean id="dao" class="hibernate.dao.AcademicDepartmentDAO" scope="session"></jsp:useBean>
                                    <table border="0">
                                        <tbody>
                                            <tr>
                                                <td>Semester :</td>
                                                <td>
                                                <html:select property="semesterId" style="width: 150px;">
                                                    <c:forEach var="sem" items="${dao.getAllSemester()}"  >
                                                        <html:option value="${sem.semesterId}">${sem.term}</html:option>
                                                    </c:forEach>
                                                </html:select>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="2" style="text-align: center; padding: 10px;"><html:submit value="Submit"></html:submit></td>
                                         </tr>
                                        </tbody>
                                    </table>
                            </html:form>
                            <br />
                            <br />
                            <div>
                                <c:if test="${not empty requestScope.resultSet4}">
                                    <table>
                                        <thead>
                                            <th class="header_table">Subject Name </th>
                                            <th class="header_table">Passed Rate </th>
                                        </thead>
                                        <tbody>
                                            <%
                                                ResultSet rs = (ResultSet) request.getAttribute("resultSet4");
                                            %>
                                            <% while (rs.next()) { %>
                                            <tr>
                                                <td class="vl_table"><%= rs.getString(1) %></td>
                                                <td class="vl_table"><%= rs.getInt(2) %> %</td>
                                            </tr>
                                            <% }%>
                                        </tbody>
                                    </table>
                                </c:if>
                            </div>
                        </center>

                    </div>
                </div>
                <div class="clear"></div>
            </div> 
            <div class="footer">

                <div class="left_footer">IN ADMIN PANEL | Powered by <a href="http://indeziner.com">C1203i</a></div>
                <div class="right_footer"><a href="http://indeziner.com"><img src="images/indeziner_logo.gif" alt="" title="" border="0" /></a></div>

            </div>

        </div>		
    </body>
</html>
