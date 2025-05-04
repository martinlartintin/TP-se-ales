extends TextureButton

func _on_button_down():
	generate_block()

func generate_block():
	var block = preload("res://scenes/Blocks/Violet/BlockViolet.tscn").instantiate()
	block.position = Vector2(900, 100)
	get_tree().current_scene.add_child(block)
