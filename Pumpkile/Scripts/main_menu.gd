extends Control

func _ready() -> void:
	Savefile.load()
	
	if Global.fullscreen_active:
		DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_FULLSCREEN)
	if !Global.fullscreen_active:
		DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_WINDOWED)
	
	$StartButton.grab_focus()
	$Cursor.position.y = $StartButton.position.y

func _on_start_button_pressed() -> void:
	get_tree().change_scene_to_file("res://World.tscn")

func _on_start_button_focus_entered() -> void:
	$Cursor.position.y = $StartButton.position.y

func _on_controls_button_pressed() -> void:
	get_tree().change_scene_to_file("res://controls.tscn")

func _on_controls_button_focus_entered() -> void:
	$Cursor.position.y = $ControlsButton.position.y

func _on_credits_button_pressed() -> void:
	get_tree().change_scene_to_file("res://credits.tscn")

func _on_credits_button_focus_entered() -> void:
	$Cursor.position.y = $CreditsButton.position.y
