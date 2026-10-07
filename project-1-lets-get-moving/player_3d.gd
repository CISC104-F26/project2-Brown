extends MeshInstance3D
var move_speed=4.0
var normal_speed=4.0
var sprint_speed=8.0
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_pressed("sprint"):
		move_speed=normal_speed+sprint_speed
	if not Input.is_action_pressed("sprint"):
		move_speed=normal_speed
	if Input.is_action_pressed("move_right3d"):
		position=position+Vector3(0,0,-1)*move_speed*delta
	if Input.is_action_pressed("move_left3d"):
		position=position+Vector3(0,0,1)*move_speed*delta
	if Input.is_action_pressed("move_up3d"):
		position=position+Vector3(0,1,0)*move_speed*delta
	if Input.is_action_pressed("move_down3d"):
		position=position+Vector3(0,-1,0)*move_speed*delta
	if Input.is_action_pressed("move_forward3d"):
		position=position+Vector3(-1,0,0)*move_speed*delta
	if Input.is_action_pressed("move_backward3d"):
		position=position+Vector3(1,0,0)*move_speed*delta
	pass
