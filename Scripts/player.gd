extends Area2D

@export var velocidade := 500


func _process(delta):
	var x := 0
	if(Input.is_action_pressed("ui_left")):
		x = -1
	if(Input.is_action_pressed("ui_right")):
		x = 1
	position += Vector2(x,0) * velocidade * delta
	position.x = clamp(position.x,90,925)
	


func _on_body_entered(body):
	if(body.is_in_group("Apple")):
		get_tree().call_group("HUD","increaseScore",1)
		
		body.queue_free()
	if(body.is_in_group("Bomb")):
		get_tree().call_group("HUD","decreaseLife",-1)
		body.queue_free()
