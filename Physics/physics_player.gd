extends RigidBody2D

var hit_force : float = 50.0

func _process (delta):
	if Input.is_mouse_button_pressed(MOUSE_BUTTON_LEFT):
		# Get Mouse Position
		var mouse_pos = get_global_mouse_position()
		
		# Get Mouse Direction
		var dir = global_position.direction_to(mouse_pos)
		
		# Apply The Force
		apply_impulse(dir * hit_force)
