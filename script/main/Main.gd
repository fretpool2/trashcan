extends Control
@onready var control = $CanvasLayer/Control
@onready var load_screen = $CanvasLayer/load_screen
@onready var timers = $CanvasLayer/load_screen/Timer
@onready var animation_player = $CanvasLayer/AnimationPlayer
@onready var next_page = $CanvasLayer/Control/MarginContainer/VBoxContainer/Control/next_page
@onready var next_page_2 = $CanvasLayer/Control/MarginContainer/VBoxContainer/Control2/next_page_2

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
	next_page.start()
	animation_player.play("next")

func change_to_register():
	next_page_2.start()
	animation_player.play("next")

func _on_timer_timeout():
	animation_player.play("start")


func _on_next_page_timeout():
	get_tree().change_scene_to_file("res://scene/main/auth.tscn")


func _on_next_page_2_timeout():
	get_tree().change_scene_to_file("res://scene/main/registr.tscn")
