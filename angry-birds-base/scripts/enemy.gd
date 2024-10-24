extends RigidBody2D

#TODO: You'll probably need an export_var for the particle effect here


#TODO:
#this will only work if you set the rigidbody to "contact monitoring"
#and set max contacts to higher than 0
func _on_body_entered(body):
	pass
	#TODO:
	#create a particle effect at this object's location
	#find the game UI script and send it a message that the score has increased
	#and then destroy this object using queue_free
	# Replace with function body.


func _on_body_shape_entered(body_rid, body, body_shape_index, local_shape_index):
	var game_controller1 = get_tree().root.get_node("GameController1")
	var game_controller2 = get_tree().root.get_node("GameController2")
	var game_controller3 = get_tree().root.get_node("GameController3")
	if game_controller1:
		game_controller1.incrementScore()
	if game_controller2:
		game_controller2.incrementScore()
	if game_controller3:
		game_controller3.incrementScore()
	queue_free()
