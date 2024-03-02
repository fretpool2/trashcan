extends Control

@onready var changeName = $MarginContainer/VBoxContainer/changeName/changeName
@onready var changePassword = $MarginContainer/VBoxContainer/changePasword/changePasword
@onready var lastName = $MarginContainer/VBoxContainer/lastName/lastName

func _on_save_pasword_pressed():
	Accaunt.password = changePassword.text
	Accaunt.firstName = changeName.text
	Accaunt.lastName = lastName.text
	
func _on_exit_pressed():
	get_tree().change_scene_to_file("res://scene/pages/MainMenu/main_menu.tscn")
