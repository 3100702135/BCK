$(function() {
	debugger;
	var root = getRootPath_web();
	var showUserName = $('#showUserName').text().replace(/^(\s|\u00A0)+/, '')
			.replace(/(\s|\u00A0)+$/, '');
	if (showUserName != null && showUserName != "") {
		document.getElementById("registerOrLogin").style.display = "none";
	}

});

function userRecord() {
	debugger;
	var contactName = $("*[name='contact-name']").val();
	var contactMail = $("*[name='contact-email']").val();
	var contactSubject = $("*[name='contact-subject']").val();
	var contactMessage = $("*[name='contact-message']").val();
	$.ajax({
		url : getRootPath_web() + "/system/sendMail",
		type : "post",
		dataType : "json",
		cache : false,
		async : false,
		data : {
			contactName : contactName,
			contactMail : contactMail,
			contactSubject : contactSubject,
			contactMessage : contactMessage
		},
		success : function(response) {
			debugger;
			var result = response.result;
			if (result == "success") {
				alert("感谢您的留言，我们会尽快回复!");
			} else {
				alert("留言失败!");
			}
		}
	});
}


function userMessage() {
	debugger;
	var contactName = $("*[name='contact-name']").val();
	var contactMail = $("*[name='contact-email']").val();
	var contactSubject = $("*[name='contact-subject']").val();
	var contactMessage = $("*[name='contact-message']").val();
	$.ajax({
		url : getRootPath_web() + "/system/sendMail",
		type : "post",
		dataType : "json",
		cache : false,
		async : false,
		data : {
			contactName : contactName,
			contactMail : contactMail,
			contactSubject : contactSubject,
			contactMessage : contactMessage
		},
		success : function(response) {
			debugger;
			var result = response.result;
			if (result == "success") {
				alert("感谢您的留言，我们会尽快回复!");
			} else {
				alert("留言失败!");
			}
		}
	});
}
