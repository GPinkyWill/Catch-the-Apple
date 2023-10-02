extends CanvasLayer

var score := 0

# Called when the node enters the scene tree for the first time.
func _ready():
	
	$ScoreFinal.text = "Score : " + str(score)
	


func finalScore(fs):
	score += fs
	$ScoreFinal.text = "Score : " + str(score)



