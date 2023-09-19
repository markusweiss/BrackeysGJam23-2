extends ProgressBar

func setProgressBarValue(value: float):
	if value > 10:
		self.modulate = Color(0.0, 1.0, 1.0)
	else:
		self.modulate = Color(255, 0 , 0 , 0.8)
