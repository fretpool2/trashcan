extends Control

@onready var log = $MarginContainer/VBoxContainer/Login/login
@onready var pas = $MarginContainer/VBoxContainer/Password/pasw
@onready var check_pole = $MarginContainer/VBoxContainer/check_pole
@onready var label = $MarginContainer/VBoxContainer/check_pole/Label
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
		label.text = "Не правленый логин или пароль"
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

func _on_back_pressed():
	get_tree().change_scene_to_file("res://scene/main/main.tscn")
