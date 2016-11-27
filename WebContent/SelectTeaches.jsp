<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8"%>
<%@ page import="javacode.Teacher"%>
<%@ page import=" java.sql.Connection"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"     
"http://www.w3.org/TR/html4/loose.dtd">
<html>
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

<script>
     var listGV1, listGV2, listGV3, listGV4, listGv5;
</script>

</head>
<body>
	<%!
			List<String> listTeacher_1 = new ArrayList<String>(), 
			listTeacher_2 = new ArrayList<String>(),
			listTeacher_3 = new ArrayList<String>(), 
			listTeacher_4 = new ArrayList<String>(),
			listTeacher_5 = new ArrayList<String>();
	%>

	<%!
	void getteacherListFromDB() 
			throws ClassNotFoundException, SQLException {

		// get teacher of particular department into listTeachers

		Class.forName("com.mysql.jdbc.Driver");
		Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/do_an", "root", "6796");

		try {
			Statement statement = connection.createStatement();
			ResultSet results = statement.executeQuery("Select *  From  chuyennganh ");
			while (results.next()) {
				//result.getString("TenCN");
				// Add teacher names into the lists
				listTeacher_1.add(results.getString("TenGV"));
				listTeacher_2.add(results.getString("TenGV"));
				listTeacher_3.add(results.getString("TenGV"));
				listTeacher_4.add(results.getString("TenGV"));
				listTeacher_5.add(results.getString("TenGV"));
				
				//reque

			}
		} catch (Exception e) {
			//out.print(e);
		}
		return;
	}%>
	<%!void addADropDownList() {

	}%>
</body>
</html>