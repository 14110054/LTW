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
   <title>Trang Admin</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
     <link rel="icon" href="img/logo.PNG" type="image/x-icon" />
    <link rel="shortcut icon" href="img/logo.PNG"/>

  <style>
img {
    width: 100%;
    height: auto;
}
body {
    background-image: url("img/bkg2.jpg");
}
</style>
</head>
<body>
    <jsp:include page= "HeaderAD.jsp"></jsp:include>
    <div class="item col-md-3 col-sm-3 col-xs-6">
            <a href="#" class="list-group-item active"><span>Dành cho Admin</span></a>
                <a href="AD_TaoTaiKhoan.jsp" ><h class="list-group-item" style="color:blue">Thêm tài khoản</h></a>
                <a href="AD_XoaTK.jsp"><h class="list-group-item" style="color:blue">Xóa tài khoản</h></a>
                <a href="AD_KhoaTaiKhoan.jsp"><h class="list-group-item" style="color:blue">Khóa tài khoản</h></a>
              <a href="AD_XemTTHD.jsp" ><h class="list-group-item" style="color:blue">Xem thông tin hội đồng</a>
                           <a href="AD_Xem_NhapTT.jsp" ><h class="list-group-item" style="color:blue">Nhập thông tin</h></a>                         
                               <a href="index.jsp" ><h class="list-group-item" style="color:blue">Đăng xuất</h> </a>         
         </div>
          
           <div class="col-md-9">
             <div class="panel panel-primary">
             
                   <!-- <div id="panel1" style="border:1px solid black;height:500px;overflow:scroll"> --> 
                       <div class="panel-heading" style="color: while"><h3>Danh sách tài khoản</h3></div>
                                        <div class="row">
                             <div class=" col-md-12"> 
                      <table class="table table-bordered">
                          <thead>
                              <tr>
                                <th>STT</th>
                                <th>Tên tài khoản</th>
                                <th>Loại tài khoản</th>
                                <th>Email</th>
                                <th>Ngày tham gia</th>
                            
                             
                              </tr>
                          </thead>
                          <tbody>
                            <tr>
                              <td>1</td>
                              <td>svit14</td>
                              <td>sinh viên</td>
                              <td>vttv@gmail.com</td>
                              <td>24/9/2016</td>   
                            
                            </tr>
                          </tbody>
                          <tbody>
                            <tr>
                              <td><h style="color:white">2</td>
                              <td><h style="color:white">gvit14</td>
                              <td><h style="color:white">giảng viên</td>
                              <td><h style="color:white">gv@gmail.com</td>
                              <td><h style="color:white">24/9/2016</td> 
                             
                            </tr>
                          </tbody>
                          <tbody>
                            <tr>
                              <td><h style="color:white">3</td>
                              <td><h style="color:white">TK14</td>
                              <td><h style="color:white">Trưởng khoa</td>
                              <td><h style="color:white">trkhoa@gmail.com</td>
                              <td><h style="color:white">24/9/2016</td>   
                             
                            </tr>
                          </tbody>
                    </table>
                    </div>
                  </div>
                

<br><br><br><br><br><br><br><br><br><br>
 <footer>
      <div class="container">
        <div class="footer-info text-center">
          <br>
          <br>
          <br>
          <br>
          <footer><h style="color:white"> LTW</footer>         
        </div>
      </div>
    </footer>
</body>
</html>