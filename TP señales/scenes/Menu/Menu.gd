extends Node2D

const INSTANCES_TEXT = "Cantidad de instancias: "
# Variable para contar cantidad de instancias
var instancesCount = 0

@onready var count_label = $CountLabel

func _ready():
	$CountLabel.text = INSTANCES_TEXT + str(instancesCount)
	var red_generator = get_node("RedGenerator")
	var violet_generator = get_node("VioletGenerator")

	red_generator.connect("button_down", Callable(self, "count_new_instance"))
	violet_generator.connect("button_down", Callable(self, "count_new_instance"))

	pass

func count_new_instance():
	instancesCount += 1
	count_label.text = INSTANCES_TEXT + str(instancesCount)
