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
                    <h3>Lorem Ipsum Dolor Sit Amet</h3>
                    <img src="images/tooplate_image_05.jpg" alt="Image 05" width="280px" height="150px"/>
                    <p><span class="cat">Posted in <a href="#">Illustrations</a>, <a href="#">Graphics</a></span> | <a href="#">186 comments</a></p>
                    <p>Integer vestibulum facilisis eleifend. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae;
                        Pellentesque suscipit consequat elementum. Morbi a justo dolor, ut vehicula ligula. Duis tempor lacus quis nisi imperdiet consequat.
                        Cras in turpis sem. Cras facilisis quam a nisl tristique et iaculis justo aliquam. Floral Design is  free 
                        <a rel="nofollow" href="http://www.tooplate.com">website template</a> for everyone.
                        You may edit and apply this template for any purpose.</p>
                    <a class="more" href="blog_post.html">More</a>
                    <div class="cleaner"></div>
                </div>
                <div class="post_box">
                    <h3>Cum Sociis Natoque Penatibus</h3>
                    <img src="images/tooplate_image_06.jpg" alt="Image 06" width="280px" height="150px"/>
                    <p><span class="cat">Posted in <a href="#">Website</a>, <a href="#">New Design</a></span> | <a href="#">254 comments</a></p>
                    <p>Proin ullamcorper nunc feugiat neque tristique sed dapibus erat scelerisque. Pellentesque eget nibh magna, sed porta elit.
                        Nunc bibendum auctor nisl, molestie ultrices felis gravida sit amet. Nullam bibendum eleifend enim, vitae tempus augue mattis eget.
                        Nulla dictum ultrices faucibus.  Duis pretium urna ut arcu varius in dignissim nulla viverra.   Mauris gravida, tellus ac faucibus
                        fermentum, risus libero luctus purus, a consectetur neque neque. </p>
                    <a class="more" href="blog_post.html">More</a>
                    <div class="cleaner"></div>
                </div>
                <div class="post_box">
                    <h3>Etiam Auctor Sapien Dapibus </h3>
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
            </div> <!-- end of tooplate_main -->
        </div> <!-- end of wrapper -->

        <!-- begin of tooplate_footer -->
        <%@include file="includes/tooplate_footer.jsp" %>
        <!-- end of tooplate_footer -->

    </body>
</html>
