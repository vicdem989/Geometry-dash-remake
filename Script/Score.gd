extends Label

func _ready() -> void:
	self.text = "Your score is : 0"

func _physics_process(delta: float) -> void:
	self.text = "Your score is :" + str(Global.score)
	
