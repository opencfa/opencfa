extends Node2D
var parent 

func _ready():
	parent = get_parent()
	print(parent.name)


func _process(delta):
	if Input.is_action_just_pressed("draw"):
		var pencil = preload("res://scene/paint/Pencil.tscn").instance()
		
	#	parent = get_parent().get_parent().get_parent()
		#pencil.default_color = parent.get_node("ColorPickerButton").color
		pencil.modulate = parent.get_node("ColorPickerButton").color
		pencil.width = parent.get_node("BrushSize").value
	#	if parent.save == false:
		add_child(pencil)


func _on_Canvas_item_rect_changed():
	 force_update_transform()

