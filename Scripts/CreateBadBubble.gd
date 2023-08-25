extends Node2D

var badbubble = preload("res://Actors/badbubble.tscn")


func _on_bad_bubble_timer_timeout():
	var badbubble_temp = badbubble.instantiate()
	add_child(badbubble_temp)
