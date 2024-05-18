extends CharacterBody2D

@export var SPEED = 300.0

func _physics_process(delta):
	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction = Input.get_vector("left", "right", "up", "down")
	look_at(position + direction)
	velocity = direction * SPEED
	
	move_and_slide()
