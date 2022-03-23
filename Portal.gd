extends Area2D


func _on_Portal_body_entered(body):
	if body.name == "Player":
		var _target = get_tree().change_scene("res://Menu.tscn")
