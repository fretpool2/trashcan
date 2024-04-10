extends Control

@export var anim : AnimationPlayer

func _on_button_pressed():
	get_tree().change_scene_to_file("res://scene/pages/profile/profile.tscn")
	#anim.play("start")
