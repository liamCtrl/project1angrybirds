extends Control
@onready var mainmenu = preload("res://scenes/menu.tscn") as PackedScene



#TODO: Add a expert_var for fish object to spawn
#TODO: Add a class property for score

#TODO: Add button to return to menu


func _on_return_button_pressed() -> void:
	get_tree().change_scene_to_packed(mainmenu)
