extends Label



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	text = str(Global.score)


func _on_timer_timeout():
	if !Global.game_over:
		Global.score += 5
		Global.speed += 2
