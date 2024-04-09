extends KinematicBody2D


var direcao = Vector2()
var bala = preload("res://Bala.tscn")
var life = 100

func movimentacao():
	if (Input.is_key_pressed(KEY_RIGHT)) or (Input.is_key_pressed(KEY_D)):
		direcao.x = 5
		
	elif (Input.is_key_pressed(KEY_LEFT)) or (Input.is_key_pressed(KEY_A)):
		direcao.x = -5
				
	elif (Input.is_key_pressed(KEY_UP)) or (Input.is_key_pressed(KEY_W)):
		direcao.y = -5
		
	elif (Input.is_key_pressed(KEY_DOWN)) or (Input.is_key_pressed(KEY_S)):
		direcao.y = 5
		
	else:
		direcao.x = 0
		direcao.y = 0
		
	if direcao.x==0 and direcao.y==0:
		get_child(0).animation = "Idle"
	else:
		get_child(0).animation = "Move"
				
	move_and_collide(direcao)
	
	# Programando o Flip
	if self.position.x < get_global_mouse_position().x:
		get_child(0).flip_h = false
	else:
		get_child(0).flip_h = true


	# Programando o tiro
	if Input.is_action_just_pressed("atirar"):
		var novaBala = bala.instance()
		novaBala.position = self.position
		self.get_parent().add_child(novaBala)
	
func _ready():
	pass


func _process(delta):
	
	movimentacao()
	if life<=0:
		print("Bateu as botas!")
	
	
	




