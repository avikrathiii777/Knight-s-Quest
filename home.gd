extends Control


func _ready() -> void:
	get_tree().paused = false
	AudioServer.set_bus_mute(0,false)
	if has_node("/root/Stats"):
		var hud_layer = get_node("/root/Stats")
		var death_label = hud_layer.find_child("Deaths",true,false)
		death_label.visible = false
		var timer_label = get_node("/root/Stats").find_child("timer",true,false)
		timer_label.visible = false
		GameManager.update_best_label()
