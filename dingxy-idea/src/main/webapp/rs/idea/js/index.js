$(function() {
	startTime();
	
	$("#login").click(function(){
		login();
	});
});

function startTime() {
	var today = new Date();
	var h = today.getHours();
	var m = today.getMinutes();
	var s = today.getSeconds();
	// add a zero in front of numbers<10
	m = checkTime(m);
	s = checkTime(s);
	// Check for PM and AM
	var day_or_night = (h > 11) ? "PM" : "AM";
	// Convert to 12 hours system
	if (h > 12)
		h -= 12;
	// Add time to the headline and update every 500 milliseconds
	$('#time').html(h + ":" + m + ":" + s + " " + day_or_night);
	setTimeout(function() {
		startTime()
	}, 500);
}

function checkTime(i) {
	if (i < 10) {
		i = "0" + i;
	}
	return i;
}

function login() {
	$.post('user/login', {userName: '丁小样', passwd: $("#passwd").val()}, function(data){
		alert(data);
	}).error(function(xhr){
		alert(xhr.responseText);
	});
}