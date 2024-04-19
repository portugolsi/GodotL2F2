extends KinematicBody2D

var player 
var angle # angulo
var life 

func _ready():
	player = get_parent().get_node("Player")
	life = 1

func _process(delta):
	angle = get_angle_to(player.position)
	
	if position.distance_to(player.position)>75:
		move_and_collide(Vector2(1,0).rotated(angle))
	else:
		player.life = player.life-10
		queue_free()
	
	if life==0:
		queue_free()
