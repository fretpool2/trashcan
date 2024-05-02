extends Control

func _ready():
	send_code_to_server()

func send_code_to_server():
	# Отправляем запрос на сервер для получения кода аутентификации
	var request = HTTPRequest.new()
	request.connect.self("request_completed", "_on_request_completed")
	request.request("http://95.165.130.169:4000/send-code", [], HTTPClient.METHOD_POST)

func _on_request_completed(result, response_code, headers, body):
	if response_code == 200:
		var authentication_code = parse_authentication_code_from_response(body)
		# Здесь можно вызвать функцию для отображения кода аутентификации пользователю
	else:
		print("Failed to fetch authentication code")

func parse_authentication_code_from_response(response_body):
	# Пример: предполагаем, что сервер отправляет JSON-объект
	var json_data = JSON.parse_string(response_body)
	return json_data["authentication_code"]
