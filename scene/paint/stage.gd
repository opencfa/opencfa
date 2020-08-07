extends Node2D

var save = false
func _ready():
	#$PopupPanel.show()
	pass


func _on_SaveButton_button_up():
	save = true
	$FileSaveDialog.show()
	
	

func _on_FileSaveDialog_confirmed():
	var img = $ViewportContainer/Viewport.get_texture().get_data()
	img.save_png($FileSaveDialog.current_path)
	pass # Replace with function body.


func _on_Clear_pressed():
	
	get_tree().change_scene("res://scene/paint/test2.tscn")
	pass # Replace with function body.
