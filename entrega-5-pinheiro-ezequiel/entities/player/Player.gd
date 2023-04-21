extends KinematicBody2D
onready var cannon:Sprite = $Cannon

class_name Player
export var speed = 300;
export (float) var FRICTION_WEIGHT:float = 0.2;
export (float) var ACCELERATION:float = 30.0;
export (float) var HORIZONTAL_SPEED_LIMIT:float = 600;
export (float) var JUMP_SPEED:float = -300;
export (float) var GRAVITY:float = 300;

var projectile_container
var velocity:Vector2 = Vector2.ZERO

func set_projectile_container(container:Node):
	cannon.projectile_container = container;
	projectile_container = container;

func _handle_inputs():
	var horizontal_movement:int = int(Input.is_action_pressed("move_right")) - int(Input.is_action_pressed("move_left"));
	var player_is_quiet = horizontal_movement == 0 
	#Cannon rotation
	var mouse_position:Vector2 = get_global_mouse_position()
	cannon.look_at(mouse_position)
	#Cannon fire
	if(Input.is_action_just_pressed("fire")): cannon.fire()
	# Player movement	
	
	if !player_is_quiet:
		velocity.x = clamp(velocity.x + horizontal_movement * ACCELERATION, -HORIZONTAL_SPEED_LIMIT,HORIZONTAL_SPEED_LIMIT)
	else:
		velocity.x = lerp(velocity.x,0,FRICTION_WEIGHT) if abs(velocity.x) > 1 else 0
	
	if (Input.is_action_just_pressed("jump")):
		if (is_on_floor()):
			velocity.y = JUMP_SPEED

func _physics_process(delta):
	_handle_inputs();
	if (!is_on_floor()):
		velocity.y += GRAVITY * delta;
	move_and_slide(velocity,Vector2.UP)
