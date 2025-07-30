extends Area2D

const PADDLE_SPEED: float = 500.0

func _input(event: InputEvent) -> void:
	pass
	
func _unhandled_input(event: InputEvent) -> void:
	pass

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var movement: float = Input.get_axis("move_left", "move_right")
	position.x += PADDLE_SPEED * delta * movement

func _on_area_entered(area: Area2D) -> void:
	if area is Gem:
		area._die()
