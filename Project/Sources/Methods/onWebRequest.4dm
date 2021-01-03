//%attributes = {}

// check if connect
$vars:=WebGetVariables

Case of 
		
	: ($vars["email"]#Null:C1517)  // want to connect
		
		Use (Session:C1714.storage)
			Session:C1714.storage.data:=New shared object:C1526("email"; $vars["email"])
		End use 
		
		profilePage()
		
	: (Not:C34(Session:C1714.storage.data=Null:C1517))  // conside authenticated if there is some data
		
		profilePage()
		
	Else 
		
		loginPage()
		
End case 


