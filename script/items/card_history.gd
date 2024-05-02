extends Control

@onready var pluse_or_minus = $back/pluse_or_minus
@onready var label = $Label
var ind_check = 0

func _ready():
	ind_check = Globals.check
	print(ind_check)
	label.text = str(Globals.ball_history[ind_check])
