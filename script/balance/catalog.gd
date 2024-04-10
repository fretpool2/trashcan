extends Control


@onready var animation_player = $AnimationPlayer

func _ready():
	animation_player.play("start")

func _on_exit_pressed():
	get_tree().change_scene_to_file("res://scene/pages/MainMenu/main_menu.tscn")
