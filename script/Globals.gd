extends Node

var ball_history = []
var check = 0
var pluse = 0
var add_bals = false
var add_bals_card = false
var count_bals = 0

func _process(_delta):
	if add_bals == true:
		add_bals_card = true
		ball_history.append(count_bals)
		check + 1
		pass
