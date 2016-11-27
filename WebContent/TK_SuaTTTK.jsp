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
        <title>TK_Sửa Thông Tin Tài Khoản</title> 
    
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
<jsp:include page= "HeaderTK.jsp"></jsp:include>

 <div class="row">
        <div class="col-md-6 col-md-offset-3">
            <div class="panel panel-default">
                <div class="panel-heading"><h style=color:red>Sửa thông tin tài khoản</h></div>
                    <div class="panel-body">
                      <div class="container">
                           <div class="form-group">
                               <div id="main" ng-app="demoApp" ng-controller="RegisterCtrl">
                                  <form class="form-horizontal" name="form" ng-submit="register()" novalidate>  
                                         <div class="form-group">
                                                 <label for="name" class="col-xs-2 control-label required"><h style=color:blue>Tên tài khoản:</h></label>
                                                 <div class="col-md-3">
                                                <input name="name" type="text" class="form-control" placeholder="Tên tài khoản"  ng-model="name"  ng-minlength="6" ng-maxlength="50" ng-pattern="/^[a-zA-Z]+$/" required>
                                                <i class="fa fa-check text-success" ng-show="form.name.$dirty && form.name.$valid"></i>
                                                <div ng-show="form.name.$dirty && form.name.$invalid" class="text-danger"><i class="fa fa-times text-danger"></i>
                                                <span ng-show="form.name.$error.required">Tên tài khoản không được bỏ trống</span>
                                                <span ng-show="form.name.$error.minlength">Tên tài khoản phải dài hơn 6 kí tự</span>
                                                <span ng-show="form.name.$error.maxlength">Tên tài khoản phải ngắn hơn 50 kí tự</span>
                                                <span ng-show="form.name.$error.pattern">Tên tài khoản chỉ bao gồm các kí tự chữ cái</span>
                                                </div>
                                                </div>
                                         </div>  
                                         <div class="form-group">
                                               <label for="email" class="col-xs-2 control-label required"><h style=color:blue>Email:</h></label>
                                                <div class="col-md-3">
                                                <input name="email" type="email" class="form-control" placeholder="Email" ng-model="email" autocomplete="off" required >
                                                <i class="fa fa-check text-success" ng-show="form.email.$dirty && form.email.$valid"></i>
                                                <div ng-show="form.email.$dirty && form.email.$invalid" class="text-danger"><i class="fa fa-times text-danger"></i>
                                                <span ng-show="form.email.$error.required">Bạn chưa nhập địa chỉ email</span>
                                                <span ng-show="form.email.$error.email">Không đúng định dạng email</span>
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