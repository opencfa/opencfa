extends Sprite

var mouse 
var screen

var mouse_in = false
var dragging = false
var ori =  Vector3( 0.0, 0.01, 0.0)
	
func _ready():
	screen = get_viewport().get_visible_rect().size	
	#material.set_shader_param("waterdepth",1.0)
	material.set_shader_param("waterdepth",2.0)
	material.set_shader_param("orig",ori)
	
	set_process(true)
	
func _process(_delta):
	
	if (mouse_in && Input.is_action_pressed("left_click")):
		dragging = true
	
				
	if (dragging && Input.is_action_pressed("left_click")):
		mouse = get_global_mouse_position();
		mouse = mouse / screen * 200
		get_material().set_shader_param("mouse_position", mouse) # pass mouse position on shader script
		
	else:
		dragging = false
		

func _on_Area2D_mouse_entered():
	mouse_in = true


func _on_Area2D_mouse_exited():
	mouse_in = false


func _on_SpinBox_value_changed(value):
	material.set_shader_param("waterdepth",value)
	pass # Replace with function body.


func _on_SpinBox3_value_changed(value):
	#get_tree().set_input_as_handled()
	ori.y = value
	material.set_shader_param("orig",ori)


func _on_SpinBox4_value_changed(value):
	material.set_shader_param("ra",value)
	pass # Replace with function body.


func _on_ColorPickerButton_color_changed(color):
	modulate = color;
	pass # Replace with function body.

func _on_ColorPickerButton2_color_changed(color):
	get_parent().get_node("back").modulate = color
	pass # Replace with function body.


func _on_SpinBox5_value_changed(value):
	material.set_shader_param("fre",value)
	pass # Replace with function body.
