extends Node

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	#$Tank.apply_impulse(Vector3(),Vector3(1,0,0))
	pass

func _process(delta):
	if Input.is_action_pressed("ui_up"):
		$Tank.apply_impulse(Vector3(),Vector3(0,0,-1))
	if Input.is_action_pressed("ui_down"):
		$Tank.apply_impulse(Vector3(),Vector3(0,0,1))
	if Input.is_action_pressed("ui_right"):
		$Tank/mesh/Cube_001.rotate_y(-1*delta)
	if Input.is_action_pressed("ui_left"):
		$Tank/mesh/Cube_001.rotate_y(1*delta)	
	
	
