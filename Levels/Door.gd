extends Area2D



func _on_Door_body_entered(body):
	if body.name == "Player":
# warning-ignore:return_value_discarded
		get_tree().change_scene("res://Levels/Level2.tscn")
