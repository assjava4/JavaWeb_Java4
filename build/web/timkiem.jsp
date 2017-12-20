<%-- 
    Document   : danhsachtin
    Created on : Dec 13, 2017, 11:25:25 AM
    Author     : DucHuy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Danh sách tin</title>
        <%@include file="includes/tooplate_headtag.jsp"%>
    </head>
    <body>

        <div id="tooplate_wrapper">
            <!-- begin of header -->
            <%@include file="includes/tooplate_header.jsp" %>
            <!-- end of header -->

            <!-- begin of tooplate_menu -->
            <%@include file="includes/tooplate_menu.jsp" %>
            <!-- end of tooplate_menu -->

            <!-- begin of middle -->
            <%@include file="includes/tooplate_middle.jsp" %>
            <!-- end of middle -->
            <div id="tooplate_main">
                <div class="post_box">
                    <img src="images/tooplate_image_07.jpg" alt="Image 07" width="280px" height="150px"/>
                    <p><span class="cat">Posted in <a href="#">3D</a>, <a href="#">Animations</a></span> | <a href="#">321 comments</a></p>
                    <p>Nunc consectetur purus sit amet enim fermentum ac porta dolor porta. Integer vehicula faucibus leo, ac molestie nibh lacinia sit amet.
                        Curabitur a ultricies elit. Mauris semper ligula id lacus laoreet hendrerit. Nulla a augue felis, vel rhoncus libero.
                        Nunc mollis tortor non lacus volutpat varius. Duis et nunc neque. Nunc tincidunt fringilla tellus, a tempus velit scelerisque quis.
                        Nulla at diam velit, non lobortis lectus. Validate <a href="http://validator.w3.org/check?uri=referer" rel="nofollow">
                            <strong>XHTML</strong></a> and <a href="http://jigsaw.w3.org/css-validator/check/referer" rel="nofollow">
                                <strong>CSS</strong></a>.</p>
                    <a class="more" href="blog_post.html">More</a>
                    <div class="cleaner"></div>
                </div>
                <div class="cleaner"></div>

                <div class="pagging">
                    <ul>
                        <li><a href="#">Previous</a></li>
                        <li><a href="#">1</a></li>
                        <li><a href="#">2</a></li>
                        <li><a href="#">3</a></li>
                        <li><a href="#">4</a></li>
                        <li><a href="#">5</a></li>
                        <li><a href="#">6</a></li>
                        <li><a href="#">Next</a></li>
                    </ul>
                    <div class="cleaner"></div>
                </div>

                <div class="cleaner"></div>
            </div>
            <%
            }
            %><!-- end of tooplate_main -->
        </div> <!-- end of wrapper -->

        <!-- begin of tooplate_footer -->
        <%@include file="includes/tooplate_footer.jsp" %>
        <!-- end of tooplate_footer -->

    </body>
</html>
