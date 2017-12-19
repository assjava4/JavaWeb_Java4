<%-- 
    Document   : tooplate_popup
    Created on : Dec 15, 2017, 12:01:08 PM
    Author     : DucHuy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- begin login popup -->
<div id="loginpp" class="modal">
    <form class="modal-content animate" action="/action_page.php">
        <div class="imgcontainer">
            <span onclick="hiddenPopup()" class="close" title="Close Modal">&times;</span>
            <img src="images/tooplate_logo.png" alt="Avatar" class="avatar">
        </div>

        <div class="container">
            <label><b>Username</b></label>
            <input type="text" placeholder="Enter Username" name="uname" required>

            <label><b>Password</b></label>
            <input type="password" placeholder="Enter Password" name="psw" required>

            <button type="submit">Login</button>
            <span>Chưa có tài khoản? </span><a onclick="showRegisterPopup()" style="cursor: pointer;">Đăng ký ngay!</a>
        </div>

        <div class="container" style="background-color:#f1f1f1">
            <button type="button" onclick="hiddenPopup()" class="cancelbtn">Cancel</button>
            <span class="psw">Forgot <a onclick="showRForgotPopup()" style="cursor: pointer;">Password?</a></span>
        </div>
    </form>
</div>
<!-- / end login popup -->

<!-- begin register popup -->
<div id="registerpp" class="modal">
    <form class="modal-content animate" action="RegisterServlet" method="POST">
        <div class="imgcontainer">
            <span onclick="hiddenPopup()" class="close" title="Close Modal">&times;</span>
            <img src="images/tooplate_logo.png" alt="Avatar" class="avatar">
        </div>

        <div class="container">
            <input type="text" placeholder="Nhập tên đăng nhập" name="tendangnhap" required>
            <input type="password" placeholder="Nhập mật khẩu" name="matkhau" required>
            <input type="email" placeholder="Nhập email của bạn" name="email" required>
            <input type="text" placeholder="Nhập họ và tên" name="hovaten" required>
            <input type="text" placeholder="Nhập số điện thoại" name="sodienthoai" required>
            <input type="text" placeholder="Nhập địa chỉ" name="diachi" required>
            <button type="submit">Đăng ký</button>
            <span>Đã có tài khoản? </span><a onclick="showLoginPopup()" style="cursor: pointer;">Đăng nhập ngay!</a>
        </div>

        <div class="container" style="background-color:#f1f1f1">
            <button type="button" onclick="hiddenPopup()" class="cancelbtn">Cancel</button>
            <span class="psw">Forgot <a onclick="showRForgotPopup()" style="cursor: pointer;">Password?</a></span>
        </div>
    </form>
</div>
<!-- / end register popup -->

<!-- begin forgot popup -->
<div id="forgotpp" class="modal">
    <form class="modal-content animate" action="/action_page.php">
        <div class="imgcontainer">
            <span onclick="hiddenPopup()" class="close" title="Close Modal">&times;</span>
            <img src="images/tooplate_logo.png" alt="Avatar" class="avatar">
        </div>

        <div class="container">
            <label><b>Email</b></label>
            <input type="text" placeholder="Enter Email" name="uname" required>
            <button type="submit">Forgot password</button>
        </div>

        <div class="container" style="background-color:#f1f1f1">
            <button type="button" onclick="hiddenPopup()" class="cancelbtn">Cancel</button>
            <span class="psw">Trở lại <a onclick="showLoginPopup()" style="cursor: pointer;">Đăng nhập</a></span>
        </div>
    </form>
</div>
<!-- / end forgot popup -->
