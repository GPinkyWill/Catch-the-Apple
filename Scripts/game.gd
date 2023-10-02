extends Node2D

@export var Apple: PackedScene
@export var Bomb: PackedScene


func _on_timer_timeout():
	var obj = Apple.instantiate()
	var pos = Vector2((randi()%925 + 90),20)
	obj.position = pos
	add_child(obj)

func _on_timer_bomb_timeout():
	var obj = Bomb.instantiate()
	var pos = Vector2((randi()%925 + 90),20)
	obj.position = pos
	add_child(obj)
	
