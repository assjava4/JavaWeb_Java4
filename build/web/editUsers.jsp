<%-- 
    Document   : addUsers
    Created on : Dec 19, 2017, 9:13:37 PM
    Author     : DucHuy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Điều khiển</title>
        <%@include file="includes/admin_headtag.jsp" %>
        <script src="//cdn.ckeditor.com/4.8.0/standard/ckeditor.js"></script>
    </head>
    <body class="cbp-spmenu-push">

        <div class="main-content">
            <%@include file="includes/admin_sidebar.jsp" %>
            <%@include file="includes/admin_menu.jsp" %>

            <div id="page-wrapper">
                <div class="main-page">
                    <!--buttons-->
                    <div class="grids">
                        <div class="form-section">
                            <h2>Sửa Tài khoản</h2>
                            <form action="editnewsServlet" method="post">
                                <div class="col-md-12 form-grid">
                                    <div class="form-grid1">
                                        <h4><span>Sửa Thông tin</span> Tài khoản</h4>
                                        <div class="bottom-form">
                                            <div class="col-md-2 grid-form">
                                                <h5>Hình ảnh</h5>
                                            </div>
                                            <div class="col-md-9 grid-form1">
                                                <input type="text" placeholder="Text" name="hinh" >
                                                <span></span>
                                            </div>
                                            <div class="clearfix"></div>
                                        </div>
                                        <div class="bottom-form">
                                            <div class="col-md-2 grid-form">
                                                <h5>Họ tên</h5>
                                            </div>
                                            <div class="col-md-9 grid-form1">
                                                <input type="text" placeholder="Họ tên" name="hoten" >
                                                <span></span>
                                            </div>
                                            <div class="clearfix"></div>
                                        </div>
                                        <div class="bottom-form">
                                            <div class="col-md-2 grid-form">
                                                <h5>Tên Đăng Nhập</h5>
                                            </div>
                                            <div class="col-md-9 grid-form1">
                                                <input type="text" placeholder="Tên đăng nhập" name="tendn" >
                                                <span></span>
                                            </div>
                                            <div class="clearfix"></div>
                                        </div>
                                        <div class="bottom-form">
                                            <div class="col-md-2 grid-form">
                                                <h5>Mật khẩu</h5>
                                            </div>
                                            <div class="col-md-9 grid-form1">
                                                <input type="text" placeholder="Mật khẩu" name="pwd" >
                                                <span></span>
                                            </div>
                                            <div class="clearfix"></div>
                                        </div>
                                        <div class="bottom-form">
                                            <div class="col-md-2 grid-form">
                                                <h5>Email</h5>
                                            </div>
                                            <div class="col-md-9 grid-form1">
                                                <input type="text" placeholder="Email" name="email" >
                                                <span></span>
                                            </div>
                                            <div class="clearfix"></div>
                                        </div>
                                        <div class="bottom-form">
                                            <div class="col-md-2 grid-form">
                                                <h5>Số điện thoai</h5>
                                            </div>
                                            <div class="col-md-9 grid-form1">
                                                <input type="text" placeholder="Số điện thoại" name="sdt" >
                                                <span></span>
                                            </div>
                                            <div class="clearfix"></div>
                                        </div>
                                        <div class="bottom-form">
                                            <div class="col-md-2 grid-form">
                                                <h5>Địa chỉ</h5>
                                            </div>
                                            <div class="col-md-9 grid-form1">
                                                <input type="text" placeholder="Địa chỉ" name="diachi" >
                                                <span></span>
                                            </div>
                                            <div class="clearfix"></div>
                                        </div>
                                        <div class="bottom-form">
                                            <div class="col-md-2 grid-form">
                                                <h5></h5>
                                            </div>
                                            <div class="col-md-9 grid-form1">
                                                <button type="submit" class="btn btn-sm btn-primary"><i class="fa fa-angle-right"></i> submit</button>
                                                <button type="reset" class="btn btn-sm btn-warning"><i class="fa fa-repeat"></i> Reset</button>
                                            </div>
                                            <div class="clearfix"></div>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        
                            <div class="clearfix"></div>
                        </div>
                    </div>
                </div>
            </div>

            <%@include file="includes/admin_footer.jsp" %>
        </div>
        <%@include file="includes/admin_footag.jsp" %>
    </body>
</html>
