extends KinematicBody2D

func touchesCoin(body: Node) -> void:
	Global.score += 1
	queue_free()
