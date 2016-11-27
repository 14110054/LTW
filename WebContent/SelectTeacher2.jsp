<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
 
<html>
<head>
<title>DELETE Operation</title>
<script>

    var listGV1, listGV2, listTV3, listGV4, listGV5;
    $("#sel1").onchange(function(){
    	// STEP 1: get teacher name corresponding to the selected position --> selectedName
    	
    	
    	// STEP 2: remove selectedName from listGV2, listGV3, listGV4, listGV5
    	
    	
    	// STEP3: update select 2, select 3, ...  based on the listGV2, listGV3,....
    	
    	
    })
    
    $("#sel2").onchange(function(){
    	// STEP 1: get teacher name corresponding to the selected position --> selectedName
    	
    	
    	// STEP 2: remove selectedName from listGV2, listGV3, listGV4, listGV5
    	
    	
    	// STEP3: update select 2, select 3, ...  based on the listGV2, listGV3,....
    	
    	
    })
    

</script>
</head>
<body>
 
<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
     url="jdbc:mysql://localhost:3306/do_an" ,"root", "6796""/>
 
<c:set var="empId" value="102"/>
 
<%-- <sql:update dataSource="${snapshot}" var="count">
  UPDATE Employees SET last = 'Ali'
  <sql:param value="${empId}" />
</sql:update>
  --%>
<sql:query dataSource="${snapshot}" var="result">
   SELECT * from giangvien;
</sql:query>
 
 <select id="sel1">
    <c:forEach var="item" items="${result.rows}">
     <option>${row.TenGv}</option>
    </c:forEach>
</select>

<select id="sel2">
    <c:forEach var="item" items="${result.rows}">
     <option>${row.TenGv}</option>
    </c:forEach>
</select>

<select id="sel3">
    <c:forEach var="item" items="${result.rows}">
     <option>${row.TenGv}</option>
    </c:forEach>
</select>

<select id="sel4">
    <c:forEach var="item" items="${result.rows}">
     <option>${row.TenGv}</option>
    </c:forEach>
</select>

<select id="sel5">
    <c:forEach var="item" items="${result.rows}">
     <option>${row.TenGv}</option>
    </c:forEach>
</select>

<script>

<c:forEach var="item" items="${result.rows}">
listGV1.add("${row.TenGv}");
listGV2.add("${row.TenGv}");
listGV3.add("${row.TenGv}");
listGV4.add("${row.TenGv}");
listGV5.add("${row.TenGv}");
</c:forEach>

</script>
 
<table border="1" width="100%">
<tr>
   <th>Emp ID</th>
   <th>First Name</th>
   <th>Last Name</th>
   <th>Age</th>
</tr>
<c:forEach var="row" items="${result.rows}">
<tr>
   <td><c:out value="${row.id}"/></td>
   <td><c:out value="${row.first}"/></td>
   <td><c:out value="${row.last}"/></td>
   <td><c:out value="${row.age}"/></td>
</tr>
</c:forEach>
</table>
 
</body>
</html>