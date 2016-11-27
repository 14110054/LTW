<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<link rel="icon" href="img/logo.PNG" type="image/x-icon" />
<link rel="shortcut icon" href="img/logo.PNG" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<style>
body {
	padding-top: 30px;
}
</style>

<!-- JS ===================== -->
<!-- load angular -->
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.4/angular.js"></script>
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
	<jsp:include page="HeaderTK.jsp"></jsp:include>
	<nav class="navbar navbar col-md-offset-0">
	<div class="container">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target=".navbar-collapse">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
		</div>
		<a href="TK_SapXep.jsp" class="btn btn-success btn-lg"> <span
			class="glyphicon glyphicon-hand-left"></span> Trở về
		</a>
		<div class="btn-group btn-group-justified" role="group"
			aria-label="abc">
			<div class="btn-group" role="group">
				<a href="TK_NhapTTGV.jsp"><button type="button"
						class="btn btn-default ">Nhập thông tin giảng viên</button></a>
			</div>
			<div class="btn-group" role="group">
				<a href="TK_NhapTTDeTai"><button type="button"
						class="btn btn-info">Nhập thông tin đề tài</button></a>
			</div>
			<div class="btn-group" role="group">
				<a href="TK_NhapTTPhong.jsp"><button type="button"
						class="btn btn-default">Nhập thông tin phòng</button></a>
			</div>
		</div>
		<br> <br> <br>

		<html ng-app="myApp">
<head>
<title>TK_nhapthongtindetai</title>
<style>
body {
	font-family: "Time new roman";
	background-color: #E2E2DC
}
</style>
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

.IDSV.ng-valid {
	background-color: lightgreen;
}

.IDSV.ng-dirty.ng-invalid-required {
	background-color: red;
}

.IDSV.ng-dirty.ng-invalid-minlength {
	background-color: yellow;
}

.NameSV.ng-valid {
	background-color: lightgreen;
}

.NameSV.ng-dirty.ng-invalid-required {
	background-color: red;
}

