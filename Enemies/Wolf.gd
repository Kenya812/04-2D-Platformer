extends Area2D

var start = Vector2 (-10,3)
var destination = Vector2 (580,3)

func _on_Wolf_body_entered(body):
	if body.name == "Player": 
		body.queue_free ()

func _ready (): 
	position = start
	$Tween.interpolate_property(self,"position", start, destination, 3.0, Tween.TRANS_LINEAR, Tween.EASE_IN_OUT)
	$Tween.start ()

func _on_Tween_tween_all_completed():
	var temp = start
	start = destination
	destination = temp
	$Tween.interpolate_property(self,"position", start, destination, 3.0, Tween.TRANS_LINEAR, Tween.EASE_IN_OUT)
	$Tween.start ()

