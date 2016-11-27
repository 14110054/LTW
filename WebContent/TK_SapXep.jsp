<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<%@ page import="javacode.Teacher"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">


<%
	Class.forName("com.mysql.jdbc.Driver");
	Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/do_an", "root", "6796");
%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="js/jquery-3.1.0.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/angular.min.js"></script>
<title>Trang Trưởng Khoa/Trưởng Bộ Môn Sắp Xếp</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link rel="icon" href="img/logo.PNG" type="image/x-icon" />
<link rel="shortcut icon" href="img/logo.PNG" />
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
	<jsp:include page="HeaderTK.jsp"></jsp:include>
	
	
	<sql:setDataSource var="data" driver="com.mysql.jdbc.Driver"
     url="jdbc:mysql://localhost:3306/do_an"  user="root" password= "6796"/>
     
     
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="btn-group btn-group-justified" role="group"
					aria-label="abc">
					<div class="btn-group" role="group">
						<a href="TK_NhapTTGV.jsp">
							<button type="button" class="btn btn-default">Nhập/Xem
								thông tin</button>
						</a>
					</div>
					<div class="btn-group" role="group">
						<a href="TK_SapXep.jsp">
							<button type="button" class="btn btn-info">Sắp xếp hội
								đồng</button>
						</a>
					</div>
					<div class="btn-group" role="group">
						<a href="TK_TimKiem.jsp">
							<button type="button" class="btn btn-default">Tìm kiếm
								hội đồng</button>
						</a>
					</div>
				</div>
				<br>
			</div>
		</div>
		<sql:query dataSource="${data}" var="ChuyenNganh">
   					SELECT MaCN,TenCN from chuyennganh	</sql:query>
	
		 <SCRIPT type="text/javascript">
								$(document).ready(function() {
								$('#chonChuyenNganh').change(function(event) {
									var CN=$("select#chonChuyenNganh").val();
									  $.get('ChuyenNganh_GV', {
							                TenCN : CN
							        }, function(response){
							        	
							        	var select=${'#ct'};
							        	select.find('option').remove();
							        	$.each(response,function (key,value){
							        		$('<option>').val(key).text(value).appendTo(select);
							        		});
							        	});
							
								</script> 
		<div class="col-md-2 ">
			<select class="form-control" id="chonChuyenNganh" >
				<option value="-1">Chọn Chuyên Ngành</option>
												<c:forEach var="row" items="${ChuyenNganh.rows}">
													<option value="${row.TenCN }"><c:out
															value="${row.TenCN }"></c:out>
													</option>
												</c:forEach>
			</select>
		</div>
		<sql:query dataSource="${data}" var="ngay">
   					SELECT Ngay  from phong	</sql:query>
		<div class="col-md-2 ">
			<select class="form-control">
					<option value="-1">Chọn ngày</option>
												<c:forEach var="row" items="${ngay.rows}">
													<option value="${row.Ngay }"><c:out
															value="${row.Ngay}"></c:out>
													</option>
												</c:forEach>
			</select>
		</div>

		<%
		
			Statement st1 = connection.createStatement();
			ResultSet gv = st1.executeQuery("Select *  From  giangvien ");
			Statement st2 = connection.createStatement();
			ResultSet dt2 = st2.executeQuery("Select *  From  detai ");
		%>
	</div>
	</div>



	<%
		List<String> listTeacher_1 = new ArrayList<String>(), listTeacher_2 = new ArrayList<String>(),
				listTeacher_3 = new ArrayList<String>(), listTeacher_4 = new ArrayList<String>(),
				listTeacher_5 = new ArrayList<String>();

		while (gv.next()) {
			listTeacher_1.add(gv.getString("TenGV"));
			listTeacher_2.add(gv.getString("TenGV"));
			listTeacher_3.add(gv.getString("TenGV"));
			listTeacher_4.add(gv.getString("TenGV"));
			listTeacher_5.add(gv.getString("TenGV"));
		}
	%>
	<script type="text/javascript"
		src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
	<!-- <script type="text/javascript">
		var List1=new Array();
		var List2=new Array();
		var List3=new Array();
		var List4=new Array();
		var List5=new Array();
		int j=0; -->
		<!--  $(function () { 
			 /* $('#chonChuyenNganh').change(function(event) {
					var CN=$("select#chonChuyenNganh").val();
					var selectCT=$('#ChonCT');
			 }); 
 -->'
 
<%-- 		$("#ct").change(function () {
			// STEP 1: get teacher name corresponding to the selected position --> selectedName
				var value = $(this).find("option:selected").text();
	    		
	    		// STEP 2: remove selectedName from listGV2, listGV3, listGV4, listGV5
	    		//Step 2.1 : get data from server to client
	    	 <%int i = 0;
			int n1 = listTeacher_1.size();
			while (i < n1) {
				String elementString = (String) listTeacher_1.get(i);%>
             List1.push("<%=listTeacher_1.get(i)%>");
             <%i++;
			}%>
			<%i = 0;
			int n2 = listTeacher_2.size();
			while (i < n2) {
				String elementString = (String) listTeacher_2.get(i);%>
	             List2.push("<%=listTeacher_2.get(i)%>");
	             <%i++;
			}%>	
				<%i = 0;
			int n3 = listTeacher_3.size();
			while (i < n3) {
				String elementString = (String) listTeacher_3.get(i);%>
		             List3.push("<%=listTeacher_3.get(i)%>");
		             <%i++;
			}%>	
					<%i = 0;
			int n4 = listTeacher_4.size();
			while (i < n4) {
				String elementString = (String) listTeacher_4.get(i);%>
			             List4.push("<%=listTeacher_4.get(i)%>");
			             <%i++;
			}%>		
						<%i = 0;
			int n5 = listTeacher_5.size();
			while (i < n5) {
				String elementString = (String) listTeacher_5.get(i);%>
				             List5.push("<%=listTeacher_5.get(i)%>");
				             <%i++;
			}%>
			
			//remove value from other list
			
				List2.remove(value);
				List3.remove(value);
				List4.remove(value);
				List5.remove(value);	
				
		// STEP3: update  listGV2, listGV3,....
		
			/* 	 request.setAttribute("LGV2", List2);
				request.setAttribute("LGV3", List3);
				request.setAttribute("LGV4", List4);
				request.setAttribute("LGV5", List5); 		
				 */
				 
				 
				 var LGV2=document.getElementById("gv1");
				 for(var i=0;i<List2.length;i++){
					 var opt=LGV2[i];
					 var el=document.createElement("option");
					 el.textContent = opt;
					    el.value = opt;
					    select.appendChild(el);
				 }
						});
			function ChonGV1(value)
			{
				List3.remove(value);	
				List4.remove(value);	
				List5.remove(value);	
			}
			
			function ChonGV2(value)
			{
				List4.remove(value);
				List5.remove(value);	
			}
			
			function ChonGV3(value)
			{
				List5.remove(value);	
			}
				 });
	</script> --%>
	<%
		request.setAttribute("LGV1", listTeacher_1);
	request.setAttribute("LGV2", listTeacher_2);
	request.setAttribute("LGV3", listTeacher_3);
	request.setAttribute("LGV4", listTeacher_4);
	request.setAttribute("LGV5", listTeacher_5);
	
	%>


	<br>
	<div class="row">
		<div class=" col-md-10">
			<table class="table table-bordered">
				<thead>
					<tr>
						<th>Địa Điểm</th>
						<th class="cod-sm-1">Từ giờ</th>
						<th cod-sm-1>Đến giờ</th>
						<th>Chủ tịch</th>
						<th>Ủy viên 1</th>
						<th>Ủy viên 2</th>
						<th>Ủy viên 3</th>
						<th>Thư Kí</th>
						<th>Tên Đề Tài</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td rowspan="5">A111</td>
						<td><input type="text" name="startT"
							class=" form-control input-md" /></td>
						<td><input type="text" name="endT"
							class=" form-control input-" /></td>

						<td><select class="form-control" id="ct">
									<option value="-1">Chọn Giảng Viên</option>
						</select>
						</td>

						<td><select class="form-control" id="gv1"	onmousedown="this.value='';" onchange="chonGV1(this.value);">
								<c:forEach var="item1" items="${LGV2}">
									<option><c:out value="${item1}" /></option>
								</c:forEach>
								</option>
						</select></td>

						<td><select class="form-control" name="uyvien2" id="gv2"
							onmousedown="this.value='';" onchange="chonGV2(this.value);">
								<c:forEach var="item2" items="${LGV3}">
									<option><c:out value="${item2}" /></option>
								</c:forEach>
						</select></td>

						<td><select class="form-control" name="uyvien3" id="gv3"
							onmousedown="this.value='';" onchange="chonGV3(this.value);">
								<c:forEach var="item3" items="${LGV4}">
									<option><c:out value="${item3}" /></option>
								</c:forEach>
						</select></td>

						<td><select class="form-control" name="thuki" id="tk"
							onmousedown="this.value='';" onchange="chonTK(this.value);">
								<c:forEach var="item4" items="${LGV5}">
									<option><c:out value="${item4}" /></option>
								</c:forEach>
						</select></td>

						<td><select class="form-control">
								<%
									while (dt2.next()) {
								%>
								<option>
									<%=dt2.getString("TenDeTai")%>
								</option>
								<%
									}
								%>
						</select></td>
					<tr>
						<td><input type="text" name="startT"
							class=" form-control input-md" cod-md-1 /></td>
						<td><input type="text" name="endT"
							class=" form-control input-md" cod-md-1 /></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td>2.</td>
					</tr>
					<tr>
						<td><input type="text" name="startT"
							class=" form-control input-md " /></td>
						<td><input type="text" name="endT"
							class=" form-control input-md" /></td>

						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td>3.</td>
					</tr>
					<tr>
						<td><input type="text" name="startT"
							class=" form-control input-md" /></td>
						<td><input type="text" name="endT"
							class=" form-control input-md" /></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td>4.</td>
					</tr>
					<tr>
						<td><input type="text" name="startT"
							class=" form-control input-md" /></td>
						<td><input type="text" name="endT"
							class=" form-control input-" /></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td>5.</td>
					</tr>
				</tbody>
			</table>
			
		</div>
		<div class="col-md-2  col-md-offset- 8">
			<sql:query var="dt" sql="select TenDeTai,GVHD from detai" dataSource="${data}"/>
			<table class="table table-bordered">
				<thead>
					<tr>
						<th>Đề tài</th>
						<th>GVHD</th>
					</tr>
					     <c:forEach var="rows" items="${tthd.rows}">
					<tr>
						 <td>${rows.TenDeTai }</td>
					 <td>${rows.GVHD }</td>
					</tr> 
                         </thead>
                    </c:forEach>
				</thead>
			</table>
		</div>
	</div>

	<div class="row">
		<div class="col-md-7"></div>
		<div class="col-md-2 ">
			<button type="submit" class="btn btn-primary ">Save</button>

		</div>

	</div>
</body>
</html>