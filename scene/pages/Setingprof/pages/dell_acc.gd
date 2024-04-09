extends Control

@onready var yesno = $MarginContainer/VBoxContainer/Control2

func _on_exit_pressed():
	get_tree().change_scene_to_file("res://scene/pages/Setingprof/SetingsProfile.tscn")


func _on_button_pressed():
	yesno.visible = true


func _on_yes_pressed():
	Accaunt.login = "Admin"
	Accaunt.password = "12345678"
	Accaunt.firstName = "Иван"
	Accaunt.lastName = "Иванов"
	Accaunt.mail = "89000000000"
	Accaunt.signin = false
	Accaunt.save_acc_data()
	get_tree().change_scene_to_file("res://scene/main/main.tscn")


func _on_no_pressed():
	yesno.visible = false
