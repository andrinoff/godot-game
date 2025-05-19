extends AnimatedSprite2D

# Default value for facing direction
var direction = Vector2.RIGHT


func _init() -> void:
	print("Samurai loaded")
	$".".play("idle")
func _process(_delta) -> void:
	if Input.is_action_pressed("ui_left"):
		$".".scale.x = -1
		$".".play("walk")
	if Input.is_action_just_released("ui_left"):
		$".".play("idle")
	if Input.is_action_pressed("ui_right"):
		$".".scale.x = 1
		$".".play("walk")
	if Input.is_action_just_released("ui_right"):
		$".".play("idle")
