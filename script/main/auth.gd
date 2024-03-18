extends Control

@onready var log = $MarginContainer/VBoxContainer2/HBoxContainer3/login
@onready var pas = $MarginContainer/VBoxContainer2/HBoxContainer/pasw
@onready var check_pole = $MarginContainer/VBoxContainer2/check_pole
@onready var label = $MarginContainer/VBoxContainer2/check_pole/check_pole
var falseAcc = false

func check():
	if log.text == "" or pas.text == "":
		label.text = "Все поля должны быть заполнены!"
		check_pole.show()
		print("Error Login")
	else:
		check_pole.hide()
		
	if falseAcc == true and pas.text != "" and log.text != "":
		check_pole.show()
		label.text = "Неправильный логин или пароль"
		pass

func _on_button_pressed():
	if log.text == Accaunt.login and pas.text == Accaunt.password:
		check_pole.hide()
		print("Logining")
		Accaunt.signin = true
		get_tree().change_scene_to_file("res://scene/pages/MainMenu/main_menu.tscn")
		Accaunt.save_acc_data()
	else:
		falseAcc = true
		print("False")
	check()


func _on_no_acc_2_pressed():
	get_tree().change_scene_to_file("res://scene/main/registr.tscn")
