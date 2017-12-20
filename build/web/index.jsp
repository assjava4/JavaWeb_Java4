<%-- 
    Document   : index
    Created on : Dec 12, 2017, 12:12:47 PM
    Author     : DucHuy
--%>

<%@page import="service.LoaitinService"%>
<%@page import="model.*"%>
<%@page import="java.util.ArrayList"%>
<%@page import="service.tintucService"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Trang chủ</title>
        <%@include file="includes/tooplate_headtag.jsp"%>
    </head>
    <body>

        <div id="tooplate_wrapper">
            <!-- begin of header -->
            <%@include file="includes/tooplate_header.jsp" %>
            <!-- / end of header -->

            <!-- begin of tooplate_menu -->
            <%@include file="includes/tooplate_menu.jsp" %>
            <!-- / end of tooplate_menu -->

            <!-- begin of middle -->
            <%@include file="includes/tooplate_middle.jsp" %>
            <!-- / end of middle -->
            <%
                tintucService ttService = new tintucService();

                ArrayList<TbTintuc> Listxemnhieu = null;
                ArrayList<TbTintuc> ListTinMB = null;
                ArrayList<TbTintuc> ListTinICT = null;

                Listxemnhieu = ttService.Getalltinbyluotxem();
                ListTinMB = ttService.GetAllTinTucTheoIdLoaiTin(2);
                ListTinICT = ttService.GetAllTinTucTheoIdLoaiTin(1);
            %>
            <div id="tooplate_main">
                <div class="col_w300 float_l">
                    <h2>Tin nổi bật</h2>
                    <%
                        for (int i = 0; i <= 7; i++) {
                            TbTintuc tintuc = Listxemnhieu.get(i);
                    %>
                    <div class="tinnoibat">
                        <div class="image_wrapper">
                            <a style="display: flex;" href="#">
                                <img src="images/<%=tintuc.getHinhanh()%>" alt="Image 01" width="280px" height="150px"/>
                            </a>
                        </div>
                        <p><em><%=tintuc.getTentieude()%></em></p>
                        <p>Lượt xem: <%=tintuc.getLuotxem()%></p>
                        <p align="justify"><%=tintuc.getTomtatnd()%></p>
                        <a href="#" class="more">Read more</a>
                    </div>
                    <%
                        }
                    %>
                </div>

                <div class="col_w600 float_r">
                    <div class="content_box">
                        <h2>Tin ICT</h2>
                        <%
                            for (int i = 0; i <= 5; i++) {
                                TbTintuc tintucMB = ListTinMB.get(i);
                        %>
                        <div class="tinict">
                            <img class="image_wrapper image_fl" src="images/<%=tintucMB.getHinhanh()%>" alt="Image 04" width="280px" height="150px"/>
                            <p><em><%=tintucMB.getTentieude()%> </em></p>
                            <p><%=tintucMB.getNgaydang()%> || Lượt xem: <%=tintucMB.getLuotxem()%></p>
                            <p><%=tintucMB.getTomtatnd()%>
                            </p>
                            
                            <a href="#">Read more</a>
                        </div>
                        <br>
                        <%
                        }
                        %>
                        <a href="#" class="float_r">Read more</a>
                    </div>
                        
                    <div class="content_box">
                        <h2>Tin Mobile</h2>
                        <%
                            for (int i = 0; i <= 5; i++) {
                                TbTintuc tintucICT = ListTinICT.get(i);
                        %>
                        <div class="tinict">
                            <img class="image_wrapper image_fl" src="images/<%=tintucICT.getHinhanh()%>" alt="Image 04" width="280px" height="150px"/>
                            <p><em><%=tintucICT.getTentieude()%> </em></p>
                            <p><%=tintucICT.getNgaydang()%> || Lượt xem: <%=tintucICT.getLuotxem()%></p>
                            <p><%=tintucICT.getTomtatnd()%>
                            </p>
                            <a href="#">Read more</a>
                        </div>
                        <br>
                        <%
                        }
                        %>
                        <a href="#" class="float_r">Read more</a>
                    </div>
                </div>
                <div class="cleaner"></div>
            </div> <!-- / end of tooplate_main -->
        </div> <!-- / end of wrapper -->

        <!-- begin of tooplate_footer -->
        <%@include file="includes/tooplate_footer.jsp" %>
        <!-- / end of tooplate_footer -->

        <!-- begin of tooplate popup -->
        <%@include file="includes/tooplate_popup.jsp" %>
        <!-- / end of tooplate popup -->

        <!-- begin of footerJS -->
        <script src="js/footerJS.js" type="text/javascript"></script>
        <!-- / end of footerJS -->
    </body>
</html>
