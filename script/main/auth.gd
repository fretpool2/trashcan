extends Control


@onready var animation_player = $AnimationPlayer
@onready var log = $MarginContainer/VBoxContainer2/HBoxContainer3/login
@onready var pas = $MarginContainer/VBoxContainer2/HBoxContainer/pasw
@onready var check_pole = $MarginContainer/VBoxContainer2/check_pole
@onready var label = $MarginContainer/VBoxContainer2/check_pole/check_pole
@onready var next = $next
@onready var next_2 = $next2
var falseAcc = false

func _ready():
	animation_player.play("start")

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
		animation_player.play("next")
		check_pole.hide()
		print("Logining")
		Accaunt.signin = true
		next_2.start()
		Accaunt.save_acc_data()
	else:
		falseAcc = true
		print("False")
	check()

func _on_no_acc_2_pressed():
	animation_player.play("next")
	next.start()

func _on_next_timeout():
	get_tree().change_scene_to_file("res://scene/main/registr.tscn")


func _on_next_2_timeout():
	get_tree().change_scene_to_file("res://scene/pages/MainMenu/main_menu.tscn")
