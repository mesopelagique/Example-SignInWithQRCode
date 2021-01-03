
function loadDoc(url, cFunction) {
	var xhttp;
	xhttp=new XMLHttpRequest();
	xhttp.onreadystatechange = function() {
		if (this.readyState == 4 && this.status == 200) {
		cFunction(this);
		}
	};
	xhttp.open("GET", url, true);
	xhttp.send();
}

function showQRCodeCallback(response) {
	var text = response.responseText;
	document.getElementById("qrcode").innerHTML = "";
	if (text) {
		var qrcode = new QRCode(document.getElementById("qrcode"), {
			text: text,
			width: 128,
			height: 128,
			colorDark : "#03e9f4",
			colorLight : "#ffffff",
			correctLevel : QRCode.CorrectLevel.H
		});
	} else {
		document.getElementById("qrcode").innerHTML = "Failed to generate qr code";
	}
}

function showQRCode() {
	loadDoc("4DAction/qrcodeData", showQRCodeCallback);
}

function logoutCallback(response) {
	window.location.href = "/";
}

function logout() {
	loadDoc("4DAction/logout", logoutCallback);
}
