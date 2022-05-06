extends KinematicBody2D

export var speed: = 300
export var gravity: = 11500
export var jumpForce = 1500

var vel: = Vector2.ZERO


#node.visible = true

func _physics_process(delta: float) -> void:
	visible = true
	#Constant speed
	vel.x = speed
	
	#Jump with space or w
	if Input.is_action_pressed("jump") and is_on_floor():
		vel.y -= jumpForce
	
	#Apply gravity
	vel.y += gravity * delta
	
	#Move sprite
	vel = move_and_slide(vel, Vector2.UP)
	
	if is_on_wall():
		reset()

export(String, FILE) var desiredScenePath: = ""

func reset() -> void:
	#Die if hit wall
	Global.score = 0
	get_tree().change_scene(desiredScenePath)



