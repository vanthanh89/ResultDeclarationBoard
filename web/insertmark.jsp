<%-- 
    Document   : index
    Created on : May 27, 2014, 9:03:31 PM
    Author     : ThangCao
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>IN ADMIN PANEL</title>
        <link rel="stylesheet" type="text/css" href="style.css" />
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
                       <li><a class="current" href="insertmark.jsp">Academic Home</a></li>                    
                        <li><a  href="viewreevaluationunpaid.jsp">Manage Re-evaluation<!--[if IE 7]><!--></a></li>
                        <li><a  href="StatisticsSubjectByFailedNumberBySemester.jsp">Statistic<!--[if IE 7]><!--></a></li>
                    </ul>
                </div> 
                <div class="center_content">  
                    <div class="left_content">    
                        <div class="sidebar_search">
                            <form>
                                <input type="text" name="" class="search_input" value="search keyword" onclick="this.value = ''" />
                                <input type="image" class="search_submit" src="images/search.png" />
                            </form>            
                        </div>    
                        <div class="sidebarmenu">            
                            <a class="menuitem " href="">Insert Mark</a>                
                        </div>            
                    </div>  

                    <div class="right_content">            
                        <h2>Insert Mark</h2>
                        <h2 style="color: blue">${requestScope.info}</h2>
                        <div class="form">
                            <html:form action="insert" styleClass="niceform">
                                <fieldset>
                                    <dl>
                                        <dt><label for="subject">Student ID:</label></dt>
                                        <dd><input type="text" name="studentId"  size="54" /></dd>
                                        <dd><span style="color: red">${requestScope.studentErr}</span></dd>
                                    </dl>
                                    <dl>
                                        <dt><label for="password">Subject Name:</label></dt>
                                        <dd> 
                                            <jsp:useBean id="dao" class="hibernate.dao.AcademicDepartmentDAO" scope="session"></jsp:useBean>
                                            <html:select property="subjectId" value="" style="width: 150px;" onchange="">
                                                <c:forEach var="sub" items="${dao.getAllSubject()}" >
                                                    <html:option value="${sub.subjectId}">${sub.subjectName}</html:option>
                                                </c:forEach>
                                            </html:select>
                                        </dd>
                                        <dd></dd>
                                    </dl>

                                    <dl>
                                        <dt><label for="password">Mark:</label></dt>
                                        <dd><input type="text" name="mark" id="" size="54" /></dd>
                                        <dd><span style="color: red">${requestScope.markErr}</span></dd>
                                    </dl>     
                                    
                                    <dl class="submit">
                                        <html:submit  value="Submit" ></html:submit>
                                    </dl>
                                </fieldset>

                            </html:form>
                        </div>  
                        
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
