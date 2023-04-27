extends RigidBody2D

onready var fire_position = $FirePosition
onready var fire_timer = $FireTimer
onready var raycast = $RayCast2D
onready var collapsing_observer = $Collapsing_observer

onready var turret = $turret

export (PackedScene) var projectile_scene

var target
var projectile_container

func _ready():
	fire_timer.connect("timeout", self, "fire")

func initialize(container, turret_pos, projectile_container):
	container.add_child(self)
	global_position = turret_pos
	self.projectile_container = projectile_container

func fire():
	if target != null:
		var proj_instance = projectile_scene.instance()
		if projectile_container == null:
			projectile_container = get_parent()
		proj_instance.initialize(projectile_container, fire_position.global_position, fire_position.global_position.direction_to(target.global_position))
		fire_timer.start()

func _physics_process(delta):
	if collapsing_observer.is_colliding():
		turret.set_animation("Idle")
	if target != null:
		raycast.set_cast_to(raycast.to_local(target.global_position))
		if raycast.is_colliding() && raycast.get_collider() == target:
			if fire_timer.is_stopped():
				fire_timer.start()
		elif !fire_timer.is_stopped():
			fire_timer.stop()


func notify_hit():
		call_deferred("_remove")
	

func _remove():
	set_physics_process(false)
	turret.play("Die")	
	


func _on_DetectionArea_body_entered(body):
	if target == null:
		target = body

func _on_DetectionArea_body_exited(body):
	if body == target:
		target = null



func _on_turret_animation_finished():
	if turret.animation == "Die":
		get_parent().remove_child(self)
		queue_free()
