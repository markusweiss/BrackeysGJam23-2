extends CanvasLayer

func _ready():
	%Meters.text = str(Global.endingDeep) + " m"
	
	if (Global.endingDeep > Global.deepestDive):
		Global.deepestDive = Global.endingDeep
	
	%MetersDeep.text = str(Global.deepestDive) + " m"
	
	if(Global.deepestDive > Global.tier1):
		$MarginContainer/VBoxContainer/PanelContainer/VBoxContainer2/AnimatedSprite2D.play("free")
		$HBoxContainer/PanelContainer2/arch_worm.play("arch_active")

	if (Global.endingDeep <= Global.minMeter or Global.minMeterArch):
		Global.minMeterArch = true
		$HBoxContainer/PanelContainer/arch_dead.play("dead_active")
	
	if (Global.bubbleCount >= 500):
		$HBoxContainer/PanelContainer3/arch_bubble.play("bubble_active")
	
	print(Global.bubbleCount)
	
func _on_quit_button_pressed():
	get_tree().quit()


func _on_again_button_pressed():
	get_tree().change_scene_to_file("res://Actors/main.tscn")
