extends Node2D
var enemy = preload("res://enemy.tscn")
var enemy_sky = preload("res://EnemySky.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass




func _on_spawn_timer_timeout():
	var obs = enemy.instantiate();
	obs.position = Vector2(230,99)
	add_child(obs)
	
	var obs1 = enemy_sky.instantiate();
	obs1.position = Vector2(322,91)
	add_child(obs1)


