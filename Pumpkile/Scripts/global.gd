extends Node

#config
var fullscreen_active : bool = false

#game
var pumpkins_limit : int = 1000000000 #limits the amount of pumpkins the player can have

var pumpkins : int = 0

var multiplier : int = 2
var multiplier_cost : int = 100
var multiplier_limit : int = 1000 #limits the amount of multiplier upgrades

var automation : int = 2
var automation_cost : int = 500
var automation_limit : int = 1000 #limits the amount of automation upgrades
