extends Control
@onready var color_rect_5 = $ColorRect5
@onready var color_rect_4 = $ColorRect4
@onready var color_rect_3 = $ColorRect3
@onready var color_rect_2 = $ColorRect2
@onready var color_rect = $ColorRect
@onready var label = $Label

func _ready():

	# Получим имя пользователя и первую букву
	var firstname = Accaunt.firstName
	var firstLetter = ""

	# Проверяем, что имя пользователя не пустое
	if firstname.length() > 0:
		firstLetter = firstname[0]

	# Установим значение цвета в ColorRect
	var color = Color(
		randf_range(0, 1),
		randf_range(0, 1),
		randf_range(0, 1)
		)
	color_rect.color = color
	color_rect_2.color = color
	color_rect_3.color = color
	color_rect_4.color = color
	color_rect_5.color = color

	# Обновим текст внутри ColorRect, чтобы отобразить первую букву и установленный цвет
	label.text = firstLetter

func _on_button_pressed():
	get_tree().change_scene_to_file("res://scene/pages/profile/profile.tscn")
