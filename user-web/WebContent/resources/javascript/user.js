function changeLanguage(elm){
	window.location.href = "platform.action?request_locale="+$(elm).val();
}