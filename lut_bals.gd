extends Control


@onready var label = $Label
@onready var label_2 = $Label2

func _ready():
	label.text = Ifotrash.names
	label_2.text = Ifotrash.adres
