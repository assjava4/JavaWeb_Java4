$().ready(function () {

    // validate signup form on keyup and submit
    $("#signupForm").validate({
        rules: {
            tendangnhap: {
                required: true,
                minlength: 5
            },
            matkhau: {
                required: true,
                minlength: 5
            },
            rematkhau: {
                required: true,
                minlength: 5,
                equalTo: "#password"
            },
            email: {
                required: true,
                email: true
            },
            hovaten: {
                required: true,
                minlength: 5
            },
            sodienthoai: {
                required: true,
                number : true,
                minlength: 5
            },
            diachi: {
                required: true,
                minlength: 5
            }
        },
        messages: {
            tendangnhap: {
                required: 'Vui lòng nhập tên đăng nhập',
                minlength: 'Vui lòng nhập ít nhất 5 ký tự'
            },
            matkhau: {
                required: 'Vui lòng nhập mật khẩu',
                minlength: 'Vui lòng nhập ít nhất 5 ký tự'
            },
            rematkhau: {
                required: 'Vui lòng nhập lại mật khẩu',
                minlength: 'Vui lòng nhập ít nhất 5 ký tự',
                equalTo: 'Mật khẩu không trùng khớp'
            },
            email: {
                required: 'Vui lòng nhập email',
                email: 'Email chưa đúng định dạng'
            },
            hovaten: {
                required: 'Vui lòng nhập họ và tên',
                minlength: 'Vui lòng nhập ít nhất 5 ký tự'
            },
            sodienthoai: {
                required: 'Vui lòng nhập số điện thoại',
                number : 'Vui lòng chỉ nhập số',
                minlength: 'Vui lòng nhập ít nhất 5 ký tự'
            },
            diachi: {
                required: 'Vui lòng nhập địa chỉ',
                minlength: 'Vui lòng nhập ít nhất 5 ký tự'
            }
        }
    });
    
});
