extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var direction;

export var velocity = 500;

# Called when the node enters the scene tree for the first time.
func _ready():
	direction = Vector2(0,0);
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var _motion = Vector2();
	look_at(get_global_mouse_position());
	input_movement()
	direction = direction.normalized();
	_motion = move_and_collide(direction * velocity * delta);
	pass


func input_movement():
	if(Input.is_action_pressed("ui_left")):
		direction.x = -1;
	elif(Input.is_action_pressed("ui_right")):
		direction.x = 1;
	else:
		direction.x = 0;

	if(Input.is_action_pressed("ui_up")):
		direction.y = -1;
	elif(Input.is_action_pressed("ui_down")):
		direction.y = 1;
	else:
		direction.y = 0;


							
