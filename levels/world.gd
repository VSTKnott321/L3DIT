extends Node2D


@onready var player = $player
@onready var menu = $player/Control
var paused = false

# Called when the node enters the scene tree for the first time.
func _ready():
	player.died.connect(_on_player_died)

func _on_player_died():
	print("game over")
	get_tree().create_timer(3).timeout.connect(get_tree().reload_current_scene)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("pause"):
		pass
func PauseMenu():
	if paused:
		menu.visible = true
		get_tree().paused = true
	else:
		menu.visible = false
		get_tree().paused = false
		
	
	
	paused = !paused

