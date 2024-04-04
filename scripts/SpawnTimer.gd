extends Timer

var minTime = 1
var maxTime = 3

# Called when the node enters the scene tree for the first time.
func _ready():
	randTime();
	connect("timeout", randTime, 1)

func randTime(): 
	set_wait_time(randf_range(minTime, maxTime))
