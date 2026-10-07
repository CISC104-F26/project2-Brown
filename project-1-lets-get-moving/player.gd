extends Sprite2D
var move_speed=80.0
var normal_speed=80.0
var sprint_speed=65.0
"I added the color shift ability when you press B, and then G to be normal "
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("Boy_Mode"):
		modulate = Color(0.07, 0.308, 1.0, 1.0)
	if Input.is_action_just_pressed("Girl_Mode"):
		modulate = Color(1.0, 1.0, 1.0, 1.0)
	if Input.is_action_just_pressed("Teleport"):
		global_position=get_global_mouse_position()
	if Input.is_action_pressed("sprint"):
		move_speed=sprint_speed*move_speed*delta
	if not Input.is_action_pressed("sprint"):
		move_speed=normal_speed
	if Input.is_action_pressed("move_right"):
		position=position+Vector2(1,0)*move_speed*delta
	if Input.is_action_pressed("move_left"):
		position=position+Vector2(-1,0)*move_speed*delta
	if Input.is_action_pressed("move_down"):
		position=position+Vector2(0,1)*move_speed*delta
	if Input.is_action_pressed("move_up"):
		position=position+Vector2(0,-1)*move_speed*delta
