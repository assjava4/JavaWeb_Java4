<%-- 
    Document   : danhsachtin
    Created on : Dec 13, 2017, 11:25:25 AM
    Author     : DucHuy
--%>

<%@page import="service.tintucService"%>
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
            <%
                tintucService ttService = new tintucService();
                ArrayList<TbTintuc> Listmobile = null;
                Listmobile = ttService.GetAllTinTucTheoIdLoaiTin(2);
            %>
            <div id="tooplate_main">
                <%
                    for (int i = 0; i < Listmobile.size(); i++) {
                        TbTintuc tintuc = Listmobile.get(i);
                %>
                <div class="post_box">
                    <h3><%=tintuc.getTentieude()%></h3>
                    <img src="images/<%=tintuc.getHinhanh()%>" alt="Image 05" width="280px" height="150px"/>
                    <p>Ngày đăng: <%=tintuc.getNgaydang()%> || Lượt xem: <%=tintuc.getLuotxem()%></p>
                    <p><%=tintuc.getTomtatnd()%></p>
                    <a class="more" href="blog_post.html">More</a>
                    <div class="cleaner"></div>
                </div>
                <%
                }
                %>
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

