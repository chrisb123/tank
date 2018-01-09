extends Camera

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass
	
func _process(delta):

	var offset = Vector3(0,7,10)
	
	rotation = get_parent().get_node("mesh").get_rotation()
	
	var target_pos = get_parent().get_node("mesh").get_transform().origin	
	var tank_basis = get_parent().get_node("mesh").get_transform().basis
	
	target_pos += tank_basis.z * offset.z
	target_pos += tank_basis.y * offset.y
	target_pos += tank_basis.x * offset.x

    #smooth_camera_pos = smooth_camera_pos.linear_interpolate(target_pos, smooth_speed * delta)

	set_translation(target_pos)
