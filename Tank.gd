extends RigidBody

export (PackedScene) var CannonParticles
var ray

func _ready():
	var canPart = CannonParticles.instance()
	canPart.one_shot = true
	canPart.emitting = false
	canPart.translate(Vector3(0,0,4))
	$mesh/turret.add_child(canPart)
	ray = canPart.get_node("Shot")

func _process(delta):
	if ray.is_enabled():
		if ray.is_colliding():
			print("hit")


func _integrate_forces(state):
	#angular_velocity = Vector3(0,1,0)
	#apply_impulse(Vector3(1,0,0),Vector3(10,0,0))
	#apply_impulse(Vector3(-1,0,0),Vector3(-10,0,0))
	