extends Rampa

var g: = -9.81

func _ready() -> void:
	set_physics_process(true)

func _physics_process(delta: float) -> void:
	var a: = calculate_aceleration()
	var v: = calculate_move_velocity(a)
	v = move_and_slide(v)

func calculate_aceleration() -> Vector2:
	var aceleration: = Vector2()
	aceleration.x = g*(sin(-30*(PI/180)) - Cd_hule_concreto*cos(-30*(PI/180)))
	aceleration.y = 0.0
	return aceleration

func calculate_move_velocity(a:Vector2) -> Vector2:
	var vel: = Vector2()
	vel.x += -5 + a.x * get_process_delta_time()
	vel.y += 5 + g * get_process_delta_time()
	return vel
