extends Node

var startTimer = true
var timerTime = 0

var countdownTimer = 10
var timerRunning = true

func _physics_process(delta):
	if (startTimer):
		timerTime += delta
		var seconds_deep = int(round(timerTime))
		$Control/MarginWrapper/MarginContainer/DeepContainer/DeepValue.text = str(seconds_deep) + " m"

	if (timerRunning):
		countdownTimer -= delta
		
		var seconds = int(round(countdownTimer))
		$Control/MarginWrapper/MarginContainer/TimeContainer/TimeValue.text = str(seconds) + " s"
		
		if (countdownTimer <= 0):
			countdownTimer = 0
			timerRunning = false
			get_tree(). paused = true
