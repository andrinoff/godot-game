extends Button
# This handles the train button press
func _on_pressed() -> void:
	print("Button pressed")
	get_tree().change_scene_to_file("res://Scenes/control_learning.tscn")
