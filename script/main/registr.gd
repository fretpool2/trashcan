extends Control

@onready var login = $MarginContainer/VBoxContainer/Login/Login
@onready var passw = $MarginContainer/VBoxContainer/Pass/pass
#@onready var pasw_2 = $MarginContainer/VBoxContainer/Pass2/pasw2
@onready var first_name = $MarginContainer/VBoxContainer/Fnaim/FirstName
@onready var last_name = $MarginContainer/VBoxContainer/LName/LastName
@onready var gmail = $MarginContainer/VBoxContainer/mail/mail


var log
var pas1
#var pas2
var FName
var LName
var mail

#func _process(delta):
	#print(Accaunt.login)

func _on_button_pressed():
	Accaunt.login = login.text
	Accaunt.password = passw.text
	Accaunt.firstName = first_name.text
	Accaunt.LastName = last_name.text
	Accaunt.mail = gmail.text
	get_tree().change_scene_to_file("res://scene/main/main.tscn")
