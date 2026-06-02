extends Node
@onready var score_1: Label = $Game1/Score1
var score = 0

func add_point():
	score += 1
	score_1.text = "You have " + str(score) + " / 40 coins.      You need " + str(40-score) + " more coins."
	if score >= 40:
		Global.enable_detection_zone.emit()
