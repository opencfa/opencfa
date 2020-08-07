
extends ViewportContainer
var parent 

func _ready():
	parent = get_parent()


func _process(delta):
	if Input.is_action_just_pressed("draw"):
		var pencil = preload("res://scene/paint/Pencil.tscn").instance()
	
		pencil.default_color = parent.get_node("ColorPicker").color
		pencil.width = parent.get_node("Bushsize").value
		if parent.save == false:
			add_child(pencil)


func _on_Canvas_item_rect_changed():
	 force_update_transform()
	 pass


func _on_Button_pressed():
	
	print("to do")
	#pencil.texture = 
	pass # Replace with function body.
