extends Node

var startTimer = true
var timerTime = 0

func _process(delta):
	if (startTimer):
		timerTime += delta
		var minutes = fmod(timerTime, 60*60) / 60
		var seconds = fmod(timerTime,60)
		var secondsDeep = int(round(timerTime))
		var timePassed = "%02d:%02d" % [minutes,seconds]
		$Control/MarginWrapper/MarginContainer/TimeContainer/TimeValue.text = str(timePassed)
		deep(secondsDeep)

func deep(time):
	$Control/MarginWrapper/MarginContainer/DeepContainer/DeepValue.text = str(time) + " m"

