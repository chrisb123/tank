extends RigidBody

export (PackedScene) var CannonParticles
export (PackedScene) var Shell

var ray

func _ready():
	var canPart = CannonParticles.instance()
	canPart.one_shot = true
	canPart.emitting = false
	canPart.translate(Vector3(0,0,4))
	$mesh/turret.add_child(canPart)
	ray = canPart.get_node("Shot")

func _physics_process(delta):
	var y = deg2rad($mesh.rotation_degrees.y)
	if Input.is_action_pressed("ui_up"):
		apply_impulse(Vector3(),Vector3(0,0,-1).rotated(Vector3(0,1,0),y))
	if Input.is_action_pressed("ui_down"):
		apply_impulse(Vector3(),Vector3(0,0,1).rotated(Vector3(0,1,0),y))
	if Input.is_action_pressed("ui_right"):
		$mesh.rotate(Vector3(0,1,0),-1*delta)
	if Input.is_action_pressed("ui_left"):
		$mesh.rotate(Vector3(0,1,0),1*delta)
	if Input.is_action_pressed("q"):
		$mesh/turret.rotate_y(1.5*delta)	
	if Input.is_action_pressed("e"):
		$mesh/turret.rotate_y(-1.5*delta)	
	if Input.is_action_just_pressed("ui_select"):
		#$mesh/turret/Particles.emitting = true
		var CanShell = Shell.instance()
		CanShell.get_node("Shell").global_transform = $mesh/turret.global_transform
		add_child(CanShell)


func _process(delta):
	if ray.is_enabled():
		if ray.is_colliding():
			print("hit")


func _integrate_forces(state):
	#angular_velocity = Vector3(0,1,0)
	#apply_impulse(Vector3(1,0,0),Vector3(10,0,0))
	#apply_impulse(Vector3(-1,0,0),Vector3(-10,0,0))
	