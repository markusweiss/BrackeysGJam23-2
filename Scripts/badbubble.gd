extends Area2D

@onready var countdown_timer = get_node("/root/Main/UI_Top/")

var rng = RandomNumberGenerator.new()
var rand_int = rng.randi_range(50, 240)
var target_position := Vector2(0, 100)
var start_position := Vector2(rand_int, 0)
var amplitude := 24
var period := 2.0
var elapsed_time := 0.0


func _ready():
	start_position += Vector2(amplitude, 0)


func _process(delta):
	elapsed_time += delta
	var x_offset = amplitude * sin(2 * PI * elapsed_time / period)
	position = start_position + Vector2(x_offset, position.y - delta * 130)

	if position.y <= target_position.y:
		queue_free()
		

func _on_body_entered(body):
	countdown_timer.countdownTimer-=1
	$AnimatedSprite2D.play("explode")
	$blub.play()
	await get_tree().create_timer(0.3).timeout
	queue_free()