.NameSV.ng-dirty.ng-invalid-minlength {
	background-color: yellow;
}
</style>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<link rel="stylesheet" href="app.css">
</head>
<body ng-app="validationApp">
	<div class="generic-container" ng-controller="mainController">
		<div class="panel panel-default">
			<div class="panel-heading">
				<span class="lead">nhập thông tin đề tài </span>
			</div>
			<br>
			<div class="formcontainer">
				<form ng-submit="submitForm()" name="myForm" class="form-horizontal "
					novalidate>
					<input type="hidden" />


					<div class="row">
						<div class="form-group col-md-12">
							<label class="col-md-4 control-lable">Mã Đề Tài</label>
							<div class="col-md-7">
								<input type="text" ng-model="madt" name="madt"
									class="form-control" placeholder="Nhập mã đề tài" required
									ng-minlength="3" />
							</div>
						</div>
					</div>

					<div class="row">
						<div class="form-group col-md-12">
							<label class="col-md-4 control-lable">Tên đề tài</label>
							<div class="col-md-7">
								<input type="text" ng-model="tendt" name="tendt"
									class="form-control" placeholder="Nhập tên đề tài" required
									ng-minlength="3" />
								<!--    <div class="has-error" ng-show="myForm.$dirty">
                                      <span ng-show="myForm.ID.$error.required">This is a required field</span>
                                      <span ng-show="myForm.ID.$error.minlength">Minimum length required is 3</span>
                                      <span ng-show="myForm.ID.$invalid">This field is invalid </span> -->
							</div>
						</div>
					</div>

					<div class="row">
						<div class="form-group col-md-12">
							<label class="col-md-4 control-lable">GVHD</label>
							<%
								Class.forName("com.mysql.jdbc.Driver");
								Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/do_an", "root", "6796");
								Statement statement1 = connection.createStatement();
								ResultSet ph = statement1.executeQuery("Select *  From  giangvien ");
							%>
							<div class="col-md-7 ">
								<select class="form-control" id="tengv2" name="tengv" onchange="LayCN();">
									<%
										while (ph.next()) {
									%>
									<option name="value">
										<%=ph.getString("TenGV")%>
									</option>
									<%
										}
									%>
								</select>

							</div>

						</div>
					</div>
					
					<div class="row">
						<div class="form-group col-md-12">
							<label class="col-md-4 control-lable">Chuyên ngành</label>
							<div class="col-md-7">	
								<%	
									Statement statement2 = connection.createStatement();
									 String tgv= request.getParameter("tengv"); 
									ResultSet cn = statement2.executeQuery("Select  *  From  chuyennganh ");
								//String chnganh=cn.getString(1);
								%>
								
									   <select class="form-control" name="chng">
										<%
											while (cn.next()) {
										%>
										<option> <%=cn.getString("TenCN")%></option>
										<%
											}
										%> 
								</select> 

								</div>
							</div>
						</div>
						
						
						<div class="row">
						<div class="form-group col-md-12">
							<label class="col-md-4 control-lable">MSSV</label>
							<div class="col-md-7">
									<input type="text" ng-model="mssv" name="mssv"
										class=" form-control" placeholder="Nhập MSSV" required
										ng-minlength="3" />		
								</div>
							</div>
						</div>
						
						
						<div class="row">
							<div class="form-group col-md-12">
								<label class="col-md-4 control-lable">Họ tên sinh viên</label>
								<div class="col-md-7">
									<input type="text" ng-model="tensv" name="tensv"
										class="form-control " placeholder="Nhập họ tên sinh viên"
										required ng-minlength="3" />
								</div>
							</div>
						</div>

						<div class="row">
							<div class="col-md-offset-10">
								<button type="submit" name="submit" class="btn btn-primary" ng-disabled="myForm.$invalid">Submit</button>
								<button type="reset" ng-click="reset()"class="btn btn-warning btn-sm" ng-disabled="myForm.$pristine">Reset Form</button>
								<script>
									src = "https://ajax.googleapis.com/ajax/libs/angularjs/1.5.8/angular.js"
									src = "js/angular.min.js"
									var validationApp = angular.module(
											'validationApp', []);
									validationApp
											.controller(
													'mainController',
													function($scope) {
														$scope.submitform = function() {
															if ($scope.myForm.$valid) {
																alert('May Report finished.');
															}
															$scope.reset = function() {
																$scope.madt = "";
																$scope.tendt = "";
																$scope.tengv = "";
																$scope.cn = "";
																$scope.mssv = "";
																$scope.tensv = "";
															}
															$scope.reset();
														};
													});
								</script>
								<%
									if (request.getParameter("submit") != null) {
										String a1 = request.getParameter("madt");
										String a = request.getParameter("tendt");
										String b = request.getParameter("tengv");
										String c = request.getParameter("chng");
										String d = request.getParameter("mssv");
										String e1 = request.getParameter("tensv");

										try {
											Statement st = connection.createStatement();
											int i1 = st.executeUpdate(
													"insert into detai (MaDeTai,TenDeTai,GVHD,ChuyenNganh,MSSV,TenSV)  values(' " + a1 + " ',' "
															+ a + " ',' " + b + " ',' " + c + " ',' " + d + " ',' " + e1 + " ' )");
											out.print("Data insert OK");
										} catch (Exception e) {
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
			<div class="panel-heading">
				<span class="lead">Danh sách giảng viên </span>
			</div>
			<div class="tablecontainer">
				<table class="table table-hover">
					<thead>
						<tr>
							<!--     <th>Số thứ tự</th> -->
							<th>Mã Đề Tài</th>
							<th>Tên đề tài</th>
							<th>GVHD</th>
							<th>Chuyên ngành</th>
							<th>MSSV</th>
							<th>Họ tên sinh viên</th>
							<%-- <th width="100"><c:forEach var="rows" items="${result.rows}"> --%>
							<% Statement statement3 = connection.createStatement();
								ResultSet dt = statement3.executeQuery("Select *  From  detai ");
									while(dt.next())
									{
									%>
									<tr>
										<!--      <td>${rows.idDT }</td> -->
										<td name="mdt1"><%=dt.getString("MaDeTai") %></td>
										<td name="tdt1"><%=dt.getString("TenDeTai") %></td>
										<td name ="gvhd1"><%=dt.getString("GVHD") %></td>
										<td name="cn1"><%=dt.getString("ChuyenNganh") %></td>
										<td name="mssv1"><%=dt.getString("MSSV") %></td>
										<td name="tsv1"><%=dt.getString("TenSV") %></td>
										<td>
											<button type="button" name ="edit" class="btn btn-success custom-width">Edit</button>
											<button type="submit" name ="submit" class="btn btn-success custom-width">Remove</button>
										</td>
									</tr>
									<%} %>
									<%if(request.getParameter("submit")!=null) 
									{
										try{
										String madt=request.getParameter("mdt1");
										Statement statement4 = connection.createStatement();
										statement4.executeUpdate("DELETE FROM detai WHERE MaDeTai=" + madt+"");
										}
										 catch(Exception e) 
										 {
												out.print(e);
											}
									}
									%>
					</thead>
								
					</tr>

					</thead>
				</table>
			</div>
		</div>
	</div>
</body>
		</html>