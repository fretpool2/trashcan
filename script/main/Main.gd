extends Control

func _on_loginin_pressed():
	get_tree().change_scene_to_file("res://scene/main/auth.tscn")



func _on_reg_pressed():
	get_tree().change_scene_to_file("res://scene/main/registr.tscn")
