
// Hiển thị Popup
function showLoginPopup() {
    document.getElementById('loginpp').style.display = 'block';
    document.getElementById('registerpp').style.display = 'none';
    document.getElementById('forgotpp').style.display = 'none';
}
function showRegisterPopup() {
    document.getElementById('registerpp').style.display = 'block';
    document.getElementById('loginpp').style.display = 'none';
    document.getElementById('forgotpp').style.display = 'none';
}
function showRForgotPopup() {
    document.getElementById('forgotpp').style.display = 'block';
    document.getElementById('loginpp').style.display = 'none';
    document.getElementById('registerpp').style.display = 'none';
}

// Ẩn Popup
function hiddenPopup() {
    document.getElementById('loginpp').style.display = 'none';
    document.getElementById('registerpp').style.display = 'none';
    document.getElementById('forgotpp').style.display = 'none';
}




// Get the modal
var modallogin = document.getElementById('loginpp');
var modalregister = document.getElementById('registerpp');
var modalforgot = document.getElementById('forgotpp');

// When the user clicks anywhere outside of the modal, close it
window.onclick = function (event) {
    if (event.target == modallogin) {
        modallogin.style.display = "none";
    }
    if (event.target == modalregister) {
        modalregister.style.display = "none";
    }
    if (event.target == modalforgot) {
        modalforgot.style.display = "none";
    }
}
