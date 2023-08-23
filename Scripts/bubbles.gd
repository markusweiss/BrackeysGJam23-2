extends Node2D

var target_position := Vector2(0, 50)
var start_position := Vector2(140, 0)  # Ändere die X-Koordinate hier
var amplitude := 20
var period := 2.0
var elapsed_time := 0.0

func _ready():
	start_position += Vector2(amplitude, 0)  # Berücksichtige die seitliche Bewegung

func _process(delta):
	elapsed_time += delta
	var x_offset = amplitude * sin(2 * PI * elapsed_time / period)
	position = start_position + Vector2(x_offset, position.y - delta * 100)

	if position.y <= target_position.y:
		queue_free()
