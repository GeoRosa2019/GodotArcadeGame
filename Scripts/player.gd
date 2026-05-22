extends CharacterBody2D

@export var speed: float = 100.0

func _physics_process(delta):
	var direction = 0.0
	
	if Input.is_action_pressed("move_up"):
		direction = -1.0
	elif Input.is_action_pressed("move_down"):
		direction = 1.0

	velocity = Vector2(0.0, direction * speed)
	move_and_slide()
