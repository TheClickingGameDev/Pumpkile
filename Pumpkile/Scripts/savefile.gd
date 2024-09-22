extends Node

var config = ConfigFile.new()

func save():
	#config
	config.set_value("Save", "fullscreen", Global.fullscreen_active)
	
	#gameplay
	config.set_value("Save", "pumpkins", Global.pumpkins)
	config.set_value("Save", "multiplier", Global.multiplier)
	config.set_value("Save", "multiplier_cost", Global.multiplier_cost)
	config.set_value("Save", "automation", Global.automation)
	config.set_value("Save", "automation_cost", Global.automation_cost)
	
	config.save("user://savefile.txt")

func load():
	config.load("user://savefile.txt")
	
	#config
	Global.fullscreen_active = config.get_value("Save", "fullscreen", Global.fullscreen_active)
	
	#gameplay
	Global.pumpkins = config.get_value("Save", "pumpkins", Global.pumpkins)
	Global.multiplier = config.get_value("Save", "multiplier", Global.multiplier)
	Global.multiplier_cost = config.get_value("Save", "multiplier_cost", Global.multiplier_cost)
	Global.automation = config.get_value("Save", "automation", Global.automation)
	Global.automation_cost = config.get_value("Save", "automation_cost", Global.automation_cost)
