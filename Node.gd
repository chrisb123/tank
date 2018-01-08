extends Node

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	#$Tank.apply_impulse(Vector3(),Vector3(1,0,0))
	pass

func _process(delta):
	pass
	
func _physics_process(delta):
	var y = deg2rad($Tank/mesh.rotation_degrees.y)
	if Input.is_action_pressed("ui_up"):
		$Tank.apply_impulse(Vector3(),Vector3(0,0,-1).rotated(Vector3(0,1,0),y))
	if Input.is_action_pressed("ui_down"):
		$Tank.apply_impulse(Vector3(),Vector3(0,0,1).rotated(Vector3(0,1,0),y))
	if Input.is_action_pressed("ui_right"):
		$Tank/mesh.rotate(Vector3(0,1,0),-1*delta)
	if Input.is_action_pressed("ui_left"):
		$Tank/mesh.rotate(Vector3(0,1,0),1*delta)
	if Input.is_action_pressed("q"):
		$Tank/mesh/turret.rotate_y(1.5*delta)	
	if Input.is_action_pressed("e"):
		$Tank/mesh/turret.rotate_y(-1.5*delta)	
		