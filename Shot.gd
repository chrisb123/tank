extends RayCast

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():

	if is_colliding():
		var collider = get_collider()
		print(collider)
	#queue_free()

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass


func _on_Life_Timer_timeout():
	#queue_free()
	pass