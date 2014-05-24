<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
                                            <a class="yui3-menu-label" title="Results" href="results.jsp">Results |</a>
                                            
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
                <div id="region-main-box">
                    <div id="region-post-box">
                        <div id="region-main-wrap">
                            <div id="region-main">
                                <div class="region-content">
                                    <span id="maincontent"></span><a href="#skipsitenews" class="skip-block">Skip site news</a><h2 class="headingblock header">Site news</h2><a id="p1671"></a><div class="forumpost clearfix firstpost starter"><div class="row header clearfix"><div class="left picture"><a href="http://localhost:8080\/ResultDeclarationBoard/user/profile.php?id=8"><img src="http://localhost:8080\/ResultDeclarationBoard/pluginfile.php/19/user/icon/f2" alt="Picture of Khoa Nguy?n Vi?t" title="Picture of Khoa Nguy?n Vi?t" class="userpicture" width="35" height="35" /></a></div><div class="topic firstpost starter"><div class="subject">CocoDojo #26</div><div class="author">by <a href="http://localhost:8080\/ResultDeclarationBoard/user/view.php?id=8&amp;course=1">Khoa Nguy?n Vi?t</a> - Tuesday, 15 April 2014, 01:21 PM</div></div></div><div class="row maincontent clearfix"><div class="left"><div class="grouppictures">&nbsp;</div></div><div class="no-overflow"><div class="content"><div class="posting fullpost"><p><img src="http://localhost:8080\/ResultDeclarationBoard/pluginfile.php/63/mod_forum/post/1671/CocoDojo%2326.PNG" alt="" width="450" height="370" /></p><div class="attachedimages"></div></div></div></div></div><div class="row side"><div class="left">&nbsp;</div><div class="options clearfix"><div class="commands"></div></div></div></div><a id="p1668"></a><div class="forumpost clearfix firstpost starter"><div class="row header clearfix"><div class="left picture"><a href="http://localhost:8080\/ResultDeclarationBoard/user/profile.php?id=8"><img src="http://localhost:8080\/ResultDeclarationBoard/pluginfile.php/19/user/icon/f2" alt="Picture of Khoa Nguy?n Vi?t" title="Picture of Khoa Nguy?n Vi?t" class="userpicture" width="35" height="35" /></a></div><div class="topic firstpost starter"><div class="subject">CocoDojo #25</div><div class="author">by <a href="http://localhost:8080\/ResultDeclarationBoard/user/view.php?id=8&amp;course=1">Khoa Nguy?n Vi?t</a> - Sunday, 30 March 2014, 09:27 AM</div></div></div><div class="row maincontent clearfix"><div class="left"><div class="grouppictures">&nbsp;</div></div><div class="no-overflow"><div class="content"><div class="posting fullpost"><p><img src="http://localhost:8080\/ResultDeclarationBoard/pluginfile.php/63/mod_forum/post/1668/cocodojo%2325.PNG" alt="" width="450" height="383" /></p><div class="attachedimages"></div></div></div></div></div><div class="row side"><div class="left">&nbsp;</div><div class="options clearfix"><div class="commands"></div></div></div></div><div class="forumolddiscuss"><a href="http://localhost:8080\/ResultDeclarationBoard/mod/forum/view.php?f=4&amp;showall=1">Older topics</a> ...</div><span class="skip-block-to" id="skipsitenews"></span><br />                            </div>
                            </div>
                        </div>

                        <div id="region-pre" class="block-region">
                            <div class="region-content">
                                <a href="#sb-1" class="skip-block">Skip Main menu</a><div id="inst1" class="block_site_main_menu  block"><div style="background-image: url(images/sbheaderbg2orange.jpg)" class="header"><div class="title"><div class="block_action"></div><h2>Main menu</h2></div></div><div class="content"><ul class="unlist"><li class="r0"><div class="column c1"><a title="Forums"   href="#"><img src="images/icon.gif" class="icon" alt="" />&nbsp;Site news</a></div></li>
                                            <li class="r1"><div class="column c1"><a title="Forums"   href="#"><img src="images/icon.gif" class="icon" alt="" />&nbsp;Thời khóa biểu FAT1</a></div></li>
                                            <li class="r0"><div class="column c1"><a title="Forums"   href="#"><img src="images/icon.gif" class="icon" alt="" />&nbsp;Thời khóa biểu FAT2</a></div></li>
                                            <li class="r1"><div class="column c1"><a title="Forums"   href="#"><img src="images/icon.gif" class="icon" alt="" />&nbsp;Thời khóa biểu FAT3</a></div></li>
                                            <li class="r0"><div class="column c1"><a title="URLs"  onclick="window.location.href = '#'; return false;" href="#"><img src="images/web.gif" class="icon" alt="" />&nbsp;Tra cứu kết quả học tập</a></div></li></ul></div></div><span id="sb-1" class="skip-block-to"></span><a href="#sb-2" class="skip-block">Skip Navigation</a><div id="inst4" class="block_navigation  block"><div style="background-image: url(images/sbheaderbg2orange.jpg)" class="header"><div class="title"><div class="block_action"></div><h2>Navigation</h2></div></div><div class="content"><ul class="block_tree list"><li class="type_unknown depth_1 contains_branch"><p class="tree_item branch navigation_node"><a title="Home" href="http://localhost:8080\/ResultDeclarationBoard/">Home</a></p><ul><li class="type_system depth_2 collapsed contains_branch"><p class="tree_item branch canexpand"><span>Courses</span></p><ul><li class="type_category depth_3 collapsed contains_branch"><p class="tree_item branch" id="expandable_branch_1"><span>ACCP i13</span></p></li>
                                                            <li class="type_category depth_3 collapsed contains_branch"><p class="tree_item branch" id="expandable_branch_2"><span>ACCP i11</span></p></li>
                                                            <li class="type_category depth_3 collapsed contains_branch"><p class="tree_item branch" id="expandable_branch_3"><span>ACCP i10</span></p></li>
                                                            <li class="type_category depth_3 collapsed contains_branch"><p class="tree_item branch" id="expandable_branch_4"><span>Seminar</span></p></li>
                                                            <li class="type_category depth_3 collapsed contains_branch"><p class="tree_item branch" id="expandable_branch_5"><span>Support</span></p></li></ul></li></ul></li></ul></div></div><span id="sb-2" class="skip-block-to"></span><a href="#sb-4" class="skip-block">Skip Login</a><div id="inst26" class="block_login  block"><div style="background-image: url(images/sbheaderbg2orange.jpg)" class="header"><div class="title"><div class="block_action"></div><h2>Login</h2></div></div><div class="content">
                                        <form class="loginform" id="login" method="post" action="#"><div class="c1 fld username"><label for="login_username">Username</label><input type="text" name="username" id="login_username" value="" /></div><div class="c1 fld password"><label for="login_password">Password</label><input type="password" name="password" id="login_password" value="" /></div><div class="c1 btn"><input type="submit" value="Login" /></div></form>
                                        <div class="footer"><div><a href="#">Lost password?</a></div></div></div></div><span id="sb-4" class="skip-block-to"></span><a href="#sb-5" class="skip-block">Skip T?p chí L?p trình</a><div id="inst1296" class="block_rss_client  block"><div style="background-image: url(images/sbheaderbg2orange.jpg)" class="header"><div class="title"><div class="block_action"></div><h2>Tạp Trí Lập Trình</h2></div></div><div class="content"><ul class="list no-overflow">
                                            <li><div class="link"><a onclick="this.target = & quot; _blank & quot;" href="#">Những lợi ích khi cho trẻ em học lập trình</a></div></li><li><div class="link"><a onclick="this.target = & quot; _blank & quot;" href="#">Javascript ? chàng hiệp sĩ tài năng</a></div></li><li><div class="link"><a onclick="this.target = & quot; _blank & quot;" href="#">Các vấn đề thường gặp trong type</a></div></li><li><div class="link"><a onclick="this.target = & quot; _blank & quot;" href="#">10 nguyên tắc thiết kế tốt hơn</a></div></li><li><div class="link"><a onclick="this.target = & quot; _blank & quot;" href="#">Quay lại với cơ bản : eXtreme Programming</a></div></li></ul><div class="footer"><a href="#">Source site...</a></div></div></div><span id="sb-5" class="skip-block-to"></span>                        </div>
                        </div>

                        <div id="region-post" class="block-region">
                            <div class="region-content">
                                <div id="inst2" class="block_course_summary  block"><div class="content"><div class="block_action notitle"></div><div class="no-overflow"><div class="text_to_html"><h2>FPT Aptech</h2><h3>Course Management System</h3></div></div></div></div><a href="#sb-8" class="skip-block">Skip Unlock Captcha</a><div id="inst531" class="block_html  block"><div style="background-image: url(images/sbheaderbg2orange.jpg)" class="header"><div class="title"><div class="block_action"></div><h2>Unlock Captcha</h2></div></div><div class="content"><div class="no-overflow"><p><a href="#"><img style="display: block; margin-left: auto; margin-right: auto;" width="180" src="images/images.jpg" /></a></p></div></div></div><span id="sb-8" class="skip-block-to"></span><a href="#sb-9" class="skip-block">Skip Calendar</a><div id="inst3" class="block_calendar_month  block"><div style="background-image: url(images/sbheaderbg2orange.jpg)" class="header"><div class="title"><div class="block_action"></div><h2>Calendar</h2></div></div><div class="content"><div class="calendar-controls"><a class="arrow_link previous" href="#" title="Previous month"><span class="arrow ">&#x25C4;</span><span class="accesshide " >&nbsp;<span class="arrow_text">Previous month</span></span></a><span class="hide"> | </span><span class="current"><a title="This month" href="#">May 2014</a></span><span class="hide"> | </span><a class="arrow_link next" href="#" title="Next month"><span class="accesshide " ><span class="arrow_text">Next month</span>&nbsp;</span><span class="arrow ">&#x25BA;</span></a><span class="clearer"><!-- --></span>
                                        </div><table class="minicalendar calendartable" summary="Data table, May 2014 Calendar"><tr class="weekdays"><th scope="col"><abbr title="Sunday">Sun</abbr></th>
                                                <th scope="col"><abbr title="Monday">Mon</abbr></th>
                                                <th scope="col"><abbr title="Tuesday">Tue</abbr></th>
                                                <th scope="col"><abbr title="Wednesday">Wed</abbr></th>
                                                <th scope="col"><abbr title="Thursday">Thu</abbr></th>
                                                <th scope="col"><abbr title="Friday">Fri</abbr></th>
                                                <th scope="col"><abbr title="Saturday">Sat</abbr></th>
                                            </tr><tr><td class="dayblank">&nbsp;</td>
                                                <td class="dayblank">&nbsp;</td>
                                                <td class="dayblank">&nbsp;</td>
                                                <td class="dayblank">&nbsp;</td>
                                                <td class="day">1</td>
                                                <td class="day">2</td>
                                                <td class="weekend day">3</td>
                                            </tr><tr><td class="weekend day">4</td>
                                                <td class="day">5</td>
                                                <td class="day">6</td>
                                                <td class="day">7</td>
                                                <td class="day">8</td>
                                                <td class="day">9</td>
                                                <td class="weekend day">10</td>
                                            </tr><tr><td class="weekend day">11</td>
                                                <td class="day">12</td>
                                                <td class="day">13</td>
                                                <td class="day">14</td>
                                                <td class="day">15</td>
                                                <td class="day">16</td>
                                                <td class="weekend day">17</td>
                                            </tr><tr><td class="weekend day">18</td>
                                                <td class="day">19</td>
                                                <td class="day">20</td>
                                                <td class="day">21</td>
                                                <td class="day">22</td>
                                                <td class="day today eventnone"><span class="accesshide " >Today Friday, 23 May </span><a href="#" id="calendar_tooltip_1">23</a></td>
                                                <td class="weekend day">24</td>
                                            </tr><tr><td class="weekend day">25</td>
                                                <td class="day">26</td>
                                                <td class="day">27</td>
                                                <td class="day">28</td>
                                                <td class="day">29</td>
                                                <td class="day">30</td>
                                                <td class="weekend day">31</td>
                                            </tr></table></div></div><span id="sb-9" class="skip-block-to"></span><a href="#sb-10" class="skip-block">Skip Latest news</a><div id="inst24" class="block_news_items  block"><div style="background-image: url(images/sbheaderbg2orange.jpg)" class="header"><div class="title"><div class="block_action"></div><h2>Latest news</h2></div></div><div class="content">
                                        <ul class='unlist'>
                                            <li class="post"><div class="head clearfix"><div class="date">15 Apr, 13:21</div><div class="name">Khoa Nguy?n Vi?t</div></div><div class="info">CocoDojo #26 <a href="#">more...</a></div></li>
                                            <li class="post"><div class="head clearfix"><div class="date">30 Mar, 09:27</div><div class="name">Khoa Nguy?n Vi?t</div></div><div class="info">CocoDojo #25 <a href="#">more...</a></div></li>
                                        </ul>
                                        <div class="footer"><a href="#">Older topics</a> ...</div></div></div><span id="sb-10" class="skip-block-to"></span>                        </div>
                        </div>
                    </div>
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