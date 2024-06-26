extends Node

var login = "Admin"
var password = "12345678"
var firstName = "Иван"
var lastName = "Иванов"
var mail = "example@example.ru"
var signin = false
var save_settings = "user://Accaunt.db"
var balls = 0

func save_acc_data():
	var config = ConfigFile.new()
	config.set_value("login", "login", login)
	config.set_value("password", "password", password)
	config.set_value("firstName", "firstName", firstName)
	config.set_value("lastName", "lastName", lastName)
	config.set_value("mail", "mail", mail)
	config.set_value("signin", "signin", signin)
	config.set_value("balls", "balls", balls)
	config.save(save_settings)
	print("saving...")

func load_acc_data():
	var config = ConfigFile.new()
	if config.load(save_settings) == OK:
		login = config.get_value("login", "login")
		password = config.get_value("password", "password")
		firstName = config.get_value("firstName", "firstName")
		lastName = config.get_value("lastName", "lastName")
		mail = config.get_value("mail", "mail")
		signin = config.get_value("signin", "signin")
		balls = config.get_value("balls", "balls")
	else:
		login = "Admin"
		password = "12345678"
		firstName = "Иван"
		lastName = "Иванов"
		mail = "example@example.ru"
		signin = false
		balls = 0

func _ready():
	load_acc_data()
