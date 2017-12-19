<%-- 
    Document   : table
    Created on : Dec 19, 2017, 11:37:24 AM
    Author     : DucHuy
--%>

<%@page import="service.tintucService"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.TbTintuc"%>
<%@page import="model.TbTintuc"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Điều khiển</title>
        <%@include file="includes/admin_headtag.jsp" %>
        <link href="assets/css/jquery.dataTables.min.css" rel='stylesheet' type='text/css' />
        <script src="assets/js/jquery.dataTables.min.js"></script>
        <script>
            $(document).ready(function () {
                $('#myTable').DataTable();
            });
        </script>
    </head>
    <body class="cbp-spmenu-push">
        <%
            ArrayList<TbTintuc> arrayList = tintucService.Getall();
            if (arrayList != null) {
        %>
        <div class="main-content">
            <%@include file="includes/admin_sidebar.jsp" %>
            <%@include file="includes/admin_menu.jsp" %>
            <div id="page-wrapper">
                <div class="main-page">
                    <!--buttons-->
                    <div class="grids-section">
                        <h2 class="hdg">Danh sách tin tức</h2>
                        <div class="clearfix"></div>
                    </div>
                    <div class="bottom-table">
                        <div class="bs-docs-example">
                            <table id="myTable" class="table table-hover">
                                <thead>
                                    <tr>
                                        <th>Hình</th>
                                        <th>Tiêu đề</th>
                                        <th>Tóm tắt nội dung</th>
                                        <th>nội dung</th>
                                        <th>Ngày đăng</th>
<!--                                        <th>Người đăng</th>-->
<!--                                        <th>Loại tin</th>-->
                                        <th>Lượt xem</th>
                                        <th></th>
                                        <th></th>
                                    </tr>
                                </thead>
                                <% int i = 0;
                                    for (TbTintuc tintuc : arrayList) {
                                        i++;
                                %>
                                <tbody>
                                    <tr>
                                        <td><%= tintuc.getHinhanh()%></td>
                                        <td><%= tintuc.getTentieude()%></td>
                                        <td><%= tintuc.getTomtatnd()%></td>
                                        <td><%= tintuc.getNoidung()%></td>
                                        <td><%= tintuc.getNgaydang()%></td>
0<!--                                        <td></td>
                                        <td></td>-->
                                        <td><%= tintuc.getLuotxem()%></td>

                                        <td><a href="<%= tintuc.getIdtintuc()%>">Sửa</td>  
                                        <td><a href="<%= tintuc.getIdtintuc()%>">Xóa</td>  

                                    </tr>
                                </tbody>
                                <%
                                    }
                                %>
                            </table>
                        </div>
                        <%
                            }
                        %>
                        </table>
                    </div>
                </div>
            </div>
        </div>
        <%@include file="includes/admin_footer.jsp" %>
    </div>
    <%@include file="includes/admin_footag.jsp" %>
</body>
</html>
