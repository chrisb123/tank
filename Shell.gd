extends RigidBody

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():

	
	#var y = deg2rad($mesh.rotation_degrees.y)
	translation += Vector3(0,0,-4)
	#var tform = get_parent().get_parent().get_global_transform()
	#self.translation = tform.xform(Vector3(0,0,-4))
	#var x = tform.xform(Vector3(0,0,-100))
	apply_impulse(Vector3(),to_local(Vector3(0,0,-100)))
	
	#pleas write this better, its using the Tanks Mesh.
	#transform = get_parent().get_parent().get_parent().get_global_transform()
	#apply_impulse(Vector3(),Vector3(0,0,-100))
	

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass


func _on_Timer_timeout():
	get_parent().queue_free()
