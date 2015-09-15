<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="<%=request.getContextPath()%>/resources/css/signin.css" rel="stylesheet" />
<jsp:include page="common/resources_boot.jsp" />
<jsp:include page="common/tags.jsp" />
<title>Login</title>
</head>
<body>
	<div class="container">
		<form class="form-signin" action="platform!login.action" method="post">
			<h2 class="form-signin-heading">Please sign in</h2>
			<label for="inputEmail" class="sr-only">Email address</label> <input type="email" id="inputEmail"
				name="user.userName" class="form-control" placeholder="Email address" required autofocus> <label
				for="inputPassword" class="sr-only">Password</label> <input type="password" id="inputPassword" name="user.password"
				class="form-control" placeholder="Password" required>
			<div class="checkbox">
				<label> <input type="checkbox" value="remember-me"> Remember me
				</label>
			</div>
			<s:if test="message!=null">
				${message }
			</s:if>
			<button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
		</form>
	</div>
</body>
</html>