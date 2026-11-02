extends Node2D

var bullet_scene: PackedScene = preload("res://scenes/bullets/bullet.tscn")
var paused = false

func _ready() -> void:
	var light_tween = get_tree().create_tween()
	light_tween.set_loops()
	light_tween.tween_property($PointLight2D2, "energy", 1.2, 1.2)
	light_tween.tween_property($PointLight2D2, "energy", 0.5, 1.2)
	$Entities/Drone.player_killed.connect(game_over)
	$Entities/Drone2.player_killed.connect(game_over)
	$Entities/Drone3.player_killed.connect(game_over)
	$Entities/Drone4.player_killed.connect(game_over)
	$Entities/Drone5.player_killed.connect(game_over)
	$Entities/Drone6.player_killed.connect(game_over)
	$Entities/Drone7.player_killed.connect(game_over)
	$Entities/Drone8.player_killed.connect(game_over)
	$Entities/Drone9.player_killed.connect(game_over)
	$Entities/Drone10.player_killed.connect(game_over)
	$Entities/Drone11.player_killed.connect(game_over)
	$Entities/Drone12.player_killed.connect(game_over)
	$Entities/Drone13.player_killed.connect(game_over)

func _process(_delta: float) -> void:
	if Input.is_action_just_pressed("restart") and paused:
		get_tree().paused = false
		get_tree().reload_current_scene()

func _on_player_shoot(pos: Vector2, dir: Vector2) -> void:
	var bullet = bullet_scene.instantiate() as Area2D
	bullet.setup(pos, dir)
	$Bullets.add_child(bullet)
	bullet.position = pos
	print("shoot", pos, dir)
	
	
func game_over():
	print("ded")
	paused = true
