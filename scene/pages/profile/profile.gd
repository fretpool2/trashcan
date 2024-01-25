extends Control

@onready var nameFL = $MarginContainer/VBoxContainer/name/Name
@onready var mail = $MarginContainer/VBoxContainer/mail/Mail

func _ready():
	nameFL.text = Accaunt.firstName + " " + Accaunt.lastName
	mail.text = Accaunt.mail

