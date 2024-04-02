extends Control

func _process(delta):
	if Input.is_action_just_pressed("ui_accept") && Global.game_over:
		Global.score = 0;
		Global.speed = 80;
		Global.game_over = false;
		get_tree().reload_current_scene()
