extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
export var health = 10;
export var velocity = 100;
onready var behaviour = get_node("Behaviours/Idle");

# Called when the node enters the scene tree for the first time.
func _ready():

	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	behaviour.behaviour(delta);
	pass

func _on_FOV_body_entered(body):
	if(body == get_parent().get_node("Player")):
		print("chasing")
		behaviour = get_node("Behaviours/Chase");
	pass


func _on_FOV_body_exited(body):
	if(body == get_parent().get_node("Player")):
		print("idling")
		behaviour = get_node("Behaviours/Idle");
	pass # Replace with function body.
