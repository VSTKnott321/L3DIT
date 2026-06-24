extends Node2D

const SPEED: int = 2000


var dir : float
var spawnpos : Vector2
var spawnrot : float
@onready var particle = $GPUParticles2D
@onready var sprite = $AnimatedSprite2D





func _process(delta: float) -> void:
	position += transform.x * SPEED * delta









func _on_bullet_body_entered(body: Node2D) -> void:
	sprite.visible = false
	particle.emitting = true
	await get_tree().create_timer(0.5).timeout
	queue_free()



