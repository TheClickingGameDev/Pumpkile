extends Control

func _ready() -> void:
	$BackButton.grab_focus()
	$StatsLabel.text = str("statistics \n\n clicking upgrades: ",Global.multiplier / 2,"/", Global.multiplier_limit,"\n\nautomation upgrades:\n", Global.automation / 5,"/", Global.automation_limit) 

func _on_back_button_pressed() -> void:
	get_tree().change_scene_to_file("res://World.tscn")
	
func _input(event: InputEvent) -> void:
	if Input.is_action_just_pressed("ui_cancel"):
		_on_back_button_pressed()
