extends Area2D

# 1. Provide the path to your next level/scene here
@export_file("*.tscn") var next_scene_path = "res://home.tscn"
@onready var teleporting: AudioStreamPlayer2D = $Teleporting

func _on_body_entered(_body: Node2D) -> void:
	teleporting.play()
	Clock.stop_timer()
	GameManager.check_best()
	_body.set_physics_process(false)
	await get_tree().create_timer(0.3).timeout
	get_tree().change_scene_to_file(next_scene_path)

func _ready() -> void:
	Global.enable_detection_zone.connect(_on_enable_detection)
func _on_enable_detection():
	set_deferred("monitoring",true)
	set_deferred("monitorable",true)
	
	
	
	
	
	
	
