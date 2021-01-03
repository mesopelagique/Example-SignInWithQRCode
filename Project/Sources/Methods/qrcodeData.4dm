//%attributes = {"publishedWeb":true}


initTokens

$email:=String:C10(Session:C1714.storage.data.email)

If (Length:C16(String:C10($email))>0)
	
	$token:=cs:C1710.Token.new().encode()
	
	Use (Storage:C1525.tokens)
		Storage:C1525.tokens[$email]:=$token
	End use 
	
	$qrcodeData:=New object:C1471("email"; $email; "token"; $token)
	
	WEB SEND TEXT:C677(JSON Stringify:C1217($qrcodeData))
	
Else 
	
	// TODO send error, with http status code
	WEB SEND TEXT:C677("")
End if 