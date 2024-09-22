extends Control

func _ready() -> void:
	$BackButton.grab_focus() #grabs the focus of the back button, so it can be pressed

func _on_back_button_pressed() -> void:
	get_tree().change_scene_to_file("res://main_menu.tscn")
