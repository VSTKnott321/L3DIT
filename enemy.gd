extends CharacterBody2D
class_name Enemy


var player: Player = null

func _physics_process(delta):
	pass





func _on_sight_body_entered(body: Node2D) -> void:
	if body is Player:
		if player == null:
			player = body
			print(name + "found the player") 


func _on_player_body_exited(body):
	pass # Replace with function body.


func _on_sight_body_exited(body):
	if body is Player:
		if player != null:
			player = body
			print(name + "found the player")
