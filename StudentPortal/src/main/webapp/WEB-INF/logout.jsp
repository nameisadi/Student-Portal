<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>LogOut</title>
<script>
	seTimeout('auto_reload()', 1000);
	function preventBack() {
		window.history.forward();
	}
	function auto_reload(){
		window.location='Login';
	}
</script>
</head>
<body onload="preventBack()">
please wait....
	
</body>
</html>

