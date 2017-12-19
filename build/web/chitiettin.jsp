<%-- 
    Document   : chitiettin
    Created on : Dec 13, 2017, 11:26:29 AM
    Author     : DucHuy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Chi tiết tin</title>
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
                    <h2> Blog Post with multi-level comments</h2>
                    <img src="images/tooplate_image_05.jpg" alt="Image 05" />
                    <p><span class="cat">Posted in <a href="#">Illustrations</a>, <a href="#">Graphics</a></span> | <a href="#">136 comments</a></p>
                    <p>Vestibulum adipiscing tempus elit eu condimentum. Fusce at mi felis. Etiam sed velit nibh. Nunc bibendum justo nec eros elementum auctor. Floral Design is  free website template for everyone. You may edit and apply this web template for any purpose.</p>
                    <p align="justify">Lorem ipsum dolor sit amet, <a href="#">consectetur</a> adipiscing elit. Etiam nec turpis bibendum massa dapibus dictum. Donec eu odio sapien. Donec tincidunt eleifend mauris, ac volutpat leo tincidunt. </p>
                    <p align="justify">Aenean vel vehicula augue. Vestibulum lectus sem, porttitor non molestie quis, pulvinar nec nulla. Maecenas id orci vitae lectus fermentum posuere. <a href="#">Phasellus</a> lacinia eleifend elit, eu mollis erat consectetur et. Integer semper sollicitudin quam a ornare. Nam venenatis nibh ac sem faucibus et imperdiet magna laoreet. Sed at risus dui. Ut imperdiet libero at mauris vestibulum tempor. Proin nec nunc magna, eu blandit massa. Sed elementum nisi ut quam vehicula eu egestas nisi varius. <a href="#">Aenean semper</a> convallis mi eu congue. Nunc vitae luctus ligula. Praesent adipiscing turpis at nisl dapibus vehicula. Validate <a href="http://validator.w3.org/check?uri=referer" rel="nofollow"><strong>XHTML</strong></a> and <a href="http://jigsaw.w3.org/css-validator/check/referer" rel="nofollow"><strong>CSS</strong></a>.</p>
                </div>

                <h3>Comments</h3>

                <ol class="comment_list">
                    <li>
                        <div class="comment_box">
                            <img src="images/avator.jpg" alt="avator 1" class="img_fl img_border" />
                            <div class="comment_content">
                                <div class="comment_meta"><strong><a href="#">Olivia</a></strong> April 19, 2011 9:45 am</div>
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris at tellus eu massa rhoncus porttitor. Quisque scelerisque urna ut nisl gravida dictum. </p>
                                <a href="#" class="more">Reply</a>
                            </div>
                            <div class="clear"></div>
                        </div>
                    </li>
                    <li>
                        <ul>
                            <li class="depth_2">
                                <div class="comment_box">
                                    <img src="images/avator.jpg" alt="avator 2" class="img_fl img_border" />
                                    <div class="comment_content">
                                        <div class="comment_meta"><strong><a href="#">Panda</a></strong> April 21, 2011 11:45 am</div>
                                        <p>In hac habitasse platea dictumst. Vestibulum enim turpis, faucibus sed varius nec, tincidunt a leo. </p>
                                        <a href="#" class="more">Reply</a>
                                    </div>
                                    <div class="clear"></div>
                                </div>
                            </li>
                            <ul>
                                <li class="depth_3">
                                    <div class="comment_box">
                                        <img src="images/avator.jpg" alt="avator 3" class="img_fl img_border" />
                                        <div class="comment_content">
                                            <div class="comment_meta"><strong><a href="#">Thanya</a></strong> April 21, 2011 9:45 pm</div>
                                            <p>In sit amet ipsum metus. Sed ultrices mauris in augue ultrices non iaculis ligula molestie.</p>
                                            <a href="#" class="more">Reply</a>
                                        </div>
                                        <div class="clear"></div>
                                    </div>
                                </li>
                            </ul>
                        </ul>
                    </li>
                    <li>
                        <div class="comment_box">
                            <img src="images/avator.jpg" alt="avator 4" class="img_fl img_border" />
                            <div class="comment_content">
                                <div class="comment_meta"><strong><a href="#">Pan Cake </a></strong> April 23, 2011 8:20 am</div>
                                <p>Aliquam rhoncus volutpat adipiscing. Vivamus feugiat odio vitae tortor facilisis in dictum justo dapibus. Mauris convallis congue quam. Sed volutpat lectus quis arcu dapibus non gravida odio lobortis.</p>
                                <a href="#" class="more">Reply</a>
                            </div>
                            <div class="clear"></div>
                        </div>
                    </li>
                    <li>
                        <div class="comment_box">
                            <img src="images/avator.jpg" alt="avator 5" class="img_fl img_border" />
                            <div class="comment_content">
                                <div class="comment_meta"><strong><a href="#">George</a></strong> April 29, 2011 9:05 am</div>
                                <p>Aliquam dictum diam at nunc vulputate laoreet. Quisque tristique faucibus nunc accumsan convallis.</p>
                                <a href="#" class="more">Reply</a>
                            </div>
                            <div class="clear"></div>
                        </div>
                    </li>
                </ol>

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

                <div class="cleaner h40"></div>

                <div id="comment_form">
                    <h3>Leave your comment</h3>

                    <form action="#" method="get">
                        <div class="form_row">
                            <label>Name (* required)</label>
                            <br />
                            <input type="text" name="name" />
                        </div>
                        <div class="form_row">
                            <label>Email  (* required)</label>
                            <br />
                            <input type="text" name="name" />
                        </div>
                        <div class="form_row">
                            <label>Comment</label><br />
                            <textarea  name="comment" rows="" cols=""></textarea>
                        </div>

                        <input type="submit" name="Submit" value="Submit" class="submit_btn" />
                    </form>
                </div>
                <div class="cleaner"></div>
            </div> <!-- end of tooplate_main -->
        </div> <!-- end of wrapper -->

        <!-- begin of tooplate_footer -->
        <%@include file="includes/tooplate_footer.jsp" %>
        <!-- end of tooplate_footer -->

    </body>
</html>
