<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<jsp:include page="common/resources.jsp" />
<script language="javascript" type="text/javascript">
	$(document).ready(function() {
		$('#bttn1').click(function() {
			//$('#dialogTest').dialog('open');  
			createLoginDialog();
		});
	});
	function createLoginDialog() {
		var obj = $("<div></div>").attr("title", "create one dialog!").attr("id", "dialogTest");
		var username = $("<lable></lable>").text("Username:");
		objobj = obj.append(username);
		var userinput = $("<input type='text' name='username'>");
		objobj = obj.append(userinput);
		var br = $("<br>");
		obj.append(br);
		var password = $("<lable></lable>").text("Password:");
		objobj = obj.append(password);
		var passinput = $("<input type='password' name='password'>");
		objobj = obj.append(passinput);
		obj.addClass('flora').dialog(
				{
					width : 400,
					height : 240,
					resizable : 'disable',
					buttons : {
						'OK' : function() {
							var tmpDialog = $("<div/>")
							tmpDialog.html("your username is :" + $(this).find("[name='username']").val()).html(
									tmpDialog.html() + "<br> your password is : "
											+ $(this).find("[name='password']").val()).addClass('flora').dialog({
								title : 'your input value',
								resizable : 'disable'
							});
						},
						'Cancel' : function() {
							$(this).dialog('close');
						}
					},
					title : 'My Dialog',
				});
	}
</script>
<title>Login</title>
</head>
<body>
	<button id="bttn1" value="Open the Dialog">Open the Dialog</button>
</body>
</html>