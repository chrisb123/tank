extends RigidBody

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass

func _integrate_forces(state):
	#angular_velocity = Vector3(0,1,0)
	#apply_impulse(Vector3(1,0,0),Vector3(10,0,0))
	#apply_impulse(Vector3(-1,0,0),Vector3(-10,0,0))
	