extends KinematicBody2D

var speed = 20

func _ready():
	# Quando ele nascer, aponta para o mouse
	look_at(get_global_mouse_position())


func _process(delta):
	
	var collision_info = move_and_collide(Vector2(1,0).rotated(rotation)*speed)
	
	if collision_info:
		if "Enemy" in collision_info.collider.name:
				print("Colidi com um inimigo")	
				collision_info.collider.set("life", 0)
				queue_free()
				
