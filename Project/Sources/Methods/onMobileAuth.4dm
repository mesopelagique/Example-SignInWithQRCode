//%attributes = {}
$auth:=MobileAppServer.Auth.new($1)
$result:=New object:C1471("success"; False:C215)

Case of 
	: (Length:C16(String:C10($auth.email))=0)
		$result.statusText:="No email provided"
	: (Length:C16(String:C10($auth.userInfo.token))=0)
		$result.statusText:="No token provided"
	Else 
		Use (Storage:C1525.tokens)
			$expected:=Storage:C1525.tokens[$auth.email]
			If ($expected#Null:C1517)
				If ($auth.userInfo.token=$expected)
					// $token:=cs.Token.new($expected) // TODO here could do more like studying token data, check expiration date etc..
					$result.success:=True:C214
					$result.statusText:="Your are connected using QRCode"
				Else 
					$result.statusText:="Invalid token provided"
				End if 
				Storage:C1525.tokens[$auth.email]:=Null:C1517
				
			Else 
				$result.statusText:="Please re-create QR code on profile page"
			End if 
		End use 
End case 

$0:=$result