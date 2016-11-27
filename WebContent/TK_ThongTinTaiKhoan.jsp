<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script src="js/jquery-3.1.0.min.js"></script>    
    <script src="js/bootstrap.min.js"></script>    
   <title>TK_Thông Tin Tài Khoản</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
     <link rel="icon" href="img/logo.PNG" type="image/x-icon" />
    <link rel="shortcut icon" href="img/logo.PNG"/>

  <style>
img {
    width: 100%;
    height: auto;
}
body {
    background-image: url("img/bkg3.jpg");
}
</style>
</head>
<body>
    <jsp:include page= "HeaderTK.jsp"></jsp:include>
                
  <div class="col-md-6 col-md-offset-3  ">
    <div class="row">
      <div class="panel panel-primary">
                <div class="panel-heading">Thông Tin Tài Khoản</div>
                  <div class="panel-body">
                  <h3 class="form-signin-heading" style="text-align: center;">Thông tin tài khoản</h3><br>
                    <div class="row" >
                      <div class="col-md-7 col-md-offset-3">
                          <p>Tên người dùng: <h>Võ Thị Thanh Vi</h></p>
                          <p>Mật khẩu:<h>********</h></p>
                          <p>Email:<h>vttv@gmail.com</h></p>
                          <p>Loại người dùng:<h>Trưởng khoa/ Trưởng bộ môn</h></p>

                      </div>
                     
                          
                        </div>

                   </div>
                    <br>
                <div class="row">
                  <div class="col-md-3 col-md-offset-1">
                         <a href="TK_DoiMatKhau.jsp" type="submit"><button class="btn btn-default"> Đổi mật khẩu</button></a>

                  </div>
                  <div class="col-md-3 col-md-offset-1">
                           <a href="TK_SuaTTTK.jsp" type="submit"><button class="btn btn-default" > Cập Nhật</button></a>


                  </div>
                  <div class="col-md-3 col-md-offset-1">
                           <a href="TK_SapXep.jsp" type="submit"><button class="btn btn-default">Trở về</button></a>

                  </div>

                </div>
               
                <br>
              </div>
          </div>
        </div>
  
</body>
</html>