extends Area2D
@onready var sprite_2d: Sprite2D = $Sprite2D



func _on_body_entered(_body: Node2D) -> void:
	queue_free()
	sprite_2d.queue_free() # Replace with function body.
