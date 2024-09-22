extends Control

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$UpgradeMultiplierButton.grab_focus()
	$UpgradeMultiplierButton/UpgradeMultiplierLabel.text = str("clicking:\n", Global.multiplier_cost)
	$UpgradeAutomationButton/UpgradeAutomationLabel.text = str("automation:\n", Global.automation_cost)
	
func _input(event: InputEvent) -> void:
	if Input.is_action_just_pressed("ui_cancel"):
		_on_back_button_pressed()

func _on_upgrade_multiplier_button_pressed() -> void:
	if Global.pumpkins >= Global.multiplier_cost && Global.multiplier / 2 < Global.multiplier_limit && Global.pumpkins <= Global.pumpkins_limit:
		Global.pumpkins -= Global.multiplier_cost
		Global.multiplier += 2
		Global.multiplier_cost += 100
		$UpgradeMultiplierButton/UpgradeMultiplierLabel.text = str("clicking:\n", Global.multiplier_cost)
		
func _on_upgrade_multiplier_button_focus_entered() -> void:
	$Cursor.position.x = 5
	$Cursor.position.y = 33

func _on_upgrade_automation_button_pressed() -> void:
	if Global.pumpkins >= Global.automation_cost && Global.automation / 5 < Global.automation_limit && Global.pumpkins <= Global.pumpkins_limit:
		Global.pumpkins -= Global.automation_cost
		Global.automation += 5
		Global.automation_cost += 500
		$UpgradeAutomationButton/UpgradeAutomationLabel.text = str("automation:\n", Global.automation_cost)

func _on_upgrade_automation_button_focus_entered() -> void:
	$Cursor.position.x = 5
	$Cursor.position.y = 81

func _on_back_button_pressed() -> void:
	get_tree().change_scene_to_file("res://World.tscn")
	Savefile.save()
	
func _on_back_button_focus_entered() -> void:
	$Cursor.position.x = 30
	$Cursor.position.y = $BackButton.position.y
