extends Node2D

var va_derecha = false
var velocity = 400

func _physics_process(delta: float) -> void:
	if va_derecha: 
		position.x+= velocity
	else:
		position.x -= velocity
		
func _ready() -> void:
	await get_tree().create_timer(3.0).timeout
	queue_free()

func _on_area_2d_body_entered(body: Node2D) -> void:
	if body is Enemigo:
		body._damage() # Replace with function body.
		body._damage() # Replace with function body.
		body._damage() # Replace with function body.
