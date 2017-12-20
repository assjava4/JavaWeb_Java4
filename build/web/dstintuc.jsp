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
                                        <th>Tiêu đề</th>
                                        <th>Tóm tắt nội dung</th>
                                        <th>Ngày đăng</th>
                                        <th>Lượt xem</th>
                                        <th></th>
                                        <th></th>
                                    </tr>
                                </thead>
                                
                                <tbody>
                                    <% int i = 0;
                                    for (TbTintuc tintuc : arrayList) {
                                        i++;
                                %>
                                    <tr>
                                        <td><img src="${pageContext.request.contextPath}/<%= folderupload%><%=tintuc.getHinhanh()%>" 
                                                 width="80px"/></td>
                                        <td><%= tintuc.getTentieude().substring(0,20)%></td>
                                        <td><%= tintuc.getTomtatnd().substring(0,20)%>...</td>
                                        <td><%= tintuc.getNgaydang()%></td>
                                        <td><%= tintuc.getLuotxem()%></td>

                                        <td><a href="suaNews.jsp?idtintuc=<%= tintuc.getIdtintuc()%>">Sửa</a></td>  
                                        <td><a href="DeletenewServlet?id=<%= tintuc.getIdtintuc()%>">Xóa</a></td>  

                                    </tr>
                                      <%
                                    }
                                %>
                                </tbody>
                              
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
