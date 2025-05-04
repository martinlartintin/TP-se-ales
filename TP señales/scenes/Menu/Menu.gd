extends Node2D

const INSTANCES_TEXT = "Cantidad de instancias: "
# Variable para contar cantidad de instancias
var instancesCount = 0

@onready var count_label = $CountLabel
@onready var red_generator = $RedGenerator
@onready var violet_generator = $VioletGenerator

func _ready():
	add_to_group("blocks")
	
	$CountLabel.text = INSTANCES_TEXT + str(instancesCount)

	red_generator.connect("button_down", Callable(self, "count_new_instance"))
	violet_generator.connect("button_down", Callable(self, "count_new_instance"))

	pass

func count_new_instance():
	instancesCount += 1
	count_label.text = INSTANCES_TEXT + str(instancesCount)

func delete():
	instancesCount = 0
	$CountLabel.text = INSTANCES_TEXT + str(instancesCount)
