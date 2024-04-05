extends Control
@onready var animation_player = $AnimationPlayer


func _ready():
	animation_player.play("start")
	pass

func _on_button_pressed():
	get_tree().change_scene_to_file("res://scene/pages/profile/profile.tscn")
