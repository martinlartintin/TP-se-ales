extends TextureButton

func _ready():
	connect("pressed", Callable(self, "_on_button_down"))

func _on_button_down():
	get_tree().call_group("blocks", "delete")

	get_parent().delete()
