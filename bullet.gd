extends Node2D

const SPEED: int = 2000

@onready var bulletparticle = load("res://bulletparticle.tscn")


var dir : float
var spawnpos : Vector2
var spawnrot : float






func _process(delta: float) -> void:
	position += transform.x * SPEED * delta









func _on_bullet_body_entered(body: Node2D) -> void:
	bulletparticle.instantiate()
	queue_free()


