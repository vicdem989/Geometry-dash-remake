extends Button

export(String, FILE) var desiredScenePath: = ""

func changeScreenPressed() -> void:
	get_tree().change_scene(desiredScenePath)
