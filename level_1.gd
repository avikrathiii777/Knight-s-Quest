extends Node
func _ready() -> void:
	GameManager.reset_score()
	PreviousPage.previous_scene_path = "res://level_1.tscn"
	AudioServer.set_bus_mute(0, false)
