extends MenuButton


var lab_popup


func _ready():
	lab_popup = get_popup()
	lab_popup.add_item("FigureLab",301)
	lab_popup.add_item("NatureLab",302)
	lab_popup.connect("id_pressed",self,"_on_item_pressed")

func _on_item_pressed(id):
	get_tree().set_input_as_handled()
	if id == 301:
		#get_tree().change_scene("res://scene/portrait0002.tscn")
		get_tree().change_scene("res://start.tscn")
	if id == 302:
		get_tree().change_scene("res://scene/nature/tree1/tree.tscn")
