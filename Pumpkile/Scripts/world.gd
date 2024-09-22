extends Control

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$MainButton.grab_focus()
	$Cursor.position.x = 30
	$Cursor.position.y = 72
	$ClicksLabel.text = str("pumpkins: ", Global.pumpkins)
	
	if Global.automation > 2 && Global.pumpkins < Global.pumpkins_limit:
		$Timer.start()
	
func _input(event: InputEvent) -> void:
	if Input.is_action_just_pressed("ui_cancel"):
		get_tree().change_scene_to_file("res://options.tscn")
	
func _on_main_button_pressed() -> void:
	if Global.pumpkins < Global.pumpkins_limit:
		Global.pumpkins += Global.multiplier
		print(Global.multiplier)
		$ClicksLabel.text = str("pumpkins: ", Global.pumpkins)

func _on_shop_button_pressed() -> void:
	get_tree().change_scene_to_file("res://shop.tscn")

func _on_shop_button_focus_entered() -> void:
	$Cursor.position.y = $ShopButton.position.y
	
func _on_main_button_focus_entered() -> void:
	$Cursor.position.y = 72

func _on_timer_timeout() -> void:
	if Global.pumpkins < Global.pumpkins_limit:
		Global.pumpkins += Global.automation
	else:
		Global.pumpkins = Global.pumpkins_limit
		$Timer.stop()
		
	$ClicksLabel.text = str("pumpkins: ", Global.pumpkins)
