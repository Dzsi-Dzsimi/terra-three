extends CharacterBody2D

var speed = 50
var player: CharacterBody2D
var health := 3
var is_exploding : bool = false
signal player_killed

func _physics_process(_delta: float) -> void:
	if player:
		var dir = (player.position - position).normalized()
		#print(player_position)
		#print(get_node("Level/Entities/Player").position)
		velocity = dir * speed
		if velocity.x > 0:
			$AnimatedSprite2D.flip_h = true
		elif velocity.x < 0:
			$AnimatedSprite2D.flip_h = false
		move_and_slide()
	


func _player_body_entered(player_body: CharacterBody2D) -> void:
	player = player_body
	print(player)


func _player_body_exited(_player_body: CharacterBody2D) -> void:
	player = null


func _on_collision_area_body_entered(body: Node2D) -> void:
	if body.is_in_group('Player'):
		body.hide()
		player_killed.emit()
	explode()
	
func hit():
	health -= 1
	if health <= 0:
		is_exploding = true
		explode()
	var tween = create_tween()
	tween.tween_property($AnimatedSprite2D.material, 'shader_parameter/Progress', 0.0, 0.3)
	tween.tween_property($AnimatedSprite2D.material, 'shader_parameter/Progress', 0.0, 0.5)
	
func explode():
	$AudioStreamPlayer2D.play()
	speed = 0
	$AnimatedSprite2D.hide()
	$ExplosionSprite.show()
	$AnimationPlayer.play("explode")
	await $AnimationPlayer.animation_finished
	queue_free()
	
func chain_reaction():
	for drone in get_tree().get_nodes_in_group('Drones'):
		if position.distance_to(drone.position) < 30:
			if not is_exploding:
				drone.explode()
