extends Control

@onready var label = $TextureRect/Price
@onready var texture_rect = $TextureRect/TextureRect
@onready var texts = $TextureRect/Text

@export var Text : String
@export var Price : String
@export var logo : Texture

# Called when the node enters the scene tree for the first time.
func _ready():
	texts.text = Text
	label.text = Price
	texture_rect.texture = logo

func _on_button_pressed():
	if int(Price) > Accaunt.balls:
		return
	else:
		Accaunt.balls -= int(Price)
		Accaunt.save_acc_data()
