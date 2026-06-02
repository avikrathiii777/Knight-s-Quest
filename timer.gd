extends Label
var time_taken: int = 0
var is_running: bool = false
var real_time: float = 0.0
func _ready() -> void:
	process_mode = PROCESS_MODE_ALWAYS
	update_timer_ui()
func _process(delta: float) -> void:
	if not is_running:
		return
	real_time += delta
	while real_time >= 1.0:
		time_taken += 1
		real_time -= 1
		update_timer_ui()
func start_timer():
	is_running = true
func stop_timer():
	is_running = false
func reset_timer():
	time_taken = 0
	real_time = 0.0
	update_timer_ui()
func update_timer_ui():
	if has_node("/root/Stats"):
		var hud_layer  = get_node("/root/Stats")
		var label = hud_layer.find_child("timer",true,false)
		label.text = "Timer: " + str(time_taken)
