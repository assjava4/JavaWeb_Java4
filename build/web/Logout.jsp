<%-- 
    Document   : Logout
    Created on : Dec 3, 2016, 7:59:02 PM
    Author     : DuongNguyen
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Logout</title>
    </head>
    <body>
        <section>
            <%
                if (session != null) {
                    session.removeAttribute("usName");
                    session.removeAttribute("userlog_role");
                    session.removeAttribute("userlog_trangthai");
                    response.sendRedirect("index.jsp");
                }
            %>
        </section>
    </body>
</html>
