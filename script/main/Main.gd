extends Control
@onready var control = $CanvasLayer/Control
@onready var load_screen = $CanvasLayer/load_screen
@onready var timers = $CanvasLayer/load_screen/Timer
@onready var animation_player = $CanvasLayer/AnimationPlayer

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


func _on_timer_timeout():
	animation_player.play("start")
