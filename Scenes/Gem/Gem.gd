extends Area2D

class_name Gem

const GEM_SPEED: float = 200.0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	position.y += GEM_SPEED * delta
	
	if position.y > get_viewport_rect().end.y:
		_die()

func _die() -> void:
	set_process(false)
	queue_free()
