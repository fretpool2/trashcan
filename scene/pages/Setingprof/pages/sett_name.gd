extends Control

@onready var first_name = $MarginContainer/VBoxContainer/VBoxContainer/Name/FirstName
@onready var last_name = $MarginContainer/VBoxContainer/VBoxContainer/Familiya/lastName
@onready var nuls = $MarginContainer/VBoxContainer/VBoxContainer/HBoxContainer/nuls


func _on_button_pressed():
	if first_name.text == "" and last_name.text == "":
		nuls.text = "Ничего не изменилось!"
		nuls.visible = true
	elif first_name.text != "" and last_name.text != "":
		Accaunt.firstName = first_name.text
		Accaunt.lastName = last_name.text
		nuls.text = "Фамилия и Имя изменено!"
		nuls.visible = true
		Accaunt.save_acc_data()
		pass


func _on_exit_pressed():
	get_tree().change_scene_to_file("res://scene/pages/Setingprof/SetingsProfile.tscn")
