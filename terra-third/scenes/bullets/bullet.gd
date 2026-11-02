extends Area2D

var direction : Vector2
var speed := 150

func _ready() -> void:
	position += direction * 100
	var tween = get_tree().create_tween()
	tween.tween_property($Sprite2D, "scale", Vector2(1,1), 0.5).from(Vector2.ZERO)
	$AudioStreamPlayer2D.play()

func setup(pos: Vector2, dir: Vector2):
	position = pos + dir * 16
	direction = dir

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta: float) -> void:
	position += direction * speed * delta


func _on_body_entered(body: Node2D) -> void:
	if "hit" in body:
		body.hit()
	queue_free()
