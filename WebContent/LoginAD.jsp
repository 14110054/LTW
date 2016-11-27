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
      
   <title>Trang Login</title>
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
    background-image: url("img/bkg2.jpg");
}
</style>
</head>
<body>
  <img src="img/SPKT.jpg">
    <div class="row">
          <div class="logo col-md-6 col-sm-6 col-xs-12 ">
              <div id='ctl05_portlet_9b8ba9cf-dd1c-4b80-91fe-8787110cd93b' style="padding:10px 0px 0px 0px;width:1000px;float:left"><div>   
              <br>              
               <marquee direction="left"><span style="text-align: left; font-size: 70px; color:   #FF0000;" ><h2 style="background-color:blue;color:white">
                   Ứng Dụng Xếp Giảng Viên Ngồi Hội Đồng Bảo Vệ Khóa Luận Tốt Nghiệp</h2>
                      </span></marquee>
                </div>   
          </div>    
      </div> 
    </div>
      <div class="container">

      <form class="form-signin col-md-7 col-md-offset-3">
       <div class="panel panel-default">
            
            <div class="panel-body">
                   <h1 class="form-signin-heading" style="text-align: center;">Đăng Nhập</h1><br>
                   <div class="row" style="text-align: center;">
                       <label class="radio-inline"><input type="radio" name="optradio"><a href="LoginSV.jsp" >Sinh viên </a></label>
                        <label class="radio-inline"><input type="radio"  name="optradio"><a href="LoginGV.jsp" >Giảng viên</a> </label>
                        <label class="radio-inline"><input type="radio"  name="optradio"><a href="LoginTK.jsp" >Trưởng khoa/Trưởng bộ môn</a> </label>
                       <label class="radio-inline"><input type="radio" checked="checked" name="optradio">Admin </label>
                   </div>
            </div>


     <div ng-app="validationApp" ng-controller="mainController">
        <div class="container">
          <div class="row">     
            <div class="col-sm-6">
                <form name="userForm" ng-submit="submitForm()" novalidate>
                         <div class="form-group">
                      <label>Username</label>
                          <input type="text" name="username" class="form-control" ng-model="username" 
                          ng-minlength="6" ng-maxlength="12" ng-required=true>
                          <span class="error" ng-show="userForm.username.$error.required">required</span>
                          <span class="error" ng-show="userForm.username.$error.minlength">words must be more than 6</span>
                          <span class="error" ng-show="userForm.username.$error.maxlength">words must be less than 12</span>
                          <span class="valid" ng-show="userForm.username.$valid">OK</span>
                     </div>
                    <div class="form-group">
                          <label>Password</label>
                          <input class="form-control" type="password" name="password" ng-show="!rememberPassword"
                                      ng-model="password" ng-required=true> 
                          <input type="text" name="plainPassword" ng-show="rememberPassword" ng-model="password" 
                                      ng-required=true> 
                          <span class="error" ng-show="userForm.password.$error.required">required</span> 
                          <span class="valid" ng-show="userForm.password.$valid">OK</span>
                     
                    </div>
                  <div class="form-group">
                     <input type="checkbox" id="rememberPassword" 
                            ng-model="rememberPassword">
                      <label class="remember" for="rememberPassword">
                        Nhớ mật khẩu</label>
                  </div>
                  <div class="col-md-5 col-md-offset-5">
	                 <button type="submit" class="btn btn-default" ng-disabled="userForm.$invalid"><a href="ADprofile.jsp" >Đăng nhập</a></button>
	                 <button type="submit" class="btn btn-default" ng-disabled="userForm.$invalid"><a href="TrangChu.jsp" >Hủy</a></button>
	               
               </div>
               <br>
               <br>

                </form>
              </div>
            </div>
          </div>
      </div>
      </div>
      </form>
      </div>
      
    
</body>
</html>