extends Control

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$Background/FullscreenButton.grab_focus()

func _input(event: InputEvent) -> void:
	if Input.is_action_just_pressed("ui_cancel"):
		get_tree().change_scene_to_file("res://World.tscn")

func _on_fullscreen_button_pressed() -> void:
	Global.fullscreen_active = !Global.fullscreen_active
	if Global.fullscreen_active:
		DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_FULLSCREEN)
	if !Global.fullscreen_active:
		DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_WINDOWED)

func _on_fullscreen_button_focus_entered() -> void:
	$Cursor.position.x = 22
	$Cursor.position.y = $Background/FullscreenButton.position.y + 5

func _on_stats_button_pressed() -> void:
	get_tree().change_scene_to_file("res://statistics.tscn")

func _on_stats_button_focus_entered() -> void:
	$Cursor.position.x = 30
	$Cursor.position.y = $Background/StatsButton.position.y

func _on_save_button_pressed() -> void:
	Savefile.save()
	_on_back_button_pressed()

func _on_save_button_focus_entered() -> void:
	$Cursor.position.y = $Background/SaveButton.position.y

func _on_back_button_pressed() -> void:
	get_tree().change_scene_to_file("res://World.tscn")

func _on_back_button_focus_entered() -> void:
	$Cursor.position.x = 30
	$Cursor.position.y = $Background/BackButton.position.y
