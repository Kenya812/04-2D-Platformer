extends Area2D

export var score = 100

func _on_Coin_body_entered(body):
	if body.name == "Player":
		Global.increase_score(score)
		var sound = get_node_or_null("/root/Game/Coin")
		if sound != null:
			sound.playing = true
		queue_free()
