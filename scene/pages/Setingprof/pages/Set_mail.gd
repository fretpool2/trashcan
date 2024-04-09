extends Control

@onready var stariy = $MarginContainer/VBoxContainer/VBoxContainer/Stariy/Stariy
@onready var nuls = $MarginContainer/VBoxContainer/VBoxContainer/HBoxContainer/nuls

func isEmailValid(email: String) -> bool:
	var pattern = "^[A-Za-z0-9+_.-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}$"
	var regex = RegEx.new()
	regex.compile(pattern)
	return regex.search(email) != null

func _on_exit_pressed():
	get_tree().change_scene_to_file("res://scene/pages/Setingprof/SetingsProfile.tscn")


func _on_button_pressed():
	if stariy.text == "":
		nuls.visible = true
		nuls.text = "Все поля должны бать заполнены!"
	elif not isEmailValid(stariy.text) and stariy.text != "":
		nuls.visible = true
		nuls.text = "Введите правильный адрес электронной почты!"
	else:
		nuls.visible = true
		nuls.text = "Новая почта сохранена!"
		Accaunt.mail = stariy.text
		Accaunt.save_acc_data()
		
