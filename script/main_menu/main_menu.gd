extends Control

@onready var names = $MarginContainer/VBoxContainer2/VBoxContainer3/HBoxContainer3/Name

func _ready():
	names.text = Accaunt.firstName + "!"
	pass
func _on_button_pressed():
	get_tree().change_scene_to_file("res://scene/main/main.tscn")

func _on_lut_ball_pressed():
	get_tree().change_scene_to_file("res://scene/balance/catalog.tscn")
