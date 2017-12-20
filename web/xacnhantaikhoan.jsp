<%-- 
    Document   : xacnhantaikhoan
    Created on : Dec 20, 2017, 11:41:30 PM
    Author     : DuongNguyen
--%>

<%@page import="model.*"%>
<%@page import="service.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Xác nhận tài khoản</title>
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

            <div id="tooplate_main">
                <h1>Xác nhận tài khoản</h1>
                <hr>
                <%
                    taikhoanService tkService = new taikhoanService();
                    TbUsers taikhoan = new TbUsers();
                    String key = request.getParameter("key");
                    taikhoan = tkService.GetUsersByKey(key);
                    if (taikhoan != null) {
                        taikhoan.setRandomkey(null);
                        taikhoan.setIdtrangthai("active");
                        tkService.InsertUser(taikhoan);
                %>
                <h5>Cảm ơn <%=taikhoan.getHoten()%>! Tài khoản của bạn đã được xác nhận</h5>
                <a onclick="showLoginPopup()" style="cursor: pointer;">Đăng nhập ngay!</a>
                <%                    } else {
                        response.sendRedirect("404.jsp");
                    }
                %>
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
