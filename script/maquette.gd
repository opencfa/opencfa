extends Spatial

var last_position:Vector2
onready var character 
onready var initPos:Vector3 = translation
var zoomTarget:Vector3 ;var zoomOffset = Vector3(0,0.28,0) 
var zoomSpeed:float=0.2 


#var modelpopup = false


# Called when the node enters the scene tree for the first time.
func _ready():
	character= get_node("$Xbot")
	#$Xbot/AnimationPlayer.play("headShake")
	var anim = get_node("Xbot/AnimationPlayer").get_animation("idle")
	anim.set_loop(true)
	$Xbot/AnimationPlayer.play("idle")
	if character:
		_setZoomTarget()
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_SidebaPpopUpButton_pressed():
	$PopupPanel.popup()

	

	
func _on_Walk_pressed():
	var anim = get_node("Xbot/AnimationPlayer").get_animation("walk")
	anim.set_loop(true)
	$Xbot/AnimationPlayer.play("walk")
	$PopupPanel.hide()
	
	

func _on_Run_pressed():
	var anim = get_node("Xbot/AnimationPlayer").get_animation("run")
	anim.set_loop(true)
	$Xbot/AnimationPlayer.play("run",-1,0.05)
	$PopupPanel.hide()

#func _input(event):
#	if event is InputEventMouseMotion:
#		$Xbot.rotation.y += 0.1
	



var x =0
func _setZoomTarget():
	var y =character.get_node("$Xbot").transform.origin +zoomOffset
	zoomTarget=Vector3(0,y.y,y.z)
	
func _input(event):
	if Input.is_action_just_pressed("rmb"):
		last_position = get_viewport().get_mouse_position()
		
	if Input.is_action_pressed("rmb"):
		var delta = get_viewport().get_mouse_position() - last_position
		last_position = get_viewport().get_mouse_position()
		#character.rotate_y(delta.x*0.01)
		character.rotate_y(x*0.01)



	if Input.is_action_pressed("mWheelUp"):
		_setZoomTarget()
		if translation.z>=0.3:
			last_position = get_viewport().get_mouse_position()
			translation=lerp(translation,zoomTarget,zoomSpeed)
		
	if Input.is_action_pressed("mWheelDown"):

		if translation.z<=2:
			translation=lerp(translation,zoomTarget,-zoomSpeed)
