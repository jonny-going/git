<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
<title>Fetcher</title>
</head>
<body>
	<b>modified files:</b>
	<br />
	<form action="fetch" method="post">
		<s:iterator value="fileList" status="st">
			<input type="checkbox" name="fileNames" value="<s:property/>" />
			<s:property />
			<br>
		</s:iterator>
		<input type="submit" value="Submit" />
	</form>
</body>
</html>