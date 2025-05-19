extends Button

func _on_pressed() -> void:
	print("Button pressed")
	get_tree().change_scene_to_file("res://Scenes/game.tscn")
