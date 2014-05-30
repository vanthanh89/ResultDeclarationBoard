<%-- 
    Document   : index
    Created on : May 27, 2014, 9:03:31 PM
    Author     : ThangCao
--%>

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
                        <li><a class="current" href="viewreevaluationunpaid.jsp">Manage Re-evaluation<!--[if IE 7]><!--></a></li>
                        <li><a  href="StatisticsSubjectByFailedNumberBySemester.jsp">Statistic<!--[if IE 7]><!--></a></li>
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
                            <a class="menuitem " href="viewreevaluationunpaid.jsp">View Re-evaluation Unpaid</a> 
                            <a class="menuitem " href="viewreevaluation.jsp">View Re-evaluation Pending</a>
                            <a class="menuitem " href="viewreevaluationcancel.jsp">View Re-evaluation Cancel</a>
                            <a class="menuitem " href="viewreevaluationupdated.jsp">View Re-evaluation Updated</a>
                        </div>            
                    </div>  

                    <div class="right_content">            
                     <center>
                        <h1>Re-evaluation Updated List</h1>

                       
                        <jsp:useBean id="dao" class="hibernate.dao.AcademicDepartmentDAO" scope="session"></jsp:useBean>
                        <jsp:useBean id="now" class="java.util.Date"/>
                        <c:set var="lstReevaluation" value="${dao.getAllReevaluationUpdated()}"></c:set>
                        <c:if test="${not empty lstReevaluation}">
                            <table border="0">
                                <thead>
                                    <tr>

                                        <th class="header_table">Student ID</th>
                                        <th class="header_table">Subject Name</th>
                                        <th class="header_table">Mark Old</th>
                                        <th class="header_table">IsPassed</th>
                                        <th class="header_table">Date Register</th>
                                        <th class="header_table">Status</th>

                                    </tr>
                                </thead>

                                <tbody>

                                    <c:forEach var="re" items="${lstReevaluation}">

                                        <tr>
                                            <fmt:formatDate var="date" pattern="yyyy-MM-dd" value="${re.registeredDate}"></fmt:formatDate>
                                            <td class="vl_table">${re.marks.student.studentId}</td>
                                            <td class="vl_table">${re.marks.subjects.subjectName}</td>
                                            <td class="vl_table">${re.marks.mark}</td>
                                            <td class="vl_table">${re.marks.isPassed}</td>
                                            <td class="vl_table">${date}</td>
                                            <td class="vl_table">${re.isUpdated}</td>

                                        </tr>

                                    </c:forEach>


                                </tbody>

                            </table>
                        </c:if>
                        <c:if test="${empty dao.getAllReevaluationUpdated()}">
                            <table border="0">
                                <thead>
                                    <tr>

                                        <th class="header_table">Student ID</th>
                                        <th class="header_table">Subject Name</th>
                                        <th class="header_table">Mark Old</th>
                                        <th class="header_table">IsPassed</th>
                                        <th class="header_table">Date Register</th>
                                        <th class="header_table">Status</th>

                                    </tr>
                                </thead>

                                <tbody>
                                    <tr>
                                        <td colspan="7">don't have re-evaluation updated</td>

                                    </tr>
                                </tbody>

                            </table>
                        </c:if>
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
