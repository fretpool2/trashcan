extends Control

@onready var names = $MarginContainer/VBoxContainer2/ColorRect/Hello/HBoxContainer3/Name
@onready var animation_player = $AnimationPlayer
@onready var inf_balls = $MarginContainer/VBoxContainer2/VBoxContainer/Control/TextureRect/inf_balls
@onready var timer = $AnimationPlayer/Timer

func _ready():
	animation_player.play("start")
	names.text = Accaunt.firstName + "!"
	if Globals.add_bals == true:
		timer.start()
	
func _on_button_pressed():
	get_tree().change_scene_to_file("res://scene/main/main.tscn")

func _on_lut_ball_pressed():
	get_tree().change_scene_to_file("res://scene/balance/catalog.tscn")


func _on_pluse_pressed():
	get_tree().change_scene_to_file("res://scene/balance/catalog.tscn")


func _on_shop_pressed():
	pass # Replace with function body.


func _on_timer_timeout():
	animation_player.play("add_balls")
	Globals.add_bals = false
