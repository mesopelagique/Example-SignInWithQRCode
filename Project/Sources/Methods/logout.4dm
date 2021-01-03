//%attributes = {"publishedWeb":true}

Use (Session:C1714.storage)
	Session:C1714.storage.data:=Null:C1517
	OB REMOVE:C1226(Session:C1714.storage; "data")
End use 
WEB SEND TEXT:C677("ok")