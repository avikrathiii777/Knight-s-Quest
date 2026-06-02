extends Area2D

# 1. Provide the path to your next level/scene here
@export_file("*.tscn") var next_scene_path = "res://level_4.tscn"
@onready var teleporting: AudioStreamPlayer2D = $Teleporting


func _on_body_entered(_body):
	teleporting.play()
	_body.set_physics_process(false)
	await get_tree().create_timer(0.5).timeout
	get_tree().change_scene_to_file(next_scene_path)

func activate_portal():
	set_deferred("monitorable",true)
	set_deferred("monitoring",true)
	print("ready")
func _ready() -> void:
	Global.enable_detection_zone.connect(activate_portal)
	

	
