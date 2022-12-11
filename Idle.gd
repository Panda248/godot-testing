extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
export var health = 10;


# Called when the node enters the scene tree for the first time.
func _ready():

	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass

func _on_FOV_body_entered(body):
	if(body == get_parent().get_node("Player")):
		print("chasing")
		set_script(load("Chase.gd"))
	pass


func _on_FOV_body_exited(_body):
	pass # Replace with function body.
