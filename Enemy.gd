extends KinematicBody2D

var player 
var angle # angulo

func _ready():
	player = get_parent().get_node("Player")
	

func _process(delta):
	angle = get_angle_to(player.position)
	
	if position.distance_to(player.position)>75:
		move_and_collide(Vector2(1,0).rotated(angle))
	else:
		player.life = player.life-10
		queue_free()
