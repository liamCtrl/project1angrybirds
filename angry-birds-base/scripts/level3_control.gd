extends Node2D
@export var enemy_resource : PackedScene
@onready var menu = load("res://scenes/menu.tscn") as PackedScene
var score = 0

func incrementScore():
	score += 1
	var strScore = str(score)
	$UI/scoreLabel.text = strScore
	if score == 3:
		get_tree().change_scene_to_packed(menu)

func _ready() -> void:
	var newEnemy1 = enemy_resource.instantiate()
	newEnemy1.position = Vector2(937, 497)
	add_child(newEnemy1)
	var newEnemy2 = enemy_resource.instantiate()
	newEnemy2.position = Vector2(933, 261)
	add_child(newEnemy2)
	var newEnemy3 = enemy_resource.instantiate()
	newEnemy3.position = Vector2(731, 393)
	add_child(newEnemy3)
