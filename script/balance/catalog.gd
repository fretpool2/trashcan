extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

@onready var popup_menu = PopupMenu.new()

func _on_popup_menu_index_pressed(index):
	pass # Replace with function body.

func _on_popup_menu_id_pressed(id):
	popup_menu.add_item("Элемент 1")
	popup_menu.add_item("Элемент 2")
	popup_menu.add_item("Элемент 3")
	popup_menu.rect_global_position = get_global_mouse_position()
	add_child(popup_menu)

func _on_menu_item_selected(id):
	match id:
		0:
			print("Выбран первый элемент")
		1:
			print("Выбран второй элемент")
		2:
			print("Выбран третий элемент")



