extends Node


# Called when the node enters the scene tree for the first time.
func _ready():
	if(Global.deepestDive > Global.tier1):
		$Player2.visible = true
	else:
		$Player.visible = true
