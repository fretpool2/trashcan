extends Control

func _ready():
	if OS.has_method("open_file") and OS.has_method("open_folder"):
		self.pressed.connect("_on_button_pressed")

func _on_button_pressed():
	OS.create_process("C:\\Program Files\\Notepad++\\notepad++.exe", [], true)
	pass


	
func _on_file_selected(path):
	var texture = ImageTexture.new()

	if texture.load(path) == OK:
		self.texture_normal = texture
		self.texture_pressed = texture
	else:
		print("Failed to load image: ", path)

func _on_dir_selected(path):
	print("Selected directory: ", path)

