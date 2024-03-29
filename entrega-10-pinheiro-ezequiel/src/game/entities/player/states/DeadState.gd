extends AbstractState

func enter() -> void:
	print("I'm player and imma die")
	if character.body.flip_h:
		character.body.scale.x *= -1
		character.body.flip_h = false
		character.body.offset.x = 50
		
	character.emit_signal("dead")
	character._play_animation("dead")


func update(delta) -> void:
	character.dead_shader.set_shader_param("progress", character.dead_shader.get_shader_param("progress") + 0.01)
	character._handle_deacceleration()
	character._apply_movement()


func _on_animation_finished(anim_name:String) -> void:
	character._remove()
