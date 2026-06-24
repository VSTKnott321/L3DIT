extends CharacterBody2D
class_name Enemy


var speed = 0.25
var player_chase = false
var player = null


func _physics_process(delta):
	if player_chase:
		position = lerp(position, player.position, speed * delta)
		#position += (player.position - position)/speed



func _on_sight_body_entered(body):
	player = body
	player_chase = true




func _on_sight_body_exited(body):
	player = null
	player_chase = false
