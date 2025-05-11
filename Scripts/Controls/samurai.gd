extends AnimatedSprite2D

# Default value for facing direction
var direction = Vector2.RIGHT


func _init() -> void:
	print("Samurai loaded")
	$".".play("idle")
func _process(_delta) -> void:
	if Input.is_action_pressed("ui_left"):
		if position.x >= 0:
			$".".scale.x = -2
			position.x -= 1
		$".".play("walk")
	if Input.is_action_just_released("ui_left"):
		$".".play("idle")
	if Input.is_action_pressed("ui_right"):
		if position.x <= 1920:
			$".".scale.x = 2
			position.x += 1
		$".".play("walk")
	if Input.is_action_just_released("ui_right"):
		$".".play("idle")
	if Input.is_action_just_pressed("ui_up"):

		if position.y>=0 and position.x <= 1920:
			$".".play("jump")
			var tween = create_tween()
			tween.tween_property(self, "position", position - Vector2(-50, 100), 1)
			await self.animation_finished
			$".".play("idle")
		else:
			pass
# FIXME: You can jump and move at the same time
