<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
<title>Fetcher</title>
</head>
<body>
	<b>Package OK!</b>
	<br /> You selected this files:
	<br />
	<s:iterator value="fileNames" status="st">
		<s:property />
		<br>
	</s:iterator>
	the output zip file:
	<b><s:property value="zipFile" /></b>
</body>
</html>