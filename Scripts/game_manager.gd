extends Node

var playerScore = 0
var cpuScore = 0
var can_score = false

func _ready():
	await get_tree().process_frame  # wait one frame
	can_score = true

func playerScored():
	if !can_score:
		return
	playerScore += 1 
	print("Player score is: ", playerScore)

func cpuScored():
	if !can_score:
		return
	cpuScore += 1
	print("CPU score is: ", cpuScore)
