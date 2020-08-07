extends Sprite


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

"""
uniform int TRUE_DISTANCE = 0;
uniform int  kDepth = 3;
uniform int  kBranches =3;
uniform int  kMaxDepth =2187 ;// branches ^ depth
uniform float iTime;

uniform float len = 3.2;
uniform float wid = 0.3;
uniform float lenf = 0.6;
uniform float widf = 0.4;
"""


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	#var time = abs(cos(OS.get_unix_time()/100* delta))
	#$".".material.set_shader_param("iTime",abs(sin(OS.get_unix_time()*10)))
	pass



	


func _on_Timer_timeout():
	#$".".material.set_shader_param("iTime",OS.get_unix_time())
	pass # Replace with function body.


func _on_Button_pressed():
	$".".material.set_shader_param("iTime",OS.get_unix_time())
	pass # Replace with function body.


func _on_HSlider_value_changed(value):
	$".".material.set_shader_param("kBranches",value)
	pass # Replace with function body.


func _on_HSlider2_value_changed(value):
	$".".material.set_shader_param("kDepth",value)
	pass # Replace with function body.


func _on_HSlider3_value_changed(value):
	$".".material.set_shader_param("len",value)
	pass # Replace with function body.


func _on_HSlider4_value_changed(value):
	$".".material.set_shader_param("wid",value)
	pass # Replace with function body.


func _on_HSlider5_value_changed(value):
	$".".material.set_shader_param("lenf",value)
	pass # Replace with function body.


func _on_HSlider6_value_changed(value):
	$".".material.set_shader_param("widf",value)
	pass # Replace with function body.

func _on_HSlider7_value_changed(value):
	$".".material.set_shader_param("zoff",float(value))




func _on_HSlider8_value_changed(value):
	$".".material.set_shader_param("yoff",value)
	





func _on_HSlider9_value_changed(value):
	$".".material.set_shader_param("foc",value)
	pass # Replace with function body.
