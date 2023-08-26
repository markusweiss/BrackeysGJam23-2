extends Node2D

var goldenbubble = preload("res://Actors/goldenbubble.tscn")


func _on_golden_bubble_timer_timeout():
	var bubble_temp = goldenbubble.instantiate()
	add_child(bubble_temp)
