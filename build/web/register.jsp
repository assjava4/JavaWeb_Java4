<%-- 
    Document   : regiter
    Created on : Dec 18, 2017, 12:58:35 PM
    Author     : DucHuy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/tooplate_style.css" rel="stylesheet" type="text/css" />

        <!-- Arquivos utilizados pelo jQuery lightBox plugin -->
        <script type="text/javascript" src="scripts/jquery.js"></script>
        <script type="text/javascript" src="scripts/jquery.lightbox-0.5.js"></script>
        <link rel="stylesheet" type="text/css" href="css/jquery.lightbox-0.5.css" media="screen" />
        <!-- / fim dos arquivos utilizados pelo jQuery lightBox plugin -->

        <!-- Ativando o jQuery lightBox plugin -->
        <script type="text/javascript">
            $(function () {
                $('#map a').lightBox();
            });
        </script>
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
                <div class="col_w450 float_l">
                    <div id="contact_form">

                        <h2>Quick Contact Form</h2>

                        <form  action="RegisterServlet" method="post">

                            <label for="fullname">Họ tên:</label> <input type="text" id="fullname" name="fullname" class="required input_field" />
                            <div class="cleaner h10"></div>
                            <label for="tendn">Tên đăng nhập:</label> <input type="text" id="fullname" name="tdn" class="required input_field" />
                            <div class="cleaner h10"></div>
                            <label for="pass">Mật khẩu:</label> <input type="password" id="fullname" name="pwd" class="required input_field" />
                            <div class="cleaner h10"></div>
                            <label for="repass">Nhập lại mật khẩu:</label> <input type="password" id="fullname" name="rpwd" class="required input_field" />
                            <div class="cleaner h10"></div>
                            <label for="email">Email:</label> <input type="text" class="validate-email required input_field" name="email" id="email" />
                            <div class="cleaner h10"></div>
                            <label for="sdt">Số điện thoại:</label> <input type="text" id="fullname" name="sdt" class="required input_field" />
                            <div class="cleaner h10"></div>
                            <label for="diachi">địa chỉ:</label> <input type="text" id="fullname" name="dt" class="required input_field" />
                            <div class="cleaner h10"></div>
<!--                            <label for="avatar">Avatar:</label> <input type="text" id="fullname" name="photo" class="required input_field" />
                            <div class="cleaner h10"></div>-->


                            <input type="submit" value="Đăng ký" id="submit" name="submit" class="submit_btn float_l" />
                        </form> 
                    </div> 
                </div>

                <div class="col_w450 float_r">
                    <h4>Our Location</h4>
                    <div id="map"><a href="images/map_big.jpg" title="Our Location"><img width="300" height="200" src="images/map_thumb.jpg" alt="Our Location" class="image_wrapper" /></a></div>                
                    <div class="cleaner h30"></div>

                    <h4>Mailing Address</h4>
                    <h6><strong>Company Name</strong></h6>
                    980-640 Duis lacinia dictum, <br />
                    Accumsan auctor, 14930<br />
                    Diam a mollis tempor<br /><br />

                    <strong>Phone:</strong> 010-020-0120<br />
                    <strong>Email:</strong> <a href="mailto:info@company.com">info@company.com</a></div>    	

                <div class="cleaner"></div>
            </div> <!-- end of tooplate_main -->
        </div> <!-- end of wrapper -->

        <!-- begin of tooplate_footer -->
        <%@include file="includes/tooplate_footer.jsp" %>
        <!-- end of tooplate_footer -->
    </body>
</html>
