extends Node2D
 
func _ready() -> void:
	GameManager.reset_score()
	PreviousPage.previous_scene_path = "res://level_4.tscn"
	
	AudioServer.set_bus_mute(0, false)
