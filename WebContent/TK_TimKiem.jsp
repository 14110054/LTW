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
           <script src="js/angular.min.js"></script>
    
   <title>Trang Trưởng Khoa/Trưởng Bộ Môn Tìm Kiếm Hội Đồng</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
     <link rel="icon" href="img/logo.PNG" type="image/x-icon" />
    <link rel="shortcut icon" href="img/logo.PNG"/>
<script>
var validationApp = angular.module('validationApp', []);

  validationApp.controller('mainController', function($scope) {
     
    $scope.submitForm = function() {
      if ($scope.userForm.$valid) {
        alert('May Report finished.');
      }

    };

  });
</script>
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
  <div class="container">
          <div class="row">
             <!-- <div class="col-md-2"></div>
              <div class="col-md-8">-->
             <div class="btn-group btn-group-justified" role="group" aria-label="abc">
                                 <div class="btn-group" role="group">
                                   <a href="TK_NhapTTGV.jsp"> <button type="button"  class="btn btn-default" >Nhập/Xem thông tin</button></a>
                                </div>
                                <div class="btn-group" role="group">
                                  <a href="TK_SapXep.jsp">  <button type="button" class="btn btn-default">Sắp xếp hội đồng</button></a>
                                </div>
                                <div class="btn-group" role="group">
                                    <a href="TK_TimKiem.jsp"> <button type="button" class="btn btn-info">Tìm kiếm hội đồng
                                             </button></a> 
                                </div>
              </div><br>

            <div class="row">
                 <div class=" col-md-offset-3 col-md-2"> 
                         <label class=>Tìm theo </label>
                    </div>
                    <div class="col-md-2" >
                        <select class="form-control ">
                            <option>Mã GV</option>
                            <option>Địa điểm</option>
                            <option>Thời điểm</option>
                        </select>
                    </div>
                  <div class="col-md-2">
                    <input type="tgkt" class="form-control" id="tgkt">
                  </div>
                   <div>
                     <button type="button"> Tìm kiếm </button>
                  </div>
            </div>

        </div>
      </div>
 
        <br>
         <div class="row">
             <div class="col-md-10 col-md-offset-1 ">
                 <table class="table table-bordered">
                      <thead>
                          <tr>
                              <th>STT</th>
                              <th>Mã đề tài</th>
                              <th>Tên đề tài</th>
                              <th>Chuyên ngành</th>
                              <th>Mã GV</th>
                              <th>Tên GV</th>
                              <th>Địa điểm</th>
                              <th>Ngày</th>
                              <th>Từ giờ</th>
                              <th>Đến giờ</th>
                        </tr>
                      </thead>
                    </table>
              </div>
       </div>              
          
              <div class="col-md-2"></div>

     
</body>
</html>