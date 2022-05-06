extends KinematicBody2D

onready var node = get_node("res://Scenes/Player.tscn")

var player = load("res://Script/Player.gd").new()

export(String, FILE) var desiredScenePath: = ""

func _on_Area2D_body_entered(body: PhysicsBody2D) -> void:
	Global.score = 0
	get_tree().change_scene(desiredScenePath)
	
