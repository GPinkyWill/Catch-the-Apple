extends CanvasLayer

var score := 0

# Called when the node enters the scene tree for the first time.
func _ready():
	score = Global.highscore
	$ScoreFinal.text = "Score : " + str(score)
	


