extends Node
var score = 0
var health = 10
var tscore = 0
var thealth = 10
onready var Game = load("res://Game.tscn")

func _unhandled_input(event):
	if event.is_action_pressed("quit"):
		get_tree().quit()
		
func update_score(s):
	score += s
	var HUD = get_node_or_null("/root/Game/UI/HUD")
	if HUD != null:
		HUD.update_score()

func update_health(h):
	health -= h
	var HUD = get_node_or_null("/root/Game/UI/HUD")
	if HUD != null:
		HUD.update_health()
		

func save_game():
	tscore = score
	thealth = health

func load_game():
	var _scene = get_tree().change_scene_to(Game)
