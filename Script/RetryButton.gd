extends Button

export(String, FILE) var desiredScenePath: = ""

func retryButtonPressed() -> void:
	get_tree().change_scene(desiredScenePath)
