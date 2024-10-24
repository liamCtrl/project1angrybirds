extends Node2D
@export var enemy_resource : PackedScene
@onready var level2 = preload("res://scenes/level2.tscn") as PackedScene
var score = 0

func incrementScore():
	score += 1
	var strScore = str(score)
	$UI/scoreLabel.text = strScore
	if score == 3:
		get_tree().change_scene_to_packed(level2)
	
func _ready() -> void:
	var newEnemy1 = enemy_resource.instantiate()
	newEnemy1.position = Vector2(866, 521)
	add_child(newEnemy1)
	var newEnemy2 = enemy_resource.instantiate()
	newEnemy2.position = Vector2(848, 229)
	add_child(newEnemy2)
	var newEnemy3 = enemy_resource.instantiate()
	newEnemy3.position = Vector2(596, 538)
	add_child(newEnemy3)
