extends Node

@onready var player_label = $Label/PlayerScore
@onready var cpu_label = $Label/CPUScore

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
	player_label.text = str(playerScore)
	
func cpuScored():
	if !can_score:
		return
	cpuScore += 1
	cpu_label.text = str(cpuScore )
