extends Timer


# Definindo o inimigo
var enemy = preload("res://Enemy.tscn")

func _ready():
	pass 

func _process(delta):
	pass


func _on_EnemySpawner_timeout():
	# Crio a variavel para o novo inimigo e digo que ele será uma instancia
	# do inimigo
	var newEnemy = enemy.instance()
	newEnemy.global_position = Vector2(rand_range(0,1024),rand_range(0,600))
	get_parent().add_child(newEnemy)
