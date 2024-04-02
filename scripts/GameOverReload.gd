extends Button


func _on_pressed():

	Global.score = 0;
	Global.speed = 80;
	Global.game_over = false;
	get_tree().reload_current_scene()
