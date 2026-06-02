extends CanvasLayer

@onready var score_label: Label = find_child("Score", true, false)
@onready var death_label: Label = find_child("Deaths", true, false)

func _process(_delta: float) -> void:
	# Keep this UI perfectly mirrored to your Autoload values every frame
	if GameManager: 
		if score_label:
			score_label.text = "You have " + str(GameManager.score) + " / 40 coins. " + str(40 - GameManager.score) + " more coins needed."
		if death_label:
			death_label.text = "Deaths: " + str(GameManager.deaths)
