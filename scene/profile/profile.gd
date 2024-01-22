extends Control




func _ready():
	$Pochta.text = Accaunt.mail
	$Password.text = Accaunt.password
	$Name.text = Accaunt.firstName + " " + Accaunt.LastName
