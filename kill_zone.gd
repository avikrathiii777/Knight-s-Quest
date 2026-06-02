extends Area2D

@onready var timer: Timer = $Timer
@onready var audio_stream_player: AudioStreamPlayer2D = $AudioStreamPlayer2D

func _on_body_entered(body: Node2D) -> void:
	# 1. Check if the body is the player and handle the death smoothly
	if body.is_in_group("player") or body.name == "player":
		# Stop player physics and logic so they stop moving/falling
		if body.has_method("set_physics_process"):
			body.set_physics_process(false)
			
		# Hide the player visually instead of freeing them instantly
		if body.has_node("Sprite2D"):
			body.get_node("Sprite2D").visible = false
		elif body.get("visible") != null:
			body.visible = false
			
		# Disable the player's local collision so they cannot hit traps again
		var player_shape = body.find_child("CollisionShape2D", true, false)
		if player_shape:
			player_shape.call_deferred("set_disabled", true)

	# 2. Play the death sound effect immediately
	if audio_stream_player:
		audio_stream_player.play()
	
	# 3. Start the timer delay to let the sound play fully
	if timer:
		timer.start()
	else:
		_reload_scene()

func _on_timer_timeout() -> void:
	_reload_scene()

func _reload_scene() -> void:
	# 4. Safely communicate with your GameManager and execute the reload
	if GameManager:
		GameManager.death_count()
	
	get_tree().reload_current_scene()
