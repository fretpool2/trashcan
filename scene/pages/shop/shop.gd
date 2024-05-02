extends Control

@onready var ball = $MarginContainer/VBoxContainer/Upper/TextureRect/HBoxContainer/Control/TextureRect/balls
@onready var animation_player = $AnimationPlayer

func _ready():
	animation_player.play("Start")
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	var val_balls = int(ball.text)  # Преобразуем текст в целое число	
	val_balls = Accaunt.balls  # Устанавливаем значения в переменную
	ball.text = str(val_balls)  # Преобразуем целое число обратно в строку и устанавливаем в текст метки
