extends CharacterBody2D


const SPEED = 300.0
const STOP_LEFT = 40
const STOP_RIGHT = 280

func _ready():
	$CollisionShape2D.disabled = false

func _physics_process(delta):
	var direction = Input.get_action_strength("move_right") - Input.get_action_strength("move_left")
	
	if direction != 0:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
	
	move_and_slide()

	position.x = clamp(position.x, STOP_LEFT, STOP_RIGHT)
