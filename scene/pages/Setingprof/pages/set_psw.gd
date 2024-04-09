extends Control

@onready var nuls = $MarginContainer/VBoxContainer/VBoxContainer/HBoxContainer/nuls
@onready var stariy = $MarginContainer/VBoxContainer/VBoxContainer/Stariy/Stariy
@onready var new_1 = $MarginContainer/VBoxContainer/VBoxContainer/New1/New1
@onready var new_2 = $MarginContainer/VBoxContainer/VBoxContainer/New2/New2



func _on_button_pressed():
	if stariy.text != Accaunt.password and new_1.text == "" or new_2.text == "":
		nuls.visible = true
		nuls.text = "Пароль не совпадает со старым! \nВсе поля должны бать заполнены!"
	elif stariy.text == Accaunt.password and new_1.text == "" or new_2.text == "":
		nuls.visible = true
		nuls.text = "Все поля должны бать заполнены!"
	elif stariy.text == Accaunt.password and new_1.text != "" and new_2.text != "":
		if new_1.text != new_2.text:
			nuls.visible = true
			nuls.text = "Новый пароль не совпадает!"
		elif new_2.text != new_1.text:
			nuls.visible = true
			nuls.text = "Новый пароль не совпадает!"
		else:
			nuls.visible = true
			nuls.text = "Новый пароль сохранен!"
			Accaunt.password = new_1.text
			Accaunt.save_acc_data()

func _on_exit_pressed():
	get_tree().change_scene_to_file("res://scene/pages/Setingprof/SetingsProfile.tscn")
