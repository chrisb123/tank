extends RigidBody

export (PackedScene) var CannonParticles

func _ready():
	var canPart = CannonParticles.instance()
	canPart.one_shot = true
	canPart.emitting = false
	canPart.translate(Vector3(0,0,4))
	$mesh/turret.add_child(canPart)

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass

func _integrate_forces(state):
	#angular_velocity = Vector3(0,1,0)
	#apply_impulse(Vector3(1,0,0),Vector3(10,0,0))
	#apply_impulse(Vector3(-1,0,0),Vector3(-10,0,0))
	