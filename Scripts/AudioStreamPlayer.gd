extends AudioStreamPlayer

func _ready():
	stream = preload("res://Assets/watersong.mp3")
	play()


func _on_finished():
	play()
