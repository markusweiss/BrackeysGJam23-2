extends Node2D

var bubble = preload("res://Actors/bubble.tscn")


func _on_bubble_timer_timeout():
	var bubble_temp = bubble.instantiate()
	add_child(bubble_temp)
