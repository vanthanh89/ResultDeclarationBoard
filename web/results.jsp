<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html  dir="ltr" lang="en" xml:lang="en" xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <title>FPT Aptech - CMS</title>
        <link rel="shortcut icon" href="images/favicon.ico" />
        <meta name="description" content="FPT Aptech
              Course Management System" />
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="keywords" content="moodle, FPT Aptech - CMS" />
        <link rel="stylesheet" type="text/css" href="css/yui_combo.php.css" />
        <script type="text/javascript" src="js/yui_combo.js"></script>
        <script type="text/javascript" src="js/connection-min.js"></script>
        <link rel="stylesheet" type="text/css" href="css/skin.css" />
        <script id="firstthemesheet" type="text/css">/** Required in order to fix style inclusion problems in IE with YUI **/</script>
        <link rel="stylesheet" type="text/css" href="css/them.css" />
        <link rel="stylesheet" type="text/css" href="css/styles_debug.css" />
        <link rel="stylesheet" type="text/css" href="css/styles_debug_mod_chat.css" />
        <link rel="stylesheet" type="text/css" href="css/styles_debug_mod_choice.css" />
        <link rel="stylesheet" type="text/css" href="css/styles_debug_mod_data.css" />
        <link rel="stylesheet" type="text/css" href="css/styles_debug_mod_feedback.css" />
        <link rel="stylesheet" type="text/css" href="css/styles_debug_mod_forum.css" />
        <link rel="stylesheet" type="text/css" href="css/styles_debug_mod_glossary.css" />
        <link rel="stylesheet" type="text/css" href="css/styles_debug_mod_imscp.css" />
        <link rel="stylesheet" type="text/css" href="css/styles_debug_mod_lesson.css" />
        <link rel="stylesheet" type="text/css" href="css/styles_debug.mod_quiz.css" />
        <link rel="stylesheet" type="text/css" href="css/styles_debug_mod_resource.css" />
        <link rel="stylesheet" type="text/css" href="css/styles_debug_mod_scorm.css" />
        <link rel="stylesheet" type="text/css" href="css/styles_debug_mod_survey.css" />
        <link rel="stylesheet" type="text/css" href="css/styles_debug_mod_wiki.css" />
        <link rel="stylesheet" type="text/css" href="css/styles_debug_mod_workshop.css" />
        <link rel="stylesheet" type="text/css" href="css/styles_debug_block_blog_tags.css" />
        <link rel="stylesheet" type="text/css" href="css/styles_debug_block_community.css" />
        <link rel="stylesheet" type="text/css" href="css/styles_debug_block_course_list.css" />
        <link rel="stylesheet" type="text/css" href="css/styles_debug_block_course_summary.css" />
        <link rel="stylesheet" type="text/css" href="css/styles_debug_block_html.css" />
        <link rel="stylesheet" type="text/css" href="css/styles_debug_block_messages.css" />
        <link rel="stylesheet" type="text/css" href="css/styles_debug_block_myprofile.css" />
        <link rel="stylesheet" type="text/css" href="css/styles_debug_block_navigation.css" />
        <link rel="stylesheet" type="text/css" href="css/styles_debug_block_online_users.css" />
        <link rel="stylesheet" type="text/css" href="css/styles_debug_block_quiz_results.css" />
        <link rel="stylesheet" type="text/css" href="css/styles_debug_block_recent_activity.css" />
        <link rel="stylesheet" type="text/css" href="css/styles_debug_block_search_forums.css" />
        <link rel="stylesheet" type="text/css" href="css/styles_debug_block_settings.css" />
        <link rel="stylesheet" type="text/css" href="css/styles_debug_block_tag_flickr.css" />
        <link rel="stylesheet" type="text/css" href="css/styles_debug_block_tag_youtube.css" />
        <link rel="stylesheet" type="text/css" href="css/styles_debug_block_blog_tags.css" />
        <link rel="stylesheet" type="text/css" href="css/styles_debug_format_topics.css" />
        <link rel="stylesheet" type="text/css" href="css/styles_debug_format_weeks.css" />
        <link rel="stylesheet" type="text/css" href="css/styles_debug_report_customlang.css" />
        <link rel="stylesheet" type="text/css" href="css/styles_debug_gradereport_grader.css" />
        <link rel="stylesheet" type="text/css" href="css/styles_debug_gradereport_user.css" />
        <link rel="stylesheet" type="text/css" href="css/styles_debug_mnetservice_enrol.css" />
        <link rel="stylesheet" type="text/css" href="css/styles_debug_quiz_responses.css" />
        <link rel="stylesheet" type="text/css" href="css/styles_debug_workshopform_rubric.css" />
        <link rel="stylesheet" type="text/css" href="css/styles_debug_workshopallocation_manual.css" />
        <link rel="stylesheet" type="text/css" href="css/styles_debug_pagelayout.css" />
        <link rel="stylesheet" type="text/css" href="css/styles_debug_core.css" />
        <link rel="stylesheet" type="text/css" href="css/styles_debug_admin.css" />
        <link rel="stylesheet" type="text/css" href="css/styles_debug_blocks.css" />
        <link rel="stylesheet" type="text/css" href="css/styles_debug_calendar.css" />
        <link rel="stylesheet" type="text/css" href="css/styles_debug_course.css" />
        <link rel="stylesheet" type="text/css" href="css/styles_debug_dock.css" />
        <link rel="stylesheet" type="text/css" href="css/styles_debug_grade.css" />
        <link rel="stylesheet" type="text/css" href="css/styles_debug_message.css" />
        <link rel="stylesheet" type="text/css" href="css/styles_debug_question.css" />
        <link rel="stylesheet" type="text/css" href="css/styles_debug_user.css" />
        <link rel="stylesheet" type="text/css" href="css/styles_debug_pagelayout1.css" />
        <link rel="stylesheet" type="text/css" href="css/styles_debug_text.css" />
        <link rel="stylesheet" type="text/css" href="css/styles_debug_core1.css" />
        <link rel="stylesheet" type="text/css" href="css/styles_debug_course1.css" />
        <link rel="stylesheet" type="text/css" href="css/styles_debug_mods.css" />
        <link rel="stylesheet" type="text/css" href="css/styles_debug_blocks1.css" />
        <link rel="stylesheet" type="text/css" href="css/styles_debug_tabs.css" />
        <link rel="stylesheet" type="text/css" href="css/styles_debug_admin1.css" />
        <link rel="stylesheet" type="text/css" href="css/styles_debug_tables.css" />
        <link rel="stylesheet" type="text/css" href="css/styles_debug_popups.css" />
        <link rel="stylesheet" type="text/css" href="css/styles_debug_question1.css" />
        <link rel="stylesheet" type="text/css" href="css/styles_debug_theme.css" />
        <link rel="stylesheet" type="text/css" href="css/styles_debug_theme1.css" />
        <link rel="stylesheet" type="text/css" href="css/styles_debug_theme2.css" />
        <link rel="stylesheet" type="text/css" href="css/styles_debug_theme3.css" />
        <link rel="stylesheet" type="text/css" href="css/styles_debug_theme4.css" />

        <script type="text/javascript" src="js/javascript_160.js"></script>

    </head>
    <body style="background: url(images/bgorange.jpg) repeat-x" id="page-site-index" class="course path-site safari dir-ltr lang-en yui-skin-sam yui3-skin-sam aptech-ac-vn--8801 pagelayout-frontpage course-1 context-2 notloggedin ftheme-orange">
        <div class="skiplinks"><a class="skip" href="#maincontent">Skip to main content</a></div>
        <script type="text/javascript">
            //<![CDATA[
            document.body.className += ' jsenabled';
            //]]>
        </script>

        <div id="page">
            <div id="page-header">
                <div style="background: url(images/pageheaderbgorange.jpg)" id="page-header-wrapper" class="wrapper clearfix">
                    <div id="headermenu">
                        <div id="userdetails_loggedout"><h1>Welcome, <a href="#">Login here!</a></h1></div>                    <div class="clearer"></div>
                        <div id="colourswitcher">
                            <ul>
                                <li><img src="images/colour.jpg" alt="colour" /></li>
                                <li><a href="http://localhost:8080/ResultDeclarationBoard/?fthemecolour=red" class="styleswitch colour-red"><img src="images/red-theme2.gif" alt="red" /></a></li>
                                <li><a href="http://localhost:8080/ResultDeclarationBoard/?fthemecolour=green" class="styleswitch colour-green"><img src="images/green-theme2.gif" alt="green" /></a></li>
                                <li><a href="http://localhost:8080/ResultDeclarationBoard/?fthemecolour=blue" class="styleswitch colour-blue"><img src="images/blue-theme2.gif" alt="blue" /></a></li>
                                <li><a href="http://localhost:8080/ResultDeclarationBoard/?fthemecolour=orange" class="styleswitch colour-orange"><img src="images/blue-theme2.gif" alt="orange" /></a></li>
                            </ul>
                        </div>
                    </div>
                    <div style="background-image: url(images/lbgv2orange.jpg)" id="logobox">
                        <a href="#"><span><img src='images/logo.png' alt='logo' height='78' /></span></a>                                            <h4>Course Management System</h4>
                    </div>
                    <div class="clearer"></div>
                    <h4 class="headermain inside">&nbsp;</h4>
                    <!-- DROP DOWN MENU -->
                    <div class="clearer"></div>
                    <div id="dropdownmenu">
                        <div id="custommenu">
                            <div id="custom_menu_1" class="yui3-menu yui3-menu-horizontal javascript-disabled">
                                <div class="yui3-menu-content">
                                    <ul>
                                        <li class="yui3-menuitem">
                                            <a class="yui3-menuitem-content" title="Home" href="index.jsp">Home |</a>
                                        </li>
                                        <li>
                                            <a class="yui3-menu-label" title="About Us" href="#">About Us |</a>

                                        </li>
                                        <li>
                                            <a class="yui3-menu-label" title="Results" href="#">Results |</a>

                                        </li>
                                        <li>
                                            <a class="yui3-menu-label" title="Notifications" href="#">Notifications |</a>

                                        </li>
                                        <li class="yui3-menuitem">
                                            <a class="yui3-menuitem-content" title="Contact Us" href="#">Contact Us |</a>
                                        </li>

                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="navbar">
                            <div class="wrapper clearfix">
                                <div class="breadcrumb"></div>
                                <div class="navbutton"> </div>
                            </div>
                        </div>
                    </div>
                    <!-- END DROP DOWN MENU -->
                </div>
            </div>
            <!-- END OF HEADER -->
            <!-- START OF CONTENT -->
            <div id="page-content">

                <div id="box_search">
                    <center>
                        <h2>Mark View</h2><br/><br/>
                        <html:form action="searchMark">
                            <table border="0">
                                <tbody>
                                    <tr>
                                        <td>Student ID:&nbsp;&nbsp; </td>
                                        <td><html:text property="strStudentId" value="" ></html:text></td>
                                        <td>${requestScope.error}</td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td><br/><html:submit value="Submit"></html:submit></td>
                                            <td></td>
                                        </tr>
                                    </tbody>
                                </table>
                        </html:form>
                    </center>
                </div>

            </div>
            <!-- END OF CONTENT -->
            <div class="clearfix"></div>
            <!-- END OF #Page -->
        </div>
        <!-- START OF FOOTER -->
        <div id="page-footer">
            <div id="footer-wrapper">
                <div id="footnote"><p>Copyright © 2010 FPT - Aptech Computer Education. <br /> <br /> Powered by Moodle || Theme: modified from Caroline Kennedy?s Splash by KhoaNV.</p></div>
                <p class="helplink"></p>
                <div class="logininfo">You are not logged in. (<a href="#">Login</a>)</div><div class="sitelink"><a title="Moodle" href="#"><img style="width:100px;height:30px" src="images/moodlelogo.gif" alt="moodlelogo" /></a></div>        </div>
        </div>


    </body>
</html>