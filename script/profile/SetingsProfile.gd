extends Control
@onready var animation_player = $AnimationPlayer


func _ready():
	animation_player.play("start")
	pass

func _on_button_pressed():
	get_tree().change_scene_to_file("res://scene/pages/profile/profile.tscn")


func _on_fio_pressed():
	get_tree().change_scene_to_file("res://scene/pages/Setingprof/pages/sett_name.tscn")


func _on_mail_pressed():
	get_tree().change_scene_to_file("res://scene/pages/Setingprof/pages/set_mail.tscn")


func _on_del_acc_pressed():
	get_tree().change_scene_to_file("res://scene/pages/Setingprof/pages/dell_acc.tscn")


func _on_pasword_pressed():
	get_tree().change_scene_to_file("res://scene/pages/Setingprof/pages/set_psw.tscn")
