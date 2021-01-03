//%attributes = {}

$html:="<!DOCTYPE html>\n<html lang=\"en\"><head><title>login</title>"
$html:=$html+"<link href=\"login.css\" rel=\"stylesheet\">"
$html:=$html+"</head>\n"
$html:=$html+"<body>\n"
$html:=$html+"<div class=\"login-box\"><h2>Login</h2>"

$html:=$html+"<form method=\"post\">\n"
$html:=$html+"<div class=\"user-box\">"
$html:=$html+"<input type=\"email\" id=\"email\" name=\"email\" required/>\n<label for=\"email\">Enter your email to connect:</label>"
$html:=$html+"</div>\n"
$html:=$html+"<div class=\"input-submit\"><input type=\"submit\" value=\"Connect\"/></div>\n"
$html:=$html+"<br><br><br></form>\n"
$html:=$html+"</div>\n"
$html:=$html+"</body>\n</html>"


WEB SEND TEXT:C677($html)