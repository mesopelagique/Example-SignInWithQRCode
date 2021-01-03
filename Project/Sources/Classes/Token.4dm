

Class constructor
	If (Count parameters:C259=1)
		This:C1470.decode($1)
	Else 
		This:C1470.time:=Current time:C178
		This:C1470.uuid:=Generate UUID:C1066
	End if 
	
Function decode
	// could decryp $1 and fills different parametes such as expiration time etc..
	This:C1470.uuid:=$1
	
Function encode
	// could crypt and encode date
	$0:=This:C1470.uuid
	
Function isValid
	// coudd check expiration time here
	$0:=This:C1470.uuid#Null:C1517