extends Control

var current_time_stored: float

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func store_value(time):
	current_time_stored = time
	print(time)
	times_list.append(time)
	print(times_list)

var times_list: Array
