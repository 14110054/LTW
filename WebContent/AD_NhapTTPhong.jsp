<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ page import="java.sql.*" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible"content="IE=edge">
<link rel="icon" href="img/logo.PNG" type="image/x-icon" />
    <link rel="shortcut icon" href="img/logo.PNG"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
    <style>
        body    { padding-top:30px; }
    </style>
    
    <!-- JS ===================== -->
    <!-- load angular -->
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.4/angular.js">
    <script src="app.js"></script>
<style>
img {
    width: 100%;
    height: auto;
}
</style>
<style>
body {
    background-image: url("img/bkg3.jpg");
}
</style>
</head>
<body>
<sql:setDataSource var ="con" driver ="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost/do_an" user="root" password="6796"/>
 <sql:query var="p" sql="select * from phong" dataSource="${con}"/>
<jsp:include page= "HeaderTK.jsp"></jsp:include>
 <nav class="navbar navbar col-md-offset-0">
        <div class="container">
          <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".navbar-collapse">
              <span class="sr-only">Toggle navigation</span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            </button>
          </div>
               <a href="ADprofile.jsp" class="btn btn-success btn-lg">
    <span class="glyphicon glyphicon-hand-left"></span> Trở về
  </a>
        <div class="btn-group btn-group-justified" role="group" aria-label="abc">
  <div class="btn-group" role="group">
          <a href="AD_Xem_NhapTT.jsp"><button   type="button"  class="btn btn-default " >Nhập thông tin giảng viên</button></a>
  </div>
  <div class="btn-group" role="group">
    <a href="AD_NhapTTDeTai.jsp"><button type="button" class="btn btn-default  ">nhập thông tin đề tài</button></a>
  </div>
  <div class="btn-group" role="group">
    <a href="AD_NhapTTPhong.jsp"><button type="button" class="btn btn-info ">nhập thông tin phòng</button></a>
  </div>
</div>
<br><br><br>

