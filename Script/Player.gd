extends KinematicBody2D

export var speed: = 300
export var gravity: = 11500
export var jumpForce = 1500

var jump = false

var vel: = Vector2.ZERO

onready var particlePosition = $Position2D

var particleScene = preload("res://Particles/Land.tscn")

#node.visible = true

func _physics_process(delta: float) -> void:
	visible = true
	#Constant speed
	vel.x = speed
	
	#Jump with space or w
	if Input.is_action_pressed("jump") and is_on_floor():
		vel.y -= jumpForce
		jump = true
	
	#Apply gravity
	vel.y += gravity * delta
	
	#Move sprite
	vel = move_and_slide(vel, Vector2.UP)
	
	if is_on_wall():
		reset()
		
	if is_on_floor() and jump:
		var particleInstance = particleScene.instance()
		particleInstance.set_position(particlePosition.get_position())
		particleInstance.set_emitting(true)
		
		add_child(particleInstance)
		
		jump = false
		

export(String, FILE) var desiredScenePath: = ""

func reset() -> void:
	#Die if hit wall
	Global.score = 0
	get_tree().change_scene(desiredScenePath)



