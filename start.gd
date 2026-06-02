extends Button

@onready var audio_stream_player: AudioStreamPlayer2D = $"../AudioStreamPlayer2D"

@export var hover_scale: Vector2 = Vector2(1.2, 1.2)
@export var click_scale: Vector2 = Vector2(0.8, 0.8)
@export var default_scale: Vector2 = Vector2(1.0, 1.0)
@export var duration: float = 0.1

func _ready():
	pivot_offset = size / 2
	get_tree().paused = false 

	# Connect signals
	mouse_entered.connect(_on_hover)
	mouse_exited.connect(_on_exit)
	button_down.connect(_on_click)
	button_up.connect(_on_release)

func _animate(target: Vector2):
	var tween = create_tween()
	tween.set_trans(Tween.TRANS_BACK).set_ease(Tween.EASE_OUT)
	tween.tween_property(self, "scale", target, duration)

func _on_hover():
	_animate(hover_scale)

func _on_exit():
	_animate(default_scale)

func _on_click():
	_animate(click_scale)
	if has_node("/root/Stats"):
		var death_label = get_node("/root/Stats").find_child("Deaths",true,false)
		death_label.visible = true
		var best_label = get_node("/root/Stats").find_child("timer",true,false)
		best_label.visible = true
	if has_node("/root/Clock"):
		var clock_node = get_node("/root/Clock")
		if clock_node.has_method("reset_timer") and clock_node.has_method("start_timer"):
			clock_node.reset_timer()
			clock_node.start_timer()
	if GameManager:
		GameManager.reset_deaths()
	if audio_stream_player:
		audio_stream_player.play()
		await get_tree().create_timer(0.4).timeout
	get_tree().change_scene_to_file("res://level_1.tscn")

func _on_release():
	if is_hovered():
		_animate(hover_scale)
	else:
		_animate(default_scale)

func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("escape"):
		_on_click()
