extends Control

@onready var names = $MarginContainer/VBoxContainer2/ColorRect/Hello/HBoxContainer3/Name
@onready var animation_player = $AnimationPlayer

func _ready():
	animation_player.play("start")
	names.text = Accaunt.firstName + "!"
	pass
func _on_button_pressed():
	get_tree().change_scene_to_file("res://scene/main/main.tscn")

func _on_lut_ball_pressed():
	get_tree().change_scene_to_file("res://scene/balance/catalog.tscn")
