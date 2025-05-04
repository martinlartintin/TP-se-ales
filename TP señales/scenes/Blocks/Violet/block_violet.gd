extends RigidBody2D

func _ready():
	add_to_group("blocks")

func delete():
	queue_free()
