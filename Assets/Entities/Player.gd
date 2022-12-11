extends KinematicBody2D

# Player movement
export var ACCELERATION = 75
export var FRICTION = 50
export var SPEED = 200

onready var timer = $RefreshTimer

var velocity = Vector2.ZERO

# Bullet preload
var bullet = preload("res://Assets/Entities/Bullet.tscn")

# End game preload
# var endgame = preload("res://UI/PlayAgain.tscn")


func _ready():
	add_to_group("enemy_killed")


func _physics_process(_delta):
	var input_vector = Vector2.ZERO

	# Face player towards mouse
	look_at(get_global_mouse_position())

	# Gather movement key input into new input_vector
	input_vector.x = Input.get_action_strength("move_right") - Input.get_action_strength("move_left")
	input_vector.y = Input.get_action_strength("move_down") - Input.get_action_strength("move_up")
	input_vector = input_vector.normalized()

	if input_vector != Vector2.ZERO:
		velocity = velocity.move_toward(input_vector * SPEED, ACCELERATION)
	else:
		velocity = velocity.move_toward(Vector2.ZERO, FRICTION)

	velocity = move_and_slide(velocity)

	# Handle weapon firing
	if Input.is_action_just_pressed("mouse_left"):
		fire()

func fire():
	var bullet_instance = bullet.instance()
	bullet_instance.initialize(get_global_position(), rotation_degrees)
	get_parent().add_child(bullet_instance)