<html ng-app="myApp">
  <head>  
    <title>AD_nhapthongtinphong</title>  
    <style>body{font-family:"Time new roman";background-color:#E2E2DC}</style>
  <style>
      .IDroom.ng-valid {
          background-color: lightgreen;
      }
      .IDroom.ng-dirty.ng-invalid-required {
          background-color: red;
      }
      .IDroom.ng-dirty.ng-invalid-minlength {
          background-color: yellow;
      }

    .date.ng-valid {
          background-color: lightgreen;
      }
      .date.ng-dirty.ng-invalid-required {
          background-color: red;
      }
      .date.ng-dirty.ng-invalid-minlength {
          background-color: yellow;
      }
       .start.ng-valid {
          background-color: lightgreen;
      }
      .start.ng-dirty.ng-invalid-required {
          background-color: red;
      }
      .start.ng-dirty.ng-invalid-minlength {
          background-color: yellow;
      }
         .finish.ng-valid {
          background-color: lightgreen;
      }
      .finish.ng-dirty.ng-invalid-required {
          background-color: red;
      }
      .finish.ng-dirty.ng-invalid-minlength {
          background-color: yellow;
      }
 
    </style>
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
     <link rel="stylesheet" href="app.css">
  </head>
  <body ng-app="validationApp">
      <div class="generic-container" ng-controller="mainController">
          <div class="panel panel-default">
              <div class="panel-heading"><span class="lead">Nhập thông tin phòng </span></div><br>
              <div class="formcontainer">
                  <form ng-submit="ctrl.submit()" name="myForm" class="form-horizontal">
                      <input type="hidden" ng-model="ctrl.user.STT" />

                      <div class="row">
                          <div class="form-group col-md-12">
                              <label class="col-md-4 control-lable">Mã phòng</label>
                              <div class="col-md-7">
                                  <input type="text" ng-model="maph" name="maph" class=" form-control input-sm" placeholder="Nhập mã phòng" required ng-minlength="3"/>
                                  <div class="has-error" ng-show="myForm.$dirty">
                                    <!--  <span ng-show="myForm.ID.$error.required">This is a required field</span>
                                      <span ng-show="myForm.ID.$error.minlength">Minimum length required is 3</span>
                                      <span ng-show="myForm.ID.$invalid">This field is invalid </span>   -->
                                  </div> 
                              </div>
                          </div>
                      </div>
                         
                       
                     <div class="row">
                          <div class="form-group col-md-12">
                              <label class=" col-md-4  control-lable">Ngày</label>
                              <div class="col-md-7">
                                  <input type="text" ng-model="ng" name="ng" class="form-control input-sm" placeholder="yyyy--mm-dd" ng-pattern="/^(0?[1-9]|[12][0-9]|3[01])-(0?[1-9]|1[012])-((19[0-9]{2})|(20[0-1]{1}[0-4]{1}))$/">
                                  <div class="has-error" ng-show="myForm.$dirty">
                                   <!--     <span ng-show="myForm.uname.$error.required">This is a required field</span>
                                      <span ng-show="myForm.uname.$error.minlength">Minimum length required is 3</span>
                                      <span ng-show="myForm.uname.$invalid">This field is invalid </span> -->
                                  </div>
                              </div>
                          </div>
                      </div>
 
                     <div class="row">
                          <div class="form-group col-md-12">
                              <label class="col-md-4  control-lable" >Từ giờ</label>
                              <div class="col-md-7">
                                  <input type="text" ng-model="bd" name="bd" class="form-control input-sm" placeholder="hh:pp:ss" required ng-minlength="1"/>
                                  <div class="has-error" ng-show="myForm.$dirty">
                               <!--       <span ng-show="myForm.cn.$error.required">This is a required field</span>
                                      <span ng-show="myForm.cn.$error.minlength">Minimum length required is 3</span>
                                      <span ng-show="myForm.cn.$invalid">This field is invalid </span> -->  
                                  </div>
                              </div>
                          </div>
                      </div>

                      <div class="row">
                          <div class="form-group col-md-12">
                              <label class="col-md-4 control-lable" >Đến giờ</label>
                              <div class="col-md-7">
                                  <input type="text" ng-model="kt" name="kt" class="form-control input-sm" placeholder="hh:pp:ss" required ng-minlength="1"/>
                                  <div class="has-error" ng-show="myForm.$dirty">
                               <!--        <span ng-show="myForm.cn.$error.required">This is a required field</span>
                                      <span ng-show="myForm.cn.$error.minlength">Minimum length required is 3</span>
                                      <span ng-show="myForm.cn.$invalid">This field is invalid </span> --> 
                                  </div>
                              </div>
                          </div>
                      </div>
 
 
                      <div class="row">
                            <div class="col-md-offset-10">
                                <button type="submit" name="submit" class="btn btn-primary" ng-disabled="myForm.$invalid">Submit</button> 
                               <button type="reset" ng-click="reset()" class="btn btn-warning btn-sm" ng-disabled="myForm.$pristine">Reset Form</button></div>
                      </div>
                                      <script>
      src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.8/angular.js"
      src="js/angular.min.js"
  	var validationApp = angular.module('validationApp', []);
  	validationApp.controller('mainController', function($scope) {	
  		$scope.submitform = function() {
  			if ($scope.myForm.$valid) {
  				alert('May Report finished.');
  			}
  			 $scope.reset = function(){
       			$scope.maph = "";
       			$scope.ng = "";
       			$scope.bd = "";
       			$scope.kt = "";
       	   }   
       	   $scope.reset();
  		};	  
  	});	
  	
  </script>
                             <% 
          						 if(request.getParameter("submit")!=null)
        						  {
        	 						String a= request.getParameter("maph");
      								String b= request.getParameter("ng");
    							  	String c= request.getParameter("bd");
    								String d= request.getParameter("kt");
   						   	try{
      								Class.forName("com.mysql.jdbc.Driver");
      								Connection connection = 
      								 DriverManager.getConnection
      	   							 ("jdbc:mysql://localhost:3306/do_an" ,"root", "6796");
      				 				Statement st = connection.createStatement() ;
     	             				 int i1=st.executeUpdate("insert into phong (TenPhong,Ngay,StartTime,EndTime)  values(' "+a+" ',' "+b+ " ',' "+c+" ',' "+d+" ')");
     	             				 out.print("Data insert OK");
      	              				  }
      	     					   catch(Exception e){
      	      						  out.print(e);
      	      					  e.printStackTrace();
      	        }
          }   
          %>
                  </form>
              </div>
          </div>
          <div class="panel panel-default">
                <!-- Default panel contents -->
              <div class="panel-heading"><span class="lead">Danh sách giảng viên </span></div>
              <div class="tablecontainer">
                  <table class="table table-hover">
                      <thead>
                          <tr>
                          <!--      <th>Số thứ tự</th> --> 
                              <th>Tên phòng</th>
                              <th>Ngày</th>
                              <th>Thời gian bắt dầu(giờ)</th>
                              <th>Thời gian kết thúc(giờ)</th>
                              <th width="100">
                          <c:forEach var="rows" items="${p.rows}">
                                <tr>
	                     <!--        <td>${rows.idRoom}</td> -->
	                             <td> ${rows.TenPhong}</td>
	                             <td> ${rows.Ngay}</td>
	                             <td> ${rows.StartTime }</td>
	                             <td> ${rows.EndTime }</td>
	                             <td> ${rows.MSSV }</td>
	                             <td> ${rows.TenSV }</td>
	                             <td>
	                             <button type="button"  class="btn btn-success custom-width">Edit</button>  <button type="button"  class="btn btn-success custom-width">Remove</button>
                              	</td>
	                       </tr>
                         </thead>
                           </c:forEach>
                      </tbody>
                  </table>
              </div>
          </div>
      </div>
</body>
</html>