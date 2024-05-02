extends Control

func _on_button_pressed():
	get_tree().change_scene_to_file("res://scene/pages/MainMenu/main_menu.tscn")

func _on_lut_ball_pressed():
	get_tree().change_scene_to_file("res://scene/balance/catalog.tscn")


func _on_pluse_pressed():
	get_tree().change_scene_to_file("res://scene/balance/catalog.tscn")


func _on_shop_pressed():
	get_tree().change_scene_to_file("res://scene/pages/shop/shop.tscn")


func _on_buck_pressed():
	get_tree().change_scene_to_file("res://scene/Itoms/card_history.tscn")
