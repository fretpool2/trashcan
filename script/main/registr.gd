extends Control

@onready var next = $next
@onready var next_2 = $next2
@onready var animation_player = $AnimationPlayer
@onready var label = $MarginContainer/VBoxContainer2/HBoxContainer/check_pole
@onready var login = $MarginContainer/VBoxContainer2/HBoxContainer5/Login
@onready var passw = $MarginContainer/VBoxContainer2/HBoxContainer7/pass
@onready var pasw_2 = $MarginContainer/VBoxContainer2/HBoxContainer8/pasw2
@onready var first_name = $MarginContainer/VBoxContainer2/HBoxContainer3/FirstName
@onready var last_name = $MarginContainer/VBoxContainer2/HBoxContainer4/LastName
@onready var gmail = $MarginContainer/VBoxContainer2/HBoxContainer6/mail
var reg = false

func _ready():
	animation_player.play("Start")

# Добавьте функцию проверки на электронный адрес
func isEmailValid(email: String) -> bool:
	var pattern = "^[A-Za-z0-9+_.-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}$"
	var regex = RegEx.new()
	regex.compile(pattern)
	return regex.search(email) != null

func _on_button_pressed():
	if login.text == "" or passw.text == "" or pasw_2.text == "" or first_name.text == "" or last_name.text == "" or gmail.text == "":
		label.show()
		label.text = "Все поля должны быть заполнены!"
	elif not isEmailValid(gmail.text): # Добавьте проверку на электронный адрес
		label.text = "Введите правильный адрес электронной почты"
		label.show()
	elif passw.text != pasw_2.text:
		label.text = "Пароль не совпадает"
		label.show()
	elif pasw_2.text != passw.text:
		label.text = "Пароль не совпадает"
		label.show()
	else:
		label.hide()
		reg = true
		
	if Accaunt.login == login.text:
		label.text = "Данный логин уже существует"
		
	if reg:
		Accaunt.login = login.text
		Accaunt.password = passw.text
		Accaunt.firstName = first_name.text
		Accaunt.lastName = last_name.text
		Accaunt.mail = gmail.text
		Accaunt.save_acc_data()
		next.start()
		animation_player.play("next")


func _on_an_acc_pressed():
	next_2.start()
	animation_player.play("next")


func _on_next_timeout():
	get_tree().change_scene_to_file("res://scene/main/main.tscn")


func _on_next_2_timeout():
	get_tree().change_scene_to_file("res://scene/main/auth.tscn")
