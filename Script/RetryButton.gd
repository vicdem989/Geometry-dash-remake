extends Button

export(String, FILE) var desiredScenePath: = ""

func _physics_process(delta: float) -> void:
	if Input.is_action_just_pressed("resume"):
		get_tree().change_scene(desiredScenePath)

func retryButtonPressed() -> void:
	get_tree().change_scene(desiredScenePath)
