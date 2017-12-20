<%-- 
    Document   : suaNews
    Created on : Dec 19, 2017, 7:15:11 PM
    Author     : DucHuy
--%>

<%@page import="service.*"%>
<%@page import="model.TbTintuc"%>
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
            tintucService ttsv = new tintucService();
            TbTintuc tin = null;
            String tinID = request.getParameter("idtintuc");
            tin = ttsv.GettintucByID(tinID);
        %>
        <div class="main-content">
            <%@include file="includes/admin_sidebar.jsp" %>
            <%@include file="includes/admin_menu.jsp" %>

            <div id="page-wrapper">
                <div class="main-page">
                    <!--buttons-->
                    <div class="grids">
                        <div class="form-section">
                            <h2>Sửa Tin tức</h2>

                            <form action="editnewsServlet" method="post" enctype="multipart/form-data">
                                  <div class="col-md-12 form-grid">
                                  <div class="form-grid1">
                                    <h4><span>Sửa</span> Tin tức</h4>
                                    <input style="display: none;" name="idtin" value="<%=tin.getIdtintuc()%>" />
                                    <div class="bottom-form">
                                        <div class="col-md-2 grid-form">
                                            <h5>Tiêu đề</h5>
                                        </div>
                                        <div class="col-md-9 grid-form1">
                                            <input type="text" placeholder="Text" name="tieude" value="<%=tin.getTentieude()%>">
                                            <span></span>
                                        </div>
                                        <div class="clearfix"></div>
                                    </div>
                                    <div class="bottom-form">
                                        <div class="col-md-2 grid-form">
                                            <h5>Tóm tắt nội dung</h5>
                                        </div>
                                        <div class="col-md-9">
                                            <textarea name="tomtat" style="width: 100%;" rows="5"><%=tin.getTomtatnd()%></textarea>
                                        </div>
                                        <div class="clearfix"></div>
                                    </div>

                                    <div class="bottom-form">
                                        <div class="col-md-2 grid-form">
                                            <h5>Nội dung</h5>
                                        </div>
                                        <div class="col-md-9">
                                            <textarea name="noidung" ><%=tin.getNoidung()%></textarea>
                                            <script>
                                                CKEDITOR.replace('noidung');
                                            </script>
                                        </div>
                                        <div class="clearfix"></div>
                                    </div>
                                    <div class="bottom-form">
                                        <div class="col-md-2 grid-form">
                                            <h5>Hình ảnh</h5>
                                        </div>
                                        <div class="col-md-9 grid-form1">
                                            <input type="file" id="exampleInputFile" name="photo" value="<%=tin.getHinhanh()%>">
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
