extends KinematicBody2D

var speed = 20

func _ready():
	# Quando ele nascer, aponta para o mouse
	look_at(get_global_mouse_position())


func _process(delta):
	
	move_and_collide(Vector2(1,0).rotated(rotation)*speed)
