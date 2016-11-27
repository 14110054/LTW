<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
   <script src="http://code.angularjs.org/1.2.6/angular.min.js"></script>
   <link rel="stylesheet" href="css/font-awesome.css">
  <style>
#main{margin-left:20px; margin-right:20px;}
#main form input[type=text], #main form input[type=email], #main form input[type=password]{width: 100%;display: inline}</style>
 
</head>
    <title>Ad_KhoaTK</title> 
    <link href="css/bootstrap.min.css" rel="stylesheet">
     <link rel="icon" href="img/logo.PNG" type="image/x-icon" />
    <link rel="shortcut icon" href="img/logo.PNG"/>
<head>
<style>
body {
    background-image: url("img/bkg2.jpg");
}
</style>
<style>
img {
    width: 100%;
    height: auto;
}
</style>
      <title>Trang Admin Khóa Tài Khoản</title>
    <script>
    var demoApp = angular.module('demoApp',[])
    .controller( "RegisterCtrl",['$scope', function($scope) {
        $scope.success=false;
        $scope.register = function(){
            $scope.success=true;
        }
    }]);
</script>
 <style>
#main{margin-left:20px; margin-right:20px;}
#main form input[type=text], #main form input[type=email], #main form input[type=password]{width: 100%;display: inline}
</style>
</head>
    <title>Ad_KhoaTK</title> 
    <link href="css/bootstrap.min.css" rel="stylesheet">
     <link rel="icon" href="img/logo.PNG" type="image/x-icon" />
    <link rel="shortcut icon" href="img/logo.PNG"/>
<head>
<style>
body {
    background-image: url("img/bkg2.jpg");
}
</style>
<style>
img {
    width: 100%;
    height: auto;
}
</style>
img {
    width: 100%;
    height: auto;
}
body {
    background-image: url("img/bkg2.jpg");
}
</style>
<body>
    <jsp:include page= "HeaderAD.jsp"></jsp:include>
   <div class="row">
        <div class="col-md-6 col-md-offset-3">
            <div class="panel panel-default">
            <div class="panel-heading"><h style=color:red>Khóa Tài Khoản</div>
            <div class="panel-body">
            <div class="container">
            <div class="form-group">
           <div id="main" ng-app="demoApp" ng-controller="RegisterCtrl">
          <form class="form-horizontal" name="form" ng-submit="register()" novalidate>  
            <div class="form-group">
               <label for="name" class="col-xs-2 control-label required"><h style=color:blue>Tên tài khoản:</label>
               <div class="col-md-3">
              <input name="name" type="text" class="form-control" placeholder="Tên tài khoản"  ng-model="name"  ng-minlength="6" ng-maxlength="50"  required>
              <i class="fa fa-check text-success" ng-show="form.name.$dirty && form.name.$valid"></i>
              <div ng-show="form.name.$dirty && form.name.$invalid" class="text-danger"><i class="fa fa-times text-danger"></i>
              <span ng-show="form.name.$error.required">Tên tài khoản không được bỏ trống</span>
              </div>
              </div>
           </div>        
          <div class="form-group">
             <label for="password" class="col-xs-2 control-label required"><h style=color:blue>Mật khẩu:</label>
             <div class="col-md-3">
            <input name="password" ng-model="password" type="password" value="" class="form-control" placeholder="Mật khẩu" ng-minlength="6" ng-maxlength="30" required>
            <i class="fa fa-check text-success" ng-show="form.password.$dirty && form.password.$valid"></i>
            <div ng-show="form.password.$dirty && form.password.$invalid" class="text-danger"><i class="fa fa-times text-danger"></i>
            <span ng-show="form.password.$error.required">Mật khẩu không được bỏ trống</span>
            </div>
            </div>
         </div>
             <div class="form-group">
               <label for="email" class="col-xs-2 control-label required"><h style=color:blue>Email:</label>
                <div class="col-md-3">
                <input name="email" type="email" class="form-control" placeholder="Email" ng-model="email" autocomplete="off" required >
                <i class="fa fa-check text-success" ng-show="form.email.$dirty && form.email.$valid"></i>
                <div ng-show="form.email.$dirty && form.email.$invalid" class="text-danger"><i class="fa fa-times text-danger"></i>
                <span ng-show="form.email.$error.required">Bạn chưa nhập địa chỉ email</span>
                <span ng-show="form.email.$error.email">Không đúng định dạng email</span>
               </div>
               </div>
          </div>
           <div class="form-group">
            <label for="time" class="col-xs-2 control-label"><h style=color:blue>Ngày tham gia:</label>
             <div class="col-md-3">
            <input name="time" type="text" ng-model="time" class="form-control" placeholder="dd-mm-yyyy" ng-pattern="/^(0?[1-9]|[12][0-9]|3[01])-(0?[1-9]|1[012])-((19[0-9]{2})|(20[0-1]{1}[0-4]{1}))$/">
            <i class="fa fa-check text-success" ng-show="form.time.$dirty && form.time.$valid"></i>
            <div ng-show="form.time.$dirty && form.time.$invalid" class="text-danger"><i class="fa fa-times text-danger"></i>Nhập ngày theo đúng định dạng dd-mm-yyyy {{time}}</div>
               </div>
             </div>      
         </div>   
         
   </form>
</div>
</div>
   <div class="row">
  <div class="col-md-4" style="text-align:right;"> 
    <p><h style=color:red>Thời hạn khóa:</p>
     <br>
     <br>
                              
     <p><h style=color:red>Loại người dùng:</p><br><br>
     </div>
     <div class="col-md-5">
    <div class="row" style="text-align: left ;">
    <div class="form-group">
     <div class="radio">
       <label><input type="radio" name="optradio1">1day</label></div>
         <div class="radio">
        <label><input type="radio" name="optradio1">7days</label></div>
         <div class="radio">
         <label><input type="radio" name="optradio1">30days</label></div>
           </div>
            <div class="fomr-group">
            <div class="radio">      
          <label><input type="radio" name="optradio">Sinh viên</label></div>
             <div class="radio">
            <label><input type="radio" name="optradio">Giảng viên</label></div>
          <div class="radio">
          <label><input type="radio" name="optradio">Trưởng khoa/Trưởng bộ môn</label></div>
          <div class="radio">
          <label><input type="radio" name="optradio">Admin</label></div>
          
          </div>
          </div>
          </div>
      </div>
                            <div class="form-group">
         <div class="col-md-2 col-md-offset-6">
        <div class="col-md-3" style="text-align: left;">
            <a href="ADprofile.jsp"><button type="submit" class="btn btn-primary" ng-disabled="!form.$dirty || (form.$dirty && form.$invalid)"><h style=color:white>Đồng ý</i></button></a>
        </div>
       </div>
       <div class="col-md-2 col-md-offset-2" style="text-align: center;">
            <a href=""><button type="submit" class="btn btn-primary" ng-disabled="!form.$dirty || (form.$dirty && form.$invalid)"><h style=color:white>Hủy</i></button></a>
        </div>
       </div>
    </div>
  </div>

  </div>
</div>

</body>
</html>