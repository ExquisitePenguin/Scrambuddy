extends Control

var move_list_3x3: Array = ["U", "D", "R", "L", "B", "F", "U'", "D'", "R'", "L'", "B'", "F'", "U2", "D2", "R2", "L2", "B2", "F2"];

func _ready() -> void:
	var store_moves: Array = []
	var random_move_range = randi_range(19,21)
	for i in range(random_move_range): #TODO find better range
		var rand_num_3x3 = randi_range(0, move_list_3x3.size() - 1)
		var rand_move_3x3: String = move_list_3x3[rand_num_3x3]
		store_moves.append(rand_move_3x3) #TODO same turns/moves can't repeat
		$RichTextLabel.text += store_moves[i] + "  "
		await get_tree().create_timer(0.03).timeout


func _process(delta: float) -> void:
	pass
	#print(rand_move_3x3)
