extends Button

@onready var level1 = preload("res://scenes/level1.tscn") as PackedScene

func _on_pressed():
	get_tree().change_scene_to_packed(level1)
