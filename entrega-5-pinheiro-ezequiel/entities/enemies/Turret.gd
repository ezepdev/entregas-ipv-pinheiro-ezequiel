extends Sprite
export (PackedScene) var projectile_scene:PackedScene

var projectile_container:Node
var target: Node2D

onready var fire_position:Position2D = $FirePosition

func set_values(projectile_container):
	self.projectile_container = projectile_container
	
	


func _on_Timer_timeout():
	fire()

func fire():
	var projectile:Projectile = projectile_scene.instance()
	projectile_container.add_child(projectile);
	projectile.set_starting_values(fire_position.global_position,(target.global_position-fire_position.global_position).normalized())
	projectile.connect("delete_requested",self,"_on_projectile_delete_requested")

func _on_projectile_delete_requested(projectile):
	projectile_container.remove_child(projectile)
	projectile.queue_free()


func _on_DetectionPlayer_body_entered(body):
	if target == null:
		target = body;
		$Timer.start()

func _on_DetectionPlayer_body_exited(body):
	if target == body:
		target = null
		$Timer.stop() 
