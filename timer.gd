extends Control


@onready var timer_label = $Label

var is_running = false
var start_time = 0.0

var timer_on_state = false

func _ready() -> void:
	pass

func _process(delta):
	if InputManager.is_time_start_pressed() and timer_on_state == false:
		start_timer()
		timer_on_state = true
	elif InputManager.is_time_start_pressed() and timer_on_state:
		stop_timer()
		timer_on_state = false

	if is_running:
		var elapsed_time = Time.get_ticks_msec() - start_time
		# TODO: Add adjustable milisecond display for user preference (settings)
		timer_label.text = format_time(elapsed_time / 1000.0) # Changes pure miliseconds to seconds and miliseconds

func start_timer():
	is_running = true
	start_time = Time.get_ticks_msec()

func stop_timer():
	is_running = false
	var final_time = timer_label.text
	#var final_time = Time.get_ticks_msec() - start_time / 1000.0 # Calculates Final Time
	Statistics.store_value(float(final_time))

func reset_timer():
	is_running = false
	timer_label.text = "0.000"

func format_time(seconds: float) -> String:
	return "%.3f" % seconds
