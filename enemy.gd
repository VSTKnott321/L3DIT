extends CharacterBody2D
class_name Enemy

var health = 200
var speed = 0.5

var player_chase = false
var player = null


func _physics_process(delta):
	if player_chase:
		position = lerp(position, player.position, speed * delta)
		look_at(player.global_position)
		if(player.position.x - position.x) < 0:
			$AnimatedSprite2D.flip_v = true
		else:
			$AnimatedSprite2D.flip_v = false
		
#replace queue free with death function
	if health <= 0:
		queue_free()



func _on_sight_body_entered(body):
	player = body
	player_chase = true




func _on_sight_body_exited(body):
	player = null
	player_chase = false


func _on_dmg_hitbox_body_entered(body):
	health = health - 25
	# replace - 25 with acutal damage function
