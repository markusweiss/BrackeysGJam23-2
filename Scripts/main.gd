extends Node

var player1 = preload("res://Actors/player.tscn")
var player2 = preload("res://Actors/player_2.tscn")

func _ready():
	if(Global.deepestDive > Global.tier1):
		var instance = player2.instantiate()
		instance.position = Vector2(150, 200)
		add_child(instance)
	else:
		var instance = player1.instantiate()
		instance.position = Vector2(150, 200)
		add_child(instance)
