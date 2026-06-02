
extends Button # Or TextureButton
@onready var audio_stream_player: AudioStreamPlayer2D = $"../HBoxContainer/AudioStreamPlayer2D"

@export var hover_scale: Vector2 = Vector2(1.2, 1.2)
@export var click_scale: Vector2 = Vector2(0.8, 0.8)
@export var default_scale: Vector2 = Vector2(1.0, 1.0)
@export var duration: float = 0.1

func _ready():
	# Ensure the pivot is centered automatically at start
	pivot_offset = size / 2
	
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
	Clock.start_timer()
	audio_stream_player.play()
	await audio_stream_player.finished
	get_tree().change_scene_to_file(PreviousPage.previous_scene_path)

func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("escape"):
		_on_click()

func _on_release():
	# If mouse is still on icon after click, return to hover size
	if is_hovered():
		_animate(hover_scale)
	else:
		_animate(default_scale)
func _unhandled_key_input(event: InputEvent) -> void:
	if event.is_action_pressed("escape"):
		_on_click()
	
