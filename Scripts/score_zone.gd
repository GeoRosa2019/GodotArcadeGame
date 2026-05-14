extends Area2D

var playerScore = 0

func _on_body_entered(_body: Node2D) -> void:
	playerScore += 1
	print("Player score is: ", playerScore)
	queue_free()
