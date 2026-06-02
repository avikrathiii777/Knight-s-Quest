extends Node
var score: int = 0
var deaths: int = 0
var best_time: int = 9999
var best_deaths: int = 1000
var SAVE_PATH = "user://best_score.cfg"

func _ready() -> void:
	process_mode = PROCESS_MODE_ALWAYS
	GameManager.update_best_label()
	_update_all_ui()

func add_point() -> void:
	score += 1
	_update_ui()
	if score >= 40:
		Global.enable_detection_zone.emit()

func reset_score() -> void:
	score = 0
	_update_ui()

func death_count() -> void:
	deaths += 1
	_update_death_ui()

func reset_deaths() -> void:
	deaths = 0
	_update_death_ui()

func _update_all_ui() -> void:
	_update_ui()
	_update_death_ui()

func _update_ui() -> void:
	var score_label = get_tree().current_scene.find_child("Score", true, false)
	if score_label != null:
		score_label.text = "You have " + str(score) + " / 40 coins. You need " + str(40-score) + " more coins."
	else: 
		print("Warning! Node Not found.")

func _update_death_ui() -> void:
	if has_node("/root/GameUI"):
		var stats_node = get_node("/root/GameUI").find_child("Stats", true, false)
		if stats_node:
			var death_label = stats_node.find_child("Deaths", true, false)
			if death_label:
				death_label.text = "Deaths: " + str(deaths)
func check_best():
	var current_run_time = Clock.time_taken
	var is_new_best: bool = false
	var config = ConfigFile.new()
	var error = config.load(SAVE_PATH)
	if current_run_time < best_time:
		is_new_best = true
	elif current_run_time == best_time and deaths < best_deaths:
		is_new_best = true
	else:
		pass
	if error == OK:
		best_time = config.get_value("Records", "best_time", 9999)
		best_deaths = config.get_value("Records", "best_deaths", 9999)
	else:
		is_new_best = true
	if is_new_best:
		best_time = current_run_time
		best_deaths = deaths
		config.set_value("Records","best_time",best_time)
		config.set_value("Records","best_deaths",best_deaths)
		config.save(SAVE_PATH)
	update_best_label()
func update_best_label() -> void:
	var config = ConfigFile.new()
	if config.load(SAVE_PATH) == OK:
		best_time = config.get_value("Records","best_time",9999)
		best_deaths = config.get_value("Records","best_deaths",9999)
	var current_scene = get_tree().current_scene
	if current_scene:
		var best_label = current_scene.find_child("best",true,false)
		if best_label and best_label is Label:
			if best_time == 9999:
				best_label.text = "Best: No record yet"
			else:
				best_label.text = "Time: " + str(best_time) + "\n" + "Deaths: " + str(best_deaths) + ""
