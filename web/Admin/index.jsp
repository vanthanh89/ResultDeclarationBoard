<%-- 
    Document   : index
    Created on : May 27, 2014, 9:03:31 PM
    Author     : ThangCao
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
            })
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
                        <li><a class="current" href="index.html">Admin Home</a></li>                    
                        <li><a href="login.html">Manage Users<!--[if IE 7]><!--></a></li>
                        <li><a href="login.html">Manage Subject<!--[if IE 7]><!--></a></li>
                        <li><a href="login.html">Statistic<!--[if IE 7]><!--></a></li>
                        <li><a href="">FAQ</a></li>
                        <li><a href="">Support</a></li>
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
                            <a class="menuitem submenuheader" href="">Admin Home</a>                
                            <a class="menuitem submenuheader" href="" >Manage Users</a>                
                            <a class="menuitem submenuheader" href="">Manage Subject</a>                
                            <a class="menuitem" href="">Statistic</a>                
                        </div>            
                    </div>  

                    <div class="right_content">            
                        <h2>Create new Subject</h2>

                        <div class="form">
                            <form action="" method="post" class="niceform">
                                <fieldset>
                                    <dl>
                                        <dt><label for="subject">SubjectName:</label></dt>
                                        <dd><input type="text" name="" id="" size="54" /></dd>
                                    </dl>
                                    <dl>
                                        <dt><label for="password">Min Mark:</label></dt>
                                        <dd><input type="text" name="minMark" id="" size="54" /></dd>
                                    </dl>

                                    <dl>
                                        <dt><label for="password">Max Mark:</label></dt>
                                        <dd><input type="text" name="maxMark" id="" size="54" /></dd>
                                    </dl>     
                                    <dl>
                                        <dt><label for="password">Cost:</label></dt>
                                        <dd><input type="text" name="cost" id="" size="54" /></dd>
                                    </dl> 
                                    <dl class="submit">
                                        <input type="submit" name="submit" id="submit" value="Submit" />
                                    </dl>



                                </fieldset>

                            </form>
                        </div>  
                        <h2>Table All Subject</h2> 


                        <table id="rounded-corner" summary="2007 Major IT Companies' Profit">
                            <thead>
                                <tr>
                                    <th scope="col" class="rounded-company"></th>
                                    <th scope="col" class="rounded">Product</th>
                                    <th scope="col" class="rounded">Details</th>
                                    <th scope="col" class="rounded">Price</th>
                                    <th scope="col" class="rounded">Date</th>
                                    <th scope="col" class="rounded">Edit</th>
                                    <th scope="col" class="rounded-q4">Delete</th>
                                </tr>
                            </thead>
                            <tfoot>
                                <tr>
                                    <td colspan="6" class="rounded-foot-left"><em>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut.</em></td>
                                    <td class="rounded-foot-right">&nbsp;</td>

                                </tr>
                            </tfoot>
                            <tbody>
                                <tr>
                                    <td><input type="checkbox" name="" /></td>
                                    <td>Product name</td>
                                    <td>details</td>
                                    <td>150$</td>
                                    <td>12/05/2010</td>
                                    <td><a href="#"><img src="images/user_edit.png" alt="" title="" border="0" /></a></td>
                                    <td><a href="#" class="ask"><img src="images/trash.png" alt="" title="" border="0" /></a></td>
                                </tr>
                            </tbody>
                        </table>
                        <div class="pagination">
                            <span class="disabled"><< prev</span><span class="current">1</span><a href="">2</a><a href="">3</a><a href="">4</a><a href="">5</a>…<a href="">10</a><a href="">11</a><a href="">12</a>...<a href="">100</a><a href="">101</a><a href="">next >></a>
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
