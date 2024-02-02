extends Control

func _ready():
	if OS.has_method("open_file") and OS.has_method("open_folder"):
		self.pressed.connect("_on_button_pressed")

func _on_button_pressed():
	OS.shell_show_in_file_manager("Folder", true)
	pass


