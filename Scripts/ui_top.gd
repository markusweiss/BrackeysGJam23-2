extends Node

var startTimer = true
var timerTime = Global.timerTime

var countdownTimer = Global.countdownTimer
var timerRunning = true

func _physics_process(delta):
	if (startTimer):
		timerTime += delta
		var seconds_deep = int(round(timerTime))
		Global.endingDeep = seconds_deep
		$Control/MarginWrapper/MarginContainer/DeepContainer/DeepValue.text = str(seconds_deep) + " m"

	if (timerRunning):
		countdownTimer -= delta
		
		var seconds = int(round(countdownTimer))
		
		#$Control/MarginWrapper/MarginContainer/TimeContainer/TimeValue.text = str(seconds) + " s"
		$Control/MarginWrapper/MarginContainer/TimeContainer/AirBar.value = seconds
		#if (countdownTimer <= 25):
		#	print($Control/MarginWrapper/MarginContainer/TimeContainer/AirBar.get_theme_stylebox("fill"))
						
		if (countdownTimer <= 0):
			countdownTimer = 0
			timerRunning = false
			get_tree().change_scene_to_file("res://Actors/death.tscn")
