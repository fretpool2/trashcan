extends Control

@onready var nameFL = $MarginContainer/VBoxContainer/name/Name
@onready var mail = $MarginContainer/VBoxContainer/mail/Mail
@onready var animation_player = $AnimationPlayer
@onready var ball = $MarginContainer/VBoxContainer2/Control2/ball



func _ready():
	animation_player.play("start")
	nameFL.text = Accaunt.firstName + " " + Accaunt.lastName
	mail.text = Accaunt.mail
	var val_balls = int(ball.text)  # Преобразуем текст в целое число	
	Accaunt.balls = val_balls  # Устанавливаем значения в переменную
	ball.text = str(val_balls)  # Преобразуем целое число обратно в строку и устанавливаем в текст метки




func _on_seting_pressed():
	get_tree().change_scene_to_file("res://scene/pages/Setingprof/SetingsProfile.tscn")


func _on_histry_ball_pressed():
	get_tree().change_scene_to_file("res://scene/balance/balance.tscn")


func _on_my_check_pressed():
	get_tree().change_scene_to_file("res://scene/balance/My_check.tscn")
