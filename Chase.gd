extends KinematicBody2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var motion = Vector2()




func behaviour(delta):
	var player = get_parent().get_parent().get_parent().get_node("Player")
	look_at(player.position);
	motion = move_and_collide((player.position - position).normalized() * delta * get_parent().get_parent().velocity);
	pass
# Called every frame. 'delta' is the elapsed time since the previous frame.



