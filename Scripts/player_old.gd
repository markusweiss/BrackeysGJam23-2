extends CharacterBody2D

const MAX_SPEED = 200
const ACCELERATION_SMOOTHING = 25

var leftMovement = 55
var rightMovement = 260

var right = true
var left = true

func _physics_process(delta):	
	var movement_vector = get_movement_vector()
	var direction = movement_vector.normalized()
	var velocity = direction * MAX_SPEED
	velocity = velocity.lerp(target_velocity, 1 - exp(-delta * ACCELERATION_SMOOTHING))
	move_and_slide()


func get_movement_vector():
	
	var playerPosition = get_parent().get_node("Player").global_position.x
	print(playerPosition)
	var x_movement = Input.get_action_strength("move_right") - Input.get_action_strength("move_left")
	
	if right:
		return Vector2(x_movement,0)
	
	if left:
		right = true
		return Vector2(x_movement,0)	
	
	if playerPosition >= 260:
		right = false
		return Vector2(0,0)
		
		
	if x_movement == -1:
		print("l")
		
	return Vector2.ZERO
	
	
#func _on_area_2d_body_entered(body):
#	if(body.is_in_group("Player")):
#		print("drin")
#		return Vector2.ZERO
