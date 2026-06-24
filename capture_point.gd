extends Node2D


@onready var timer = $Area2D/Timer


# Called when the node enters the scene tree for the first time.
func _ready():
	pass



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$Label.text = str(int(timer.time_left + 1))


func _on_area_2d_body_entered(body):
	timer.start()
	print("body entered")




func _on_area_2d_body_exited(body):
	timer.stop()
	
	



func _on_timer_timeout():
	get_tree().change_scene_to_file("res://levels/menus/upgrade_tutorial.tscn")
