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
    <script src="js/angular.min.js"></script>
     <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.8/angular.js"></script>
    <style>
        body    { padding-top:30px; }
    </style>
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
<sql:setDataSource var ="con" driver ="com.mysql.jdbc.Driver" 
url="jdbc:mysql://localhost/do_an" user="root" password="6796"/>
 <sql:query var="gv" sql="select * from giangvien" dataSource="${con}"/>
 
<jsp:include page= "HeaderAD.jsp"></jsp:include>
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
          <a href="AD_Xem_NhapTT.jsp"><button   type="button"  class="btn btn-info" >Nhập thông tin giảng viên</button></a>
  </div>
  <div class="btn-group" role="group">
   <a href="AD_NhapTTDeTai.jsp"> <button type="button" class="btn btn-default">nhập thông tin đề tài</button></a>
  </div>
  <div class="btn-group" role="group">
   <a href="AD_NhapTTPhong.jsp"> <button type="button" class="btn btn-default">nhập thông tin phòng</button></a>
  </div>
</div>
<br><br><br>
<%
Class.forName("com.mysql.jdbc.Driver");
	Connection connection = 
	 DriverManager.getConnection
		 ("jdbc:mysql://localhost:3306/do_an" ,"root", "6796");
	
%>
<html ng-app="myApp">
  <head>  
    <title>AD_nhapthongtin</title>  
    <style>body{font-family:"Time new roman";background-color:#E2E2DC}</style>
  <style>
      .IDname.ng-valid {
          background-color: lightgreen;
      }
      .IDname.ng-dirty.ng-invalid-required {
          background-color: red;
      }
      .IDname.ng-dirty.ng-invalid-minlength {
          background-color: yellow;
      }

    .username.ng-valid {
          background-color: lightgreen;
      }
      .username.ng-dirty.ng-invalid-required {
          background-color: red;
      }
      .username.ng-dirty.ng-invalid-minlength {
          background-color: yellow;
      }
       .work.ng-valid {
          background-color: lightgreen;
      }
      .work.ng-dirty.ng-invalid-required {
          background-color: red;
      }
      .work.ng-dirty.ng-invalid-minlength {
          background-color: yellow;
      }
 
    </style>
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
     <link rel="stylesheet" href="app.css">
  </head>     


  <body ng-app="validationApp">
      <div class="generic-container"  ng-controller= "mainController">
          <div class="panel panel-default">
              <div class="panel-heading"><span class="lead">Nhập thông tin giảng viên </span></div><br>
              <div class="formcontainer">
                  <form method="get" ng-submit="submitForm()" name="myForm" class="form-horizontal" novalidate >
                      <input type="hidden" />

                      <div class="row">
                          <div class="form-group col-md-12">
                              <label class="col-md-4 control-lable" >Mã giảng viên</label>
                              <div class="col-md-7">
                                    <input type="text" ng-model="ma" name="ma" class="form-control"   placeholder="Nhập mã giảng viên" required ng-minlength="2"/>
                                    <!--  <span class="error" ng-show="myForm.ma.$error.required">required</span>
                                      <span class="error" ng-show="myForm.ma.$error.minlength">Minimum length required is 5</span>
                                      <span class="error" ng-show="myForm.ma.$invalid">This field is invalid </span> -->
       								 </div>
                                  </div>
                              </div>               
                     <div class="row">
                          <div class="form-group col-md-12">
                              <label class="col-md-4 control-lable ">Tên giảng viên</label>
                              <div class="col-md-7">
                                  <input type="text" ng-model="uname" name="uname" class="form-control"   placeholder="Nhập tên giảng viên" required ng-minlength="3"/>
                                   <!--  <span class="error"  ng-show="myForm.uname.$error.required">This is a required field</span>
                                      <span class="error" ng-show="myForm.uname.$error.minlength">Minimum length required is 3</span>
                                      <span class="error" ng-show="myForm.uname.$invalid">This field is invalid </span> -->   
                              </div>
                          </div>
                      </div>
 
                     <div class="row">
                          <div class="form-group col-md-12">
                              <label class="col-md-4 control-lable" >Chuyên ngành</label>
                              <%

            	try{
         			 Statement statement = connection.createStatement() ;
         			ResultSet ph  =statement.executeQuery("Select *  From  chuyennganh ") ;
          		 %>
          		 <div class="col-md-7 ">
          		 <select class="form-control" name="chng" >
         			<% while(ph.next()){ %> 
               				<option  > <%=ph.getString("TenCN")%>  </option>	
           		<% }%>
           		</select>
           	     <% 
           		 } catch(Exception e)
   					{    
   						out.print(e);
   					} %>
                                 <!--       <span class="error" ng-show="myForm.cn.$error.required">This is a required field</span>
                                      <span class="error" ng-show="myForm.cn.$error.minlength">Minimum length required is 5</span>
                                      <span class="error" ng-show="myForm.cn.$invalid">This field is invalid </span> -->
                              </div>
                          </div>
                      </div>
                      <div class="row">
                            <div class="col-md-offset-10">    
                               <button type="submit" name="submit" class="btn btn-primary" ng-disabled="myForm.$invalid">Submit</button> 
                               <button type="reset" ng-click="reset()" class="btn btn-warning btn-sm" ng-disabled="myForm.$pristine">Reset Form</button>
                               
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
       			$scope.ma = "";
       			$scope.uname = "";
       			$scope.cn = "";
       	   }   
       	   $scope.reset();
  		};	  
  	});	
  	
  </script>
                             <% 
          						 if(request.getParameter("submit")!=null)
        						  {
        	 						String a= request.getParameter("ma");
      								String b= request.getParameter("uname");
    							  	String c= request.getParameter("chng");
   						   	try{
      								Class.forName("com.mysql.jdbc.Driver");
      								Connection connection1 = 
      								 DriverManager.getConnection
      	   							 ("jdbc:mysql://localhost:3306/do_an" ,"root", "6796");
      				 				Statement st = connection1.createStatement() ;
     	             				 int i1=st.executeUpdate("insert into giangvien (MaGV,TenGV,ChuyenNganh)  values(' "+a+" ',' "+b+ " ',' "+c+" ')");
     	             				 out.print("Data insert OK");
      	              				  }
      	     					   catch(Exception e){
      	      						  out.print(e);
      	      					  e.printStackTrace();
      	        }
          }   
          %>
                          </div>
                      </div>
                  </form>
              </div>
          </div>
          
          

  
          
   

          <div class="panel panel-default">
                <!-- Default panel contents -->
              <div class="panel-heading"><span class="lead">Danh sách giảng viên </span></div>
              <div class="col-md-offset-0">
                  <table class="table">
                      <thead>
                          <tr>
                               <!--  <th>Số thứ tự</th>-->
                              <th>Mã giảng viên</th>
                              <th>Tên giảng viên</th>
                              <th>Chuyên ngành</th>     	
                          <c:forEach var="rows" items="${gv.rows}">
                          	<tr>
	                            
	                             <td> ${rows.MaGV }</td>
	                             <td> ${rows.TenGV }</td>
	                             <td> ${rows.ChuyenNganh }</td>
	                             <td>
	                             <button type="button"  class="btn btn-success custom-width">Edit</button>  <button type="button"  class="btn btn-success custom-width">Remove</button>
                              	</td>
	                       </tr>
                         </thead>
                       
                        </c:forEach>
                        
                  </table>
              </div>
          </div>
      </div>
       
    
</body>
</html>