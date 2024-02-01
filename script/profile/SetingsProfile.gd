extends Control


@onready var changeName = $MarginContainer/VBoxContainer/changeName/changeName
@onready var changePasword = $MarginContainer/VBoxContainer/changePasword/changePasword


func _on_save_name_pressed():
	Accaunt.firstName = changeName
	


func _on_save_pasword_pressed():
	Accaunt.password = changePasword
	print(Accaunt.password)
