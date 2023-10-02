extends CanvasLayer

var lives := 3
var score := 0

# Called when the node enters the scene tree for the first time.
func _ready():
	$Lives.text = "Lives : " + str(lives)
	$Score.text = "Score : " + str(score)



func increaseScore(s):
	score += s
	$Score.text = "Score : " + str(score)
func decreaseLife(d):
	lives += d
	$Lives.text = "Lives : " + str(lives)
	if(lives <= 0):
		
		print(score)
		get_tree().change_scene_to_file("res://Scenes/gameover.tscn")
		
