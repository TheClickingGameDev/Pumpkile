extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$BackButton.grab_focus() #grabs the focus of the back button, so it can be pressed

func _input(event: InputEvent) -> void:
	if Input.is_action_just_pressed("ui_cancel"):
		_on_back_button_pressed()
	
func _on_back_button_pressed() -> void:
	get_tree().change_scene_to_file("res://main_menu.tscn")
