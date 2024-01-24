extends Control
var scenePath = "res://scene/pages/MainMenu/main_menu.tscn"
var sceneLoadResult = load(scenePath)
func _process(_delta):
	if Accaunt.signin:
		get_tree().change_scene_to_file("res://scene/pages/MainMenu/main_menu.tscn")
		

func _on_loginin_pressed():
	get_tree().change_scene_to_file("res://scene/main/auth.tscn")



func _on_reg_pressed():
	get_tree().change_scene_to_file("res://scene/main/registr.tscn")
