extends Control

# TODO: make player customizable keybinds

func is_time_start_pressed():
	return Input.is_action_just_pressed("SpaceKey")
