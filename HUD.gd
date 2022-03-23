extends Control


func _ready():
	Global.update_score(0)
	Global.update_health(0)



func update_score():
	$Score.text = "Score: " + str(Global.score)
	
func update_health():
	$Health.text = "Health: " + str(Global.health)
