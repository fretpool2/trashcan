extends Control

@onready var label = $MarginContainer/VBoxContainer/Label/Label
@onready var login = $MarginContainer/VBoxContainer/Login/Login
@onready var passw = $MarginContainer/VBoxContainer/Pass/pass
@onready var pasw_2 = $MarginContainer/VBoxContainer/Pass2/pasw2
@onready var first_name = $MarginContainer/VBoxContainer/Fnaim/FirstName
@onready var last_name = $MarginContainer/VBoxContainer/LName/LastName
@onready var gmail = $MarginContainer/VBoxContainer/mail/mail
var reg = false

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
	elif passw.length() < 4:
		label.text = "Пароль должен состоять не менее 4 символов"
		label.show()
		pass
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
		get_tree().change_scene_to_file("res://scene/main/main.tscn")
