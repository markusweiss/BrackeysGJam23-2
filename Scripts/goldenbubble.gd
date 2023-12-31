extends Area2D

@onready var countdown_timer = get_node("/root/Main/UI_Top/")

var rng = RandomNumberGenerator.new()
var rand_int = rng.randi_range(60, 230)
var target_position := Vector2(0, 0)
var start_position := Vector2(rand_int, 0)
var amplitude := 30
var period := 2
var elapsed_time := 0.0
var soundPlayed = false


func _ready():
	start_position += Vector2(amplitude, 0)


func _process(delta):
	elapsed_time += delta
	var x_offset = amplitude * sin(2 * PI * elapsed_time / period)
	position = start_position + Vector2(x_offset, position.y - delta * 180)

	if position.y <= target_position.y:
		$AnimatedSprite2D.play("explode")
		await get_tree().create_timer(0.2).timeout
		queue_free()
		

func _on_body_entered(body):
	call_deferred("_disable_collision_and_play_animation")
	if (!soundPlayed):
		$blub.play()
		soundPlayed = true
		
	await get_tree().create_timer(0.2).timeout
	countdown_timer.countdownTimer += 4
	Global.bubbleCount += 1
	Global.goldenBubbleCount += 1
	queue_free()

func _disable_collision_and_play_animation():
	$CollisionShape2D.disabled = true
	$AnimatedSprite2D.play("explode")
