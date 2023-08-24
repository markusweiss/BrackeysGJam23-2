extends CanvasLayer

#@onready var deapth = get_node("/root/Main/UI_Top/")

func _ready():
	$MarginContainer/VBoxContainer/PanelContainer/Meters.text = str(Global.endingDeep) + " m"


func _on_quit_button_pressed():
	get_tree().quit()


func _on_again_button_pressed():
	get_tree().change_scene_to_file("res://Actors/main.tscn")
