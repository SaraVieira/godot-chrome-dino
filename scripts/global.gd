extends Node

var score = 0;
var speed = 80;
var game_over = false;
var high_score = 0;

func _ready():

	process_mode = Node.PROCESS_MODE_ALWAYS
	var file = FileAccess.open("user://save_game.dat", FileAccess.READ)
	if(file):
		var content = file.get_as_text()
		high_score = int(content)
	

func _process(delta):
	if Input.is_action_just_pressed("pause"):
		get_tree().paused = !get_tree().paused

func saveHighScore(content):
	if content > high_score:
		high_score = content;
		var file = FileAccess.open("user://save_game.dat", FileAccess.WRITE)
		file.store_string(str(content))
