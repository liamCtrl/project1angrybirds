extends Button

@onready var mainmenu = load("res://scenes/menu.tscn") as PackedScene



func _on_pressed() -> void:
	get_tree().change_scene_to_packed(mainmenu)
