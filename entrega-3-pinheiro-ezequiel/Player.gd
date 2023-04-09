extends Sprite

export var speed = 300;

func _process(delta):
	var direction = 0;
	if Input.is_action_pressed("move_left"): 
		direction = -1;
	if Input.is_action_pressed("move_right"):
		direction = 1;
	
	position.x += direction * speed * delta;
