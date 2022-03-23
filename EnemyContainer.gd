extends Node2D

onready var Bat = load("res://Bat.tscn")
onready var FastBat = load("res://FastBat.tscn")
func _physics_process(delta):
	if not has_node("Bat"):
		var bat = Bat.instance()
		add_child(bat)
		bat.name = 'Bat'
	if not has_node("FastBat"):
		var fastbat = FastBat.instance()
		add_child(fastbat)
		fastbat.name = 'FastBat'
