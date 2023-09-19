extends CanvasLayer

func _ready():
	%Meters.text = str(Global.endingDeep) + " m"
	
	if (Global.endingDeep > Global.deepestDive):
		Global.deepestDive = Global.endingDeep
	
	%MetersDeep.text = str(Global.deepestDive) + " m"

func _on_quit_button_pressed():
	get_tree().quit()


func _on_again_button_pressed():
	get_tree().change_scene_to_file("res://Actors/main.tscn")
