extends Node2D

const GEM = preload("res://Scenes/Gem/Gem.tscn")
const POSITION_MARGIN = 48

func _ready() -> void:
	spawn_gem()
	
#func stop_all() -> void:
	
	
func spawn_gem() -> void:
	var gem: Gem = GEM.instantiate()
	gem.position = Vector2(_random_gem_x_pos(), -100)
	add_child(gem)
	
func _random_gem_x_pos() -> float:
	var randValue = randf()
	var value = roundf((get_viewport_rect().size.x - POSITION_MARGIN) * randf())
	print("value ", value, " - get_viewport_rect().size.x ", get_viewport_rect().size.x, " - randValue ", randValue)
	return value

func _on_timer_timeout() -> void:
	spawn_gem()
