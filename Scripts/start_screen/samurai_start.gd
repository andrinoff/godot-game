extends AnimatedSprite2D
# This script is animation of samurai on the screen
# Note: The !Input... will be checked non stop, maybe find a way to optimize
func _init() -> void:
	print("animation script started")
	$".".play("idle")
