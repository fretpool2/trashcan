extends Control

func _ready():
	if Accaunt.signin:
		call_deferred("change_to_main_menu")

func _on_loginin_pressed():
	call_deferred("change_to_auth")

func _on_reg_pressed():
	call_deferred("change_to_register")

func change_to_main_menu():
	get_tree().change_scene_to_file("res://scene/pages/MainMenu/main_menu.tscn")

func change_to_auth():
	get_tree().change_scene_to_file("res://scene/main/auth.tscn")

func change_to_register():
	get_tree().change_scene_to_file("res://scene/main/registr.tscn")
