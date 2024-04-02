extends Area2D


func _on_area_2d_body_entered(body):
	if body.is_in_group("Player"):
		Global.score += 10


func _on_body_entered(body):
	if body.has_method("player_hit"):
		body.player_hit()
