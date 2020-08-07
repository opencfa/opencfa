
#openCFA
# Author: A.S.Sajith

extends Spatial

onready var menu = preload("res://scene/menumain.tscn").instance()

var mousedownleft = false
var mousedownright= false
var hcamoffset = 0
var vcamoffset = 0

func _ready():
	add_child(menu)


# Use left right Arrow keys to pan view
# Mouse wheel scroll for zoom in and  out	

# Use Shift+left, Shift+ right Arrow keys to rotate object up down
# Mouse left and right pressed down for rotating the model left-right



func _unhandled_input(event):
	if event is InputEventMouseButton:
		if event.button_index == BUTTON_LEFT:
			if event.pressed:
				mousedownleft = true
			else:
				mousedownleft = false
		if event.button_index == BUTTON_RIGHT:
			if event.pressed:
				mousedownright = true
			else:
				mousedownright = false				
		if event.button_index == BUTTON_WHEEL_DOWN:
			print("Wheel down")
			$ClippedCamera.translation -= Vector3(0.0,0.0,0.008)	
		if event.button_index == BUTTON_WHEEL_UP:
			print("Wheel up")
			$ClippedCamera.translation += Vector3(0.0,0.0,0.008)	
		
		
			
func _process(delta):
	
	if mousedownleft == true:
		$por00001Main/por00001/head.rotation += Vector3(0,0.01,0.0)
	if mousedownright == true:
		$por00001Main/por00001/head.rotation -= Vector3(0,0.01,0.0)

	if Input.is_action_pressed("ui_left"):
		#$ClippedCamera.set_h_offset(hcamoffset)
		#hcamoffset +=0.009
		#Rotate camera and the head. this gives a better result with a paralax effect
		$ClippedCamera.rotate_y(-0.01)
		$por00001Main/por00001/head.rotation += Vector3(0.0,0.007,0.0)
		
	if Input.is_action_pressed("ui_right"):
		#$ClippedCamera.set_h_offset(hcamoffset)
		#hcamoffset -=0.009
		$ClippedCamera.rotate_y(0.01)
		$por00001Main/por00001/head.rotation += Vector3(0.0,-0.007,0.0)
		
	if Input.is_action_pressed("ui_up"):
		#$ClippedCamera.set_v_offset(vcamoffset)
		#vcamoffset +=0.009
		$ClippedCamera.rotate_x(0.01)
		$por00001Main/por00001/head.rotation += Vector3(0.007,0.0,0.0)
	if Input.is_action_pressed("ui_down"):
		#$ClippedCamera.set_v_offset(vcamoffset)
		#vcamoffset -=0.009
		$ClippedCamera.rotate_x(-0.01)
		$por00001Main/por00001/head.rotation += Vector3(-0.007,0.0,0.0)
	
	if Input.is_action_pressed("shiftup"):
		#$por00001/head.rotation += Vector3(0.01,0.0,0.0)
		$por00001Main/por00001/head.rotation += Vector3(0.01,0.0,0.0)
		
	if Input.is_action_pressed("shiftdown"):
		$por00001Main/por00001/head.rotation -= Vector3(0.01,0.0,0.0)
		
"""
movement = Vector3(0,0,0)
if Input.is_action_pressed("ui_up"):
	movement -= transform.basis.z.normalized()
"""
"""
#Can be used
if event is InputEventMouseMotion:
		position += event.relative
"""		
#Input.get_last_mouse_speed()
"""
var mouse_sensitivity = 0.002
func _unhandled_input(event):
	if event is InputEventKey:
		if event.pressed and event.scancode == KEY_ESCAPE:
			get_tree().quit()
	if event is InputEventMouseMotion:
		   $por00001/head.rotation -= Vector3(-event.relative.x * mouse_sensitivity,0.0,0.0)
		#rotate_y(-event.relative.x * mouse_sensitivity)

"""
"""
	if Input.is_mouse_button_pressed(1):
		#menu.visible = !menu.visible
		if $ClippedCamera.translation.z>0.5:
			$ClippedCamera.translation -= Vector3(0.0,0.0,0.008)
	if Input.is_mouse_button_pressed(2):
		
		if $ClippedCamera.translation.z<2.5:
			$ClippedCamera.translation += Vector3(0.0,0.0,0.008)	
"""
