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
        <title>GV_DoiMatKhau</title> 
    
   <style>
#main{margin-left:20px; margin-right:20px;}
#main form input[type=text], #main form input[type=email], #main form input[type=password]{width: 100%;display: inline}
</style>
    <link href="css/bootstrap.min.css" rel="stylesheet">
     <link rel="icon" href="img/logo.PNG" type="image/x-icon" />
    <link rel="shortcut icon" href="img/logo.PNG"/>
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
<jsp:include page= "HeaderGV.jsp"></jsp:include>
 <div class="row">
        <div class="col-md-6 col-md-offset-3">
          <div class="panel panel-default">
            <div class="panel-heading"><h style=color:red>Đổi mật khẩu</h></div>
            <div class="panel-body">
              <div class="container">
               <div class="form-group">
                   <div id="main" ng-app="demoApp" ng-controller="RegisterCtrl">
                  <form class="form-horizontal" name="form" ng-submit="register()" novalidate>  
               	      <div class="form-group">
                           <label for="password" class="col-xs-2 control-label required"><h style=color:blue>Mật khẩu cũ:</h></label>
                           <div class="col-md-3">
                          <input name="password" ng-model="password" type="password" value="" class="form-control" placeholder="Mật khẩu cũ" ng-minlength="6" ng-maxlength="30" required>
                          <i class="fa fa-check text-success" ng-show="form.password.$dirty && form.password.$valid"></i>
                          <div ng-show="form.password.$dirty && form.password.$invalid" class="text-danger"><i class="fa fa-times text-danger"></i>
                          <span ng-show="form.password.$error.required">Mật khẩu không được bỏ trống</span>
                          <span ng-show="form.password.$error.minlength">Mật khẩu phải dài hơn 6 kí tự</span>
                          <span ng-show="form.password.$error.maxlength">Mật khẩu phải ngắn hơn 30 kí tự</span>
                          </div>
                          </div>
                       </div>
                       <div class="form-group">
                           <label for="password1" class="col-xs-2 control-label required"><h style=color:blue >Mật khẩu mới:</h></label>
                           <div class="col-md-3">
                          <input name="password1" ng-model="password1" type="password" value="" class="form-control" placeholder="Mật khẩu mới" ng-minlength="6" ng-maxlength="30" required>
                          <i class="fa fa-check text-success" ng-show="form.password1.$dirty && form.password1.$valid"></i>
                          <div ng-show="form.password1.$dirty && form.password1.$invalid" class="text-danger"><i class="fa fa-times text-danger"></i>
                          <span ng-show="form.password1.$error.required">Mật khẩu không được bỏ trống</span>
                          <span ng-show="form.password1.$error.minlength">Mật khẩu phải dài hơn 6 kí tự</span>
                          <span ng-show="form.password1.$error.maxlength">Mật khẩu phải ngắn hơn 30 kí tự</span>
                          </div>
                          </div>
                       </div>
                       <div class="form-group">
                           <label for="password2" class="col-xs-2 control-label required"><h style=color:blue>Nhập lại mật khẩu mới:</h></label>
                           <div class="col-md-3">
                          <input name="password2" ng-model="password2" type="password" value="" class="form-control" placeholder="Nhập lại mật khẩu mới" ng-minlength="6" ng-maxlength="30" required>
                          <i class="fa fa-check text-success" ng-show="form.password2.$dirty && form.password2.$valid"></i>
                          <div ng-show="form.password2.$dirty && form.password2.$invalid" class="text-danger"><i class="fa fa-times text-danger"></i>
                          <span ng-show="form.password2.$error.required">Mật khẩu không được bỏ trống</span>
                          <span ng-show="form.password2.$error.minlength">Mật khẩu phải dài hơn 6 kí tự</span>
                          <span ng-show="form.password2.$error.maxlength">Mật khẩu phải ngắn hơn 30 kí tự</span>
                          </div>
                          </div>
                       </div>
                     <div class="form-group">
                             <div class="col-md-2 col-md-offset-3">
                            <div class="col-md-3" style="text-align: left;">
                                <button type="submit" class="btn btn-primary" ng-disabled="!form.$dirty || (form.$dirty && form.$invalid)">Đồng ý</button>
                            </div>
                            </div>
                           <div class="col-md-2 col-md-offset" style="text-align: rignt;">
                                <button type="submit" class="btn btn-primary" ng-disabled="!form.$dirty || (form.$dirty && form.$invalid)">Hủy</button>
                            </div>
            
                           </div>
            </form>
          
            </div>
      </div>
  </div>
</div>
</div>
</div>
</div>


</body>

</html>