<%-- 
    Document   : tooplate_menu
    Created on : Dec 13, 2017, 11:19:28 AM
    Author     : DucHuy
--%>

<%@page import="model.TbUsers"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<div id="tooplate_menu">
    <ul>
        <%
            if (session.getAttribute("userlog_trangthai") != null && session.getAttribute("userlog_trangthai").equals("notactive")) {
                response.sendRedirect("ErrorNotActice.jsp");
            }
            if (session.getAttribute("usName") != null) {
        %>
        <li><a href="index.jsp" class="current">Trang chủ</a></li>
        <li><a href="Tinmoi.jsp">Tin mới</a></li>
        <li><a href="tinXemNhieu.jsp">Tin xem nhiều</a></li>
        <li><a href="tinict.jsp">Tin ICT</a></li>
        <li><a href="tinmobile.jsp">Tin mobile</a></li>
        <li><a href="phanhoi.jsp">Phản hồi</a></li>
        <li><a href="dieukhien.jsp"><%=session.getAttribute("usName")%></a></li>
        <li><a href="Logout.jsp">Đăng xuất</a></li>
        <%
            } else {
        %>
        <li><a href="index.jsp" class="current">Trang chủ</a></li>
        <li><a href="Tinmoi.jsp">Tin mới</a></li>
        <li><a href="tinXemNhieu.jsp">Tin xem nhiều</a></li>
        <li><a href="tinict.jsp">Tin ICT</a></li>
        <li><a href="tinmobile.jsp">Tin mobile</a></li>
        <li><a href="phanhoi.jsp">Phản hồi</a></li>
        <li><a onclick="showLoginPopup()" style="cursor: pointer;">Đăng nhập</a></li>
        <li><a href="register.jsp">Đăng ký</a></li>
        <%
            }
        %>
    </ul>    	
</div>
