extends Control

@export var Main : String
@export var adress : String

@onready var main_name = $Main_name
@onready var main_adres = $adres


func _ready():
	main_name.text = Main
	main_adres.text = adress


func _on_button_pressed():
	Ifotrash.names = Main
	Ifotrash.adres = adress
	get_tree().change_scene_to_file("res://scene/lut_bals.tscn")
	pass # Replace with function body.
