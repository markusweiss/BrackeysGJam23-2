extends CanvasLayer

func _ready():
	process_mode = Node.PROCESS_MODE_WHEN_PAUSED
	

func _input(event):
	if event.is_action_pressed("move_left") or event.is_action_pressed("move_right"):
		$".".visible = false
		get_tree().paused = false
