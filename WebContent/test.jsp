<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Insert title here</title>
</head>
<body>


	<select id="selectNumber" onchange="layselect()">
		<option value =""></option>
	</select>
	
	<script>
var select = document.getElementById("selectNumber");
var options= new Array("1", "2", "3", "4", "5");
for(var i = 0; i < options.length; i++) {
    var opt = options[i];
    var el = document.createElement("option");
    el.textContent = opt;
    el.value = opt;
    select.appendChild(el);
    
    
    function layselect()
    {
    	var value = $(this).find("option:selected").text();
		var chutich = $(this).val();
        alert(value);
    }
}
</script>
</body>
</html>