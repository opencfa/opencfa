extends PanelContainer


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Button4_pressed():
	get_tree().change_scene("res://scene/portrait0003.tscn")
	pass # Replace with function body.


func _on_Button3_pressed():
	get_tree().change_scene("res://scene/portrait0001.tscn")
	pass # Replace with function body.
