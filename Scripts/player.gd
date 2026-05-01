extends CharacterBody2D


const SPEED = 300.0

var velocity = Vector2(300, 200)  # diagonal movement
  
func _physics_process(delta):
	position += velocity * delta
	velocity.y = -velocity.y
	velocity.x = -velocity.x
