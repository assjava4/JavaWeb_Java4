<%-- 
    Document   : input
    Created on : Dec 19, 2017, 10:57:15 AM
    Author     : DucHuy
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="model.TbLoaitintuc"%>
<%@page import="service.LoaitinService"%>
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
        <%
            LoaitinService LTTService = new LoaitinService();
            ArrayList<TbLoaitintuc> ListLoaiTin = null;
            ListLoaiTin = LTTService.GetAllListLoaiTinTuc();
        %>
        <div class="main-content">
            <%@include file="includes/admin_sidebar.jsp" %>
            <%@include file="includes/admin_menu.jsp" %>
            <div id="page-wrapper">
                <div class="main-page">
                    <!--buttons-->
                    <div class="grids">
                        <div class="form-section">
                            <h2>Form General Elements</h2>
                            <form action="NewsServlet" method="post" enctype="multipart/form-data" name="addnew">
                                <div class="col-md-12 form-grid">
                                    <div class="form-grid1">
                                        <h4><span>Thêm</span> Tin tức</h4>
                                        <div class="bottom-form">
                                            <div class="col-md-2 grid-form">
                                                <h5>Tiêu đề</h5>
                                            </div>
                                            <div class="col-md-9 grid-form1">
                                                <input type="text" placeholder="Text" name="tieude">
                                                <span></span>
                                            </div>
                                            <div class="clearfix"></div>
                                        </div>
                                        <div class="bottom-form">
                                            <div class="col-md-2 grid-form">
                                                <h5>Tóm tắt nội dung</h5>
                                            </div>
                                            <div class="col-md-9 grid-form">
                                                <textarea name="tomtat" style="width: 100%;" rows="5"></textarea>
                                            </div>
                                            <div class="clearfix"></div>
                                        </div>

                                        <div class="bottom-form">
                                            <div class="col-md-2 grid-form">
                                                <h5>Nội dung</h5>
                                            </div>
                                            <div class="col-md-9">
                                                <textarea name="noidung"></textarea>
                                                <script>
                                                    CKEDITOR.replace('noidung');
                                                </script>
                                            </div>
                                            <div class="clearfix"></div>
                                        </div>

                                        <div class="bottom-form">
                                            <div class="col-md-2 grid-form">
                                                <h5>Loại tin</h5>
                                            </div>
                                            <div class="col-md-9 grid-form1">
                                                <select class="multiple" name="loaitin">
                                                    <%
                                                        for (int i = 0; i < ListLoaiTin.size(); i++) {
                                                            TbLoaitintuc loaitintuc = ListLoaiTin.get(i);

                                                    %>
                                                    <option value="<%= loaitintuc.getIdloaitin()%>"><%= loaitintuc.getTenloai()%></option>
                                                    <%
                                                        }
                                                    %>
                                                </select>

                                            </div>
                                            <div class="clearfix"></div>
                                        </div>

                                        <div class="bottom-form">
                                            <div class="col-md-2 grid-form">
                                                <h5>Hình ảnh</h5>
                                            </div>
                                            <div class="col-md-9 grid-form1">
                                                <input type="file" id="exampleInputFile" name="photo">
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
