extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
export var motion = Vector2()
export var velocity = 100;

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var player = get_parent().get_node("Player")
	look_at(player.position);
	motion = move_and_collide((player.position - position).normalized() * delta * velocity);
	pass

func _on_FOV_body_exited(body):
	if(body == get_parent().get_node("Player")):
		print("idling")
		set_script(load("Idle.gd"))
	pass # Replace with function body.
