extends Line2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	BLEND_MODE_ADD
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_released("draw"):
		$Timer.stop()



func _on_Timer_timeout():
	add_point(get_global_mouse_position())
	$Timer.start()
