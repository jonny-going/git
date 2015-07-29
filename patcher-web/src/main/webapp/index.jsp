<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Fetcher</title>
</head>
<body>
	<h1>Scan the path to find the modified files</h1>
	<form action="hello" method="post">
		<label for="path">Please enter the project path</label><br /> <input
			type="text" name="path" /><input type="submit" value="Say Hello" />
	</form>
</body>
</html>