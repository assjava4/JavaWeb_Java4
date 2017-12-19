<%-- 
    Document   : dstaikhoan
    Created on : Dec 19, 2017, 4:41:29 PM
    Author     : DucHuy
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="service.taikhoanService"%>
<%@page import="model.TbUsers"%>
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
            ArrayList<TbUsers> arrayList = taikhoanService.Getall();
            String folderupload = getServletContext().getInitParameter("file-upload");
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
                                        <th>Họ tên</th>
                                        <th>Tên đăng nhập</th>
                                        <th>Email</th>
                                        <th>Ngày tạo</th>
                                        <th>Số điện thoại</th>
                                        <th>Địa chỉ</th>
                                        <th>Trạng thái</th>
                                        <th></th>
                                        <th></th>
                                    </tr>
                                </thead>
                                <% int i = 0;
                                    for (TbUsers taikhoan : arrayList) {
                                        i++;
                                %>
                                <tbody>
                                    <tr>
                                        <td><img src="${pageContext.request.contextPath}/<%= folderupload%><%=taikhoan.getAvatar()%>" 
                                                 width="80px" height="80px"/></td>
                                        <td><%= taikhoan.getHoten()%></td>
                                        <td><%= taikhoan.getTenuser()%></td>
                                        <td><%= taikhoan.getEmail()%></td>
                                        <td><%= taikhoan.getNgaytao()%></td>
                                        <td><%= taikhoan.getSodienthoai()%></td>
                                        <td><%= taikhoan.getDiachi()%></td>
                                        <td><%= taikhoan.getIdtrangthai()%></td>
                                        <!--                                        <td></td>
                                                                                <td></td>-->

                                        <td><a href="editUsers.jsp?iduser=<%=taikhoan.getIduser()%>">Sửa</a></td>  
                                        <td><a href="">Xóa</td>  

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
