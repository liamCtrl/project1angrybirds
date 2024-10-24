extends RigidBody2D


func _ready():
	set_contact_monitor(true)
	set_max_contacts_reported(100)
	
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("upInput") :
		apply_force(Vector2(0, -10000))
	if Input.is_action_pressed("downInput") :
		apply_force(Vector2(0, 2500))
	
func _physics_process(delta: float) -> void:
	if Input.is_action_just_pressed("launch"):
		apply_central_impulse(Vector2(800, 0))
