extends Control

var img_texture = ImageTexture.new()
@onready var names = $MarginContainer/VBoxContainer/VBoxContainer2/Name
@onready var adres = $MarginContainer/VBoxContainer/VBoxContainer2/Adres
@onready var next = $MarginContainer/VBoxContainer/next/next
@onready var texture = $MarginContainer/VBoxContainer/VBoxContainer/Control/TextureRect

func _ready():
	names.text = Ifotrash.names
	adres.text = Ifotrash.adres

func _process(delta):
	if texture.texture != null:
		next.disabled = false
		pass

func _on_button_pressed():
	$MarginContainer/VBoxContainer/VBoxContainer/FileDialog.popup()
	pass

func _on_file_dialog_file_selected(path):
	var img = Image.new()
	img.load(path)
	
	img_texture.set_image(img)
	texture.texture = img_texture
	

	
func _on_exit_pressed():
	get_tree().change_scene_to_file("res://scene/balance/catalog.tscn")
